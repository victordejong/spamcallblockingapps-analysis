package com.callapp.contacts.api.helper.gmail;

import android.accounts.Account;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
import com.c.a.c;
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
import com.google.api.client.auth.oauth2.a;
import com.google.api.client.auth.oauth2.b;
import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.q;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.gmail.Gmail;
import com.google.api.services.gmail.model.ListMessagesResponse;
import com.google.api.services.gmail.model.Message;
import com.google.api.services.gmail.model.MessagePart;
import com.google.api.services.gmail.model.MessagePartBody;
import com.google.api.services.gmail.model.MessagePartHeader;
import com.google.common.base.m;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/gmail/GmailManager.class */
public class GmailManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    private Gmail f14183a;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/gmail/GmailManager$CallAppGoogleHttpRequestInitializer.class */
    public static final class CallAppGoogleHttpRequestInitializer extends b {
        public CallAppGoogleHttpRequestInitializer(b.a aVar) {
            super(aVar);
        }

        @Override // com.google.api.client.auth.oauth2.b, com.google.api.client.http.s
        public final void a(q qVar) throws IOException {
            super.a(qVar);
            m.a(true);
            qVar.k = 10000;
            m.a(true);
            qVar.l = 10000;
        }
    }

    private GmailEmailData a(Message message, boolean z) {
        Rfc822Token[] rfc822TokenArr;
        if (message == null) {
            return null;
        }
        GmailEmailData gmailEmailData = new GmailEmailData();
        gmailEmailData.setThreadId(message.getThreadId());
        gmailEmailData.setInternalDate(message.getInternalDate().longValue());
        gmailEmailData.setSnippet(HtmlUtils.a(message.getSnippet()));
        MessagePart payload = message.getPayload();
        if (payload != null) {
            List<MessagePartHeader> headers = payload.getHeaders();
            if (CollectionUtils.b(headers)) {
                for (MessagePartHeader messagePartHeader : headers) {
                    if (StringUtils.b("Subject", messagePartHeader.getName())) {
                        gmailEmailData.setSubject(HtmlUtils.a(messagePartHeader.getValue()));
                    } else if (z && StringUtils.b("From", messagePartHeader.getName())) {
                        for (Rfc822Token rfc822Token : Rfc822Tokenizer.tokenize(messagePartHeader.getValue())) {
                            String address = rfc822Token.getAddress();
                            if (StringUtils.b((CharSequence) address)) {
                                gmailEmailData.setEmail(new JSONEmail(address, 3));
                                String name = rfc822Token.getName();
                                if (StringUtils.b((CharSequence) name)) {
                                    gmailEmailData.setFullName(name);
                                }
                            }
                        }
                    }
                }
            }
            String a2 = a(payload);
            if (StringUtils.b((CharSequence) a2)) {
                gmailEmailData.setBody(a2);
            }
        }
        return gmailEmailData;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.api.services.gmail.Gmail$Users$Messages$List] */
    private ListMessagesResponse a(String str, long j) throws IOException {
        Gmail gmailClient = getGmailClient();
        return gmailClient != null ? gmailClient.users().a().a("me").setFields2("messages/id").setMaxResults(Long.valueOf(j)).setQ(str).execute() : null;
    }

    private String a(MessagePart messagePart) {
        MessagePartBody body;
        List<MessagePart> parts = messagePart.getParts();
        if (CollectionUtils.b(parts)) {
            for (MessagePart messagePart2 : parts) {
                String a2 = a(messagePart2);
                if (StringUtils.b((CharSequence) a2)) {
                    return a2;
                }
            }
        }
        if (!StringUtils.c(messagePart.getMimeType(), "text/plain") || (body = messagePart.getBody()) == null) {
            return null;
        }
        String data = body.getData();
        if (!StringUtils.b((CharSequence) data)) {
            return null;
        }
        Base64Utils.getInstance();
        return new String(Base64.a(data));
    }

    public static String a(String str) {
        return "https://mail.google.com/mail/mu/mp/#cv/All%20Mail/".concat(String.valueOf(str));
    }

    private static StringBuilder c(String[] strArr) {
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

    private static StringBuilder d(String[] strArr) {
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
        if (this.f14183a == null && GoogleHelper.get().isLoggedIn()) {
            String accessToken = getAccessToken();
            if (StringUtils.b((CharSequence) accessToken)) {
                this.f14183a = new Gmail.Builder(new OkHttpTransport(), new JacksonFactory(), new CallAppGoogleHttpRequestInitializer(a.a()).a(accessToken)).setApplicationName(Constants.APP_NAME).build();
            }
        }
        return this.f14183a;
    }

    /* JADX WARN: Type inference failed for: r0v71, types: [com.google.api.services.gmail.Gmail$Users$Messages$Get] */
    public final GmailEmailData a(String[] strArr) {
        IOException e;
        GmailEmailData gmailEmailData;
        GmailEmailData gmailEmailData2 = null;
        if (ArrayUtils.b(strArr)) {
            try {
                String str = "gmail_message_" + Arrays.hashCode(strArr);
                GmailEmailData gmailEmailData3 = (GmailEmailData) CacheManager.get().b(GmailEmailData.class, str, false);
                gmailEmailData2 = gmailEmailData3;
                if (gmailEmailData3 == null) {
                    gmailEmailData = gmailEmailData3;
                    try {
                        ListMessagesResponse a2 = a(c(strArr).toString(), 1L);
                        GmailEmailData gmailEmailData4 = gmailEmailData3;
                        if (a2 != null) {
                            gmailEmailData4 = gmailEmailData3;
                            if (!a2.isEmpty()) {
                                List<Message> messages = a2.getMessages();
                                gmailEmailData4 = gmailEmailData3;
                                if (CollectionUtils.b(messages)) {
                                    String id = messages.get(0).getId();
                                    gmailEmailData4 = gmailEmailData3;
                                    if (StringUtils.b((CharSequence) id)) {
                                        Gmail gmailClient = getGmailClient();
                                        gmailEmailData4 = gmailEmailData3;
                                        if (gmailClient != null) {
                                            Message execute = gmailClient.users().a().a("me", id).setFields2("id,payload,snippet,threadId,internalDate").setFormat("metadata").setMetadataHeaders(Lists.a("Subject", "From")).execute();
                                            gmailEmailData4 = gmailEmailData3;
                                            if (execute != null) {
                                                gmailEmailData4 = a(execute, false);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        GmailEmailData gmailEmailData5 = gmailEmailData4;
                        if (gmailEmailData4 == null) {
                            gmailEmailData5 = new GmailEmailData();
                        }
                        gmailEmailData = gmailEmailData5;
                        CacheManager.get().a(GmailEmailData.class, str, gmailEmailData5, 2131427360);
                        gmailEmailData2 = gmailEmailData5;
                    } catch (IOException e2) {
                        e = e2;
                        gmailEmailData2 = gmailEmailData;
                        if (e instanceof GoogleJsonResponseException) {
                            if (((GoogleJsonResponseException) e).getStatusCode() == 401) {
                                this.f14183a = null;
                                gmailEmailData2 = gmailEmailData;
                            } else {
                                CLog.a(GmailManager.class, e);
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
    public final GmailEmailData b(String[] strArr) {
        GmailEmailData gmailEmailData = null;
        if (ArrayUtils.b(strArr)) {
            String str = "gmail_message_text_" + Arrays.hashCode(strArr);
            GmailEmailData gmailEmailData2 = (GmailEmailData) CacheManager.get().b(GmailEmailData.class, str, false);
            gmailEmailData = gmailEmailData2;
            if (gmailEmailData2 == null) {
                GmailEmailData gmailEmailData3 = gmailEmailData2;
                try {
                    ListMessagesResponse a2 = a(d(strArr).toString(), 5L);
                    GmailEmailData gmailEmailData4 = gmailEmailData2;
                    if (a2 != null) {
                        gmailEmailData4 = gmailEmailData2;
                        if (!a2.isEmpty()) {
                            List<Message> messages = a2.getMessages();
                            gmailEmailData4 = gmailEmailData2;
                            if (CollectionUtils.b(messages)) {
                                Iterator<Message> it2 = messages.iterator();
                                do {
                                    gmailEmailData4 = gmailEmailData2;
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    String id = it2.next().getId();
                                    gmailEmailData4 = gmailEmailData2;
                                    if (StringUtils.b((CharSequence) id)) {
                                        Gmail gmailClient = getGmailClient();
                                        gmailEmailData4 = gmailEmailData2;
                                        if (gmailClient != null) {
                                            Message execute = gmailClient.users().a().a("me", id).setFields2("id,payload,snippet,threadId,internalDate").setFormat("full").setMetadataHeaders(Lists.a("Subject", "From")).execute();
                                            gmailEmailData4 = gmailEmailData2;
                                            if (execute != null) {
                                                GmailEmailData a3 = a(execute, true);
                                                gmailEmailData4 = gmailEmailData2;
                                                if (a3 != null) {
                                                    String body = a3.getBody();
                                                    gmailEmailData4 = gmailEmailData2;
                                                    if (StringUtils.b((CharSequence) body)) {
                                                        List<c> list = new com.c.a.b().a(body).f10364a;
                                                        gmailEmailData4 = gmailEmailData2;
                                                        if (CollectionUtils.b(list)) {
                                                            Iterator<c> it3 = list.iterator();
                                                            while (true) {
                                                                gmailEmailData4 = gmailEmailData2;
                                                                if (!it3.hasNext()) {
                                                                    break;
                                                                }
                                                                c next = it3.next();
                                                                if (next.f10370b) {
                                                                    String str2 = next.f10369a;
                                                                    if (StringUtils.b((CharSequence) str2) && !StringUtils.e(str2.trim(), "-----") && (!StringUtils.g(str2, "from:") || !StringUtils.g(str2, "to:"))) {
                                                                        int length = strArr.length;
                                                                        int i = 0;
                                                                        while (true) {
                                                                            if (i >= length) {
                                                                                break;
                                                                            } else if (StringUtils.c(str2, strArr[i])) {
                                                                                gmailEmailData2 = a3;
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
                                    gmailEmailData2 = gmailEmailData4;
                                } while (gmailEmailData4 == null);
                            }
                        }
                    }
                    GmailEmailData gmailEmailData5 = gmailEmailData4;
                    if (gmailEmailData4 == null) {
                        gmailEmailData5 = new GmailEmailData();
                    }
                    gmailEmailData3 = gmailEmailData5;
                    CacheManager.get().a(GmailEmailData.class, str, gmailEmailData5, 2131427360);
                    gmailEmailData = gmailEmailData5;
                } catch (IOException e) {
                    gmailEmailData = gmailEmailData3;
                    if (e instanceof GoogleJsonResponseException) {
                        if (((GoogleJsonResponseException) e).getStatusCode() == 401) {
                            this.f14183a = null;
                            gmailEmailData = gmailEmailData3;
                        } else {
                            CLog.a(GmailManager.class, e);
                            gmailEmailData = gmailEmailData3;
                        }
                    }
                }
            }
        }
        return gmailEmailData;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f14183a = null;
    }

    public String getAccessToken() {
        try {
            return GooglePlayUtils.a(Prefs.aH.get(), Prefs.aJ.get().booleanValue() ? Collections.singletonList("https://mail.google.com/") : Arrays.asList("https://www.googleapis.com/auth/gmail.readonly"));
        } catch (GoogleAuthException | IOException e) {
            CLog.b(GmailManager.class, e);
            return null;
        }
    }

    public String getGmailAccount() {
        String str = Prefs.aK.get();
        String str2 = str;
        if (str == null) {
            Account[] a2 = new com.google.api.client.googleapis.extensions.android.a.a(CallAppApplication.get()).a();
            String str3 = ArrayUtils.b(a2) ? a2[0].name : null;
            str2 = str;
            if (StringUtils.b((CharSequence) str3)) {
                Prefs.aK.set(str3);
                str2 = str3;
            }
        }
        return str2;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
