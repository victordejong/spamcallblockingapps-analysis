package com.callapp.contacts.api.helper.gmail;

import android.accounts.Account;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.util.Lists;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.api.helper.google.OkHttpTransport;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.GmailEmailData;
import com.callapp.contacts.util.ArrayUtils;
import com.callapp.contacts.util.Base64Utils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.callapp.repackaged.org.apache.commons.codec.binary.Base64;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.api.client.auth.oauth2.C15261a;
import com.google.api.client.auth.oauth2.C15263b;
import com.google.api.client.googleapis.extensions.android.p382a.C15287a;
import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.C15340q;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.gmail.Gmail;
import com.google.api.services.gmail.model.ListMessagesResponse;
import com.google.api.services.gmail.model.Message;
import com.google.api.services.gmail.model.MessagePart;
import com.google.api.services.gmail.model.MessagePartBody;
import com.google.api.services.gmail.model.MessagePartHeader;
import com.google.common.base.C15391m;
import com.p234c.p235a.C5514b;
import com.p234c.p235a.C5515c;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/gmail/GmailManager.class */
public class GmailManager implements ManagedLifecycle {

    /* renamed from: a */
    private Gmail f24844a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/gmail/GmailManager$CallAppGoogleHttpRequestInitializer.class */
    public static final class CallAppGoogleHttpRequestInitializer extends C15263b {
        public CallAppGoogleHttpRequestInitializer(C15263b.AbstractC15264a abstractC15264a) {
            super(abstractC15264a);
        }

        @Override // com.google.api.client.auth.oauth2.C15263b, com.google.api.client.http.AbstractC15342s
        /* renamed from: a */
        public final void mo9023a(C15340q c15340q) throws IOException {
            super.mo9023a(c15340q);
            C15391m.m8943a(true);
            c15340q.f55370k = 10000;
            C15391m.m8943a(true);
            c15340q.f55371l = 10000;
        }
    }

    /* renamed from: a */
    private GmailEmailData m29189a(Message message, boolean z) {
        Rfc822Token[] rfc822TokenArr;
        if (message == null) {
            return null;
        }
        GmailEmailData gmailEmailData = new GmailEmailData();
        gmailEmailData.setThreadId(message.getThreadId());
        gmailEmailData.setInternalDate(message.getInternalDate().longValue());
        gmailEmailData.setSnippet(HtmlUtils.m27538a(message.getSnippet()));
        MessagePart payload = message.getPayload();
        if (payload != null) {
            List<MessagePartHeader> headers = payload.getHeaders();
            if (CollectionUtils.m26068b(headers)) {
                for (MessagePartHeader messagePartHeader : headers) {
                    if (StringUtils.m26042b("Subject", messagePartHeader.getName())) {
                        gmailEmailData.setSubject(HtmlUtils.m27538a(messagePartHeader.getValue()));
                    } else if (z && StringUtils.m26042b("From", messagePartHeader.getName())) {
                        for (Rfc822Token rfc822Token : Rfc822Tokenizer.tokenize(messagePartHeader.getValue())) {
                            String address = rfc822Token.getAddress();
                            if (StringUtils.m26045b((CharSequence) address)) {
                                gmailEmailData.setEmail(new JSONEmail(address, 3));
                                String name = rfc822Token.getName();
                                if (StringUtils.m26045b((CharSequence) name)) {
                                    gmailEmailData.setFullName(name);
                                }
                            }
                        }
                    }
                }
            }
            String m29188a = m29188a(payload);
            if (StringUtils.m26045b((CharSequence) m29188a)) {
                gmailEmailData.setBody(m29188a);
            }
        }
        return gmailEmailData;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.api.services.gmail.Gmail$Users$Messages$List] */
    /* renamed from: a */
    private ListMessagesResponse m29186a(String str, long j) throws IOException {
        Gmail gmailClient = getGmailClient();
        return gmailClient != null ? gmailClient.users().m8988a().m8987a("me").setFields2("messages/id").setMaxResults(Long.valueOf(j)).setQ(str).execute() : null;
    }

    /* renamed from: a */
    private String m29188a(MessagePart messagePart) {
        MessagePartBody body;
        List<MessagePart> parts = messagePart.getParts();
        if (CollectionUtils.m26068b(parts)) {
            for (MessagePart messagePart2 : parts) {
                String m29188a = m29188a(messagePart2);
                if (StringUtils.m26045b((CharSequence) m29188a)) {
                    return m29188a;
                }
            }
        }
        if (!StringUtils.m26037c(messagePart.getMimeType(), "text/plain") || (body = messagePart.getBody()) == null) {
            return null;
        }
        String data = body.getData();
        if (!StringUtils.m26045b((CharSequence) data)) {
            return null;
        }
        Base64Utils.getInstance();
        return new String(Base64.m26006a(data));
    }

    /* renamed from: a */
    public static String m29187a(String str) {
        return "https://mail.google.com/mail/mu/mp/#cv/All%20Mail/".concat(String.valueOf(str));
    }

    /* renamed from: c */
    private static StringBuilder m29183c(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            if (i > 0) {
                sb.append(" OR ");
            }
            sb.append("from:\"");
            sb.append(strArr[i]);
            sb.append("\"");
            sb.append(" OR (from:me AND to:\"");
            sb.append(strArr[i]);
            sb.append("\")");
        }
        sb.append(" -in:chats");
        return sb;
    }

    /* renamed from: d */
    private static StringBuilder m29182d(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            if (i > 0) {
                sb.append(" OR ");
            }
            sb.append("\"");
            sb.append(strArr[i]);
            sb.append("\"");
        }
        sb.append(" -from:me -from:calendar -in:chats");
        sb.append(" -subject:\"re:\" -subject:\"fw:\" -subject:\"fwd:\"");
        return sb;
    }

    public static GmailManager get() {
        return Singletons.get().getGmailManager();
    }

    private Gmail getGmailClient() {
        if (this.f24844a == null && GoogleHelper.get().isLoggedIn()) {
            String accessToken = getAccessToken();
            if (StringUtils.m26045b((CharSequence) accessToken)) {
                this.f24844a = new Gmail.Builder(new OkHttpTransport(), new JacksonFactory(), new CallAppGoogleHttpRequestInitializer(C15261a.m9200a()).m9197a(accessToken)).setApplicationName(Constants.APP_NAME).build();
            }
        }
        return this.f24844a;
    }

    /* JADX WARN: Type inference failed for: r0v71, types: [com.google.api.services.gmail.Gmail$Users$Messages$Get] */
    /* renamed from: a */
    public final GmailEmailData m29185a(String[] strArr) {
        Throwable e;
        GmailEmailData gmailEmailData;
        GmailEmailData gmailEmailData2 = null;
        if (ArrayUtils.m27615b(strArr)) {
            try {
                String str = "gmail_message_" + Arrays.hashCode(strArr);
                GmailEmailData gmailEmailData3 = (GmailEmailData) CacheManager.get().m28378b(GmailEmailData.class, str, false);
                gmailEmailData2 = gmailEmailData3;
                if (gmailEmailData3 == null) {
                    GmailEmailData gmailEmailData4 = gmailEmailData3;
                    try {
                        ListMessagesResponse m29186a = m29186a(m29183c(strArr).toString(), 1L);
                        GmailEmailData gmailEmailData5 = gmailEmailData3;
                        if (m29186a != null) {
                            gmailEmailData5 = gmailEmailData3;
                            if (!m29186a.isEmpty()) {
                                List<Message> messages = m29186a.getMessages();
                                gmailEmailData5 = gmailEmailData3;
                                if (CollectionUtils.m26068b(messages)) {
                                    String id = messages.get(0).getId();
                                    gmailEmailData5 = gmailEmailData3;
                                    if (StringUtils.m26045b((CharSequence) id)) {
                                        Gmail gmailClient = getGmailClient();
                                        gmailEmailData5 = gmailEmailData3;
                                        if (gmailClient != null) {
                                            Message execute = gmailClient.users().m8988a().m8986a("me", id).setFields2("id,payload,snippet,threadId,internalDate").setFormat("metadata").setMetadataHeaders(Lists.m31916a("Subject", "From")).execute();
                                            gmailEmailData5 = gmailEmailData3;
                                            if (execute != null) {
                                                gmailEmailData5 = m29189a(execute, false);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        GmailEmailData gmailEmailData6 = gmailEmailData5;
                        if (gmailEmailData5 == null) {
                            GmailEmailData gmailEmailData7 = gmailEmailData5;
                            gmailEmailData6 = new GmailEmailData();
                        }
                        gmailEmailData4 = gmailEmailData6;
                        CacheManager.get().m28388a(GmailEmailData.class, str, gmailEmailData6, 2131427360);
                        gmailEmailData2 = gmailEmailData6;
                    } catch (IOException e2) {
                        e = e2;
                        gmailEmailData = gmailEmailData4;
                        gmailEmailData2 = gmailEmailData;
                        if (e instanceof GoogleJsonResponseException) {
                            if (e.getStatusCode() == 401) {
                                this.f24844a = null;
                                gmailEmailData2 = gmailEmailData;
                            } else {
                                CLog.m27609a(GmailManager.class, e);
                                gmailEmailData2 = gmailEmailData;
                            }
                        }
                        return gmailEmailData2;
                    }
                }
            } catch (IOException e3) {
                e = e3;
                gmailEmailData = null;
            }
        }
        return gmailEmailData2;
    }

    /* JADX WARN: Type inference failed for: r0v82, types: [com.google.api.services.gmail.Gmail$Users$Messages$Get] */
    /* renamed from: b */
    public final GmailEmailData m29184b(String[] strArr) {
        GmailEmailData gmailEmailData = null;
        if (ArrayUtils.m27615b(strArr)) {
            String str = "gmail_message_text_" + Arrays.hashCode(strArr);
            GmailEmailData gmailEmailData2 = (GmailEmailData) CacheManager.get().m28378b(GmailEmailData.class, str, false);
            GmailEmailData gmailEmailData3 = gmailEmailData2;
            if (gmailEmailData2 == null) {
                GmailEmailData gmailEmailData4 = gmailEmailData2;
                try {
                    ListMessagesResponse m29186a = m29186a(m29182d(strArr).toString(), 5L);
                    GmailEmailData gmailEmailData5 = gmailEmailData2;
                    if (m29186a != null) {
                        gmailEmailData5 = gmailEmailData2;
                        if (!m29186a.isEmpty()) {
                            List<Message> messages = m29186a.getMessages();
                            gmailEmailData5 = gmailEmailData2;
                            if (CollectionUtils.m26068b(messages)) {
                                Iterator<Message> it2 = messages.iterator();
                                do {
                                    gmailEmailData5 = gmailEmailData2;
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    GmailEmailData gmailEmailData6 = gmailEmailData2;
                                    String id = it2.next().getId();
                                    gmailEmailData5 = gmailEmailData2;
                                    if (StringUtils.m26045b((CharSequence) id)) {
                                        GmailEmailData gmailEmailData7 = gmailEmailData2;
                                        Gmail gmailClient = getGmailClient();
                                        gmailEmailData5 = gmailEmailData2;
                                        if (gmailClient != null) {
                                            Message execute = gmailClient.users().m8988a().m8986a("me", id).setFields2("id,payload,snippet,threadId,internalDate").setFormat("full").setMetadataHeaders(Lists.m31916a("Subject", "From")).execute();
                                            gmailEmailData5 = gmailEmailData2;
                                            if (execute != null) {
                                                GmailEmailData m29189a = m29189a(execute, true);
                                                gmailEmailData5 = gmailEmailData2;
                                                if (m29189a != null) {
                                                    String body = m29189a.getBody();
                                                    gmailEmailData5 = gmailEmailData2;
                                                    if (StringUtils.m26045b((CharSequence) body)) {
                                                        GmailEmailData gmailEmailData8 = gmailEmailData2;
                                                        GmailEmailData gmailEmailData9 = gmailEmailData2;
                                                        GmailEmailData gmailEmailData10 = gmailEmailData2;
                                                        List<C5515c> list = new C5514b().m31938a(body).f19098a;
                                                        gmailEmailData5 = gmailEmailData2;
                                                        if (CollectionUtils.m26068b(list)) {
                                                            GmailEmailData gmailEmailData11 = gmailEmailData2;
                                                            Iterator<C5515c> it3 = list.iterator();
                                                            while (true) {
                                                                gmailEmailData5 = gmailEmailData2;
                                                                if (!it3.hasNext()) {
                                                                    break;
                                                                }
                                                                GmailEmailData gmailEmailData12 = gmailEmailData2;
                                                                C5515c next = it3.next();
                                                                GmailEmailData gmailEmailData13 = gmailEmailData2;
                                                                if (next.f19107b) {
                                                                    GmailEmailData gmailEmailData14 = gmailEmailData2;
                                                                    String str2 = next.f19106a;
                                                                    GmailEmailData gmailEmailData15 = gmailEmailData2;
                                                                    if (StringUtils.m26045b((CharSequence) str2)) {
                                                                        GmailEmailData gmailEmailData16 = gmailEmailData2;
                                                                        if (!StringUtils.m26030e(str2.trim(), "-----")) {
                                                                            GmailEmailData gmailEmailData17 = gmailEmailData2;
                                                                            if (StringUtils.m26025g(str2, "from:")) {
                                                                                GmailEmailData gmailEmailData18 = gmailEmailData2;
                                                                                if (!StringUtils.m26025g(str2, "to:")) {
                                                                                }
                                                                            }
                                                                            GmailEmailData gmailEmailData19 = gmailEmailData2;
                                                                            int length = strArr.length;
                                                                            int i = 0;
                                                                            while (true) {
                                                                                if (i >= length) {
                                                                                    break;
                                                                                } else if (StringUtils.m26037c(str2, strArr[i])) {
                                                                                    gmailEmailData2 = m29189a;
                                                                                    break;
                                                                                } else {
                                                                                    i++;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    gmailEmailData2 = gmailEmailData5;
                                } while (gmailEmailData5 == null);
                            }
                        }
                    }
                    GmailEmailData gmailEmailData20 = gmailEmailData5;
                    if (gmailEmailData5 == null) {
                        GmailEmailData gmailEmailData21 = gmailEmailData5;
                        gmailEmailData20 = new GmailEmailData();
                    }
                    gmailEmailData4 = gmailEmailData20;
                    CacheManager.get().m28388a(GmailEmailData.class, str, gmailEmailData20, 2131427360);
                    gmailEmailData3 = gmailEmailData20;
                } catch (IOException e) {
                    gmailEmailData3 = gmailEmailData4;
                    if (e instanceof GoogleJsonResponseException) {
                        if (((GoogleJsonResponseException) e).getStatusCode() == 401) {
                            this.f24844a = null;
                            gmailEmailData3 = gmailEmailData4;
                        } else {
                            CLog.m27609a(GmailManager.class, e);
                            gmailEmailData3 = gmailEmailData4;
                        }
                    }
                }
            }
            gmailEmailData = gmailEmailData3;
        }
        return gmailEmailData;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f24844a = null;
    }

    public String getAccessToken() {
        try {
            return GooglePlayUtils.m27540a(Prefs.f26231aH.get(), Prefs.f26233aJ.get().booleanValue() ? Collections.singletonList("https://mail.google.com/") : Arrays.asList("https://www.googleapis.com/auth/gmail.readonly"));
        } catch (GoogleAuthException | IOException e) {
            CLog.m27596b(GmailManager.class, e);
            return null;
        }
    }

    public String getGmailAccount() {
        String str = Prefs.f26234aK.get();
        String str2 = str;
        if (str == null) {
            Account[] m9165a = new C15287a(CallAppApplication.get()).m9165a();
            String str3 = ArrayUtils.m27615b(m9165a) ? m9165a[0].name : null;
            str2 = str;
            if (StringUtils.m26045b((CharSequence) str3)) {
                Prefs.f26234aK.set(str3);
                str2 = str3;
            }
        }
        return str2;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
