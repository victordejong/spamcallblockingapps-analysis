package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.BotFAQ;
import com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.reqres.BotFAQFetchResponse;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.Status;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.k.y */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/y.class */
public class C1763y extends AbstractC1752n {
    private BotFAQ botFAQ;

    /* renamed from: ej */
    private String f4602ej;
    private String placeholderReferenceId;
    private String referenceId;

    /* renamed from: rr */
    private Status f4604rr;
    private String title;

    /* renamed from: s */
    private final String f4605s = "HL_ARTICLE_TITLE";

    /* renamed from: t */
    private final String f4606t = "<head><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_res/raw/normalize.css\"/><script src='file:///freshchat_assets/freshchat_hacks.js'></script><title>HL_ARTICLE_TITLE</title></head>";

    /* renamed from: u */
    private final String f4607u = "<!DOCTYPE html>\t<html><head><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_res/raw/normalize.css\"/><script src='file:///freshchat_assets/freshchat_hacks.js'></script><title>HL_ARTICLE_TITLE</title></head><body onload='correctIframe()'> <bdi>";

    /* renamed from: rA */
    private final String f4603rA = "</bdi></body></html>";

    public C1763y(Context context) {
        super(context);
    }

    /* renamed from: d */
    private void m39627d(Status status) {
        this.f4604rr = status;
    }

    /* renamed from: kd */
    private List<MessageFragment> m39615kd() {
        BotFAQ botFAQ = this.botFAQ;
        return (botFAQ == null || botFAQ.getTemplateContentPayloads() == null || C1716k.isEmpty(this.botFAQ.getTemplateContentPayloads().getDescription())) ? new ArrayList() : this.botFAQ.getTemplateContentPayloads().getDescription();
    }

    /* renamed from: c */
    public void m39628c(CallbackButtonFragment callbackButtonFragment) {
        if (callbackButtonFragment == null) {
            return;
        }
        C1649bg.m40069y(getContext(), callbackButtonFragment.getLabel());
        C1638b.m40147a(getContext(), this.f4602ej, callbackButtonFragment, this.referenceId);
    }

    /* renamed from: g */
    public Status m39626g(Bundle bundle) {
        try {
        } catch (Exception e) {
            m39627d(Status.ERROR);
            C1723q.m39823a(e);
        }
        if (bundle != null) {
            BotFAQFetchResponse botFAQFetchResponse = (BotFAQFetchResponse) bundle.getParcelable("RESPONSE");
            if (botFAQFetchResponse == null) {
                throw new IllegalArgumentException("botFAQFetchResponse cannot be null in BotFAQDetailViewModel::processResponse()");
            }
            this.botFAQ = botFAQFetchResponse.getBotFAQ();
            m39627d(botFAQFetchResponse.getStatus());
            return this.f4604rr;
        }
        throw new IllegalArgumentException("bundle cannot be null in BotFAQDetailViewModel::processResponse()");
    }

    public List<MessageFragment> getCallbacks() {
        BotFAQ botFAQ = this.botFAQ;
        return (botFAQ == null || botFAQ.getTemplateContentPayloads() == null || C1716k.isEmpty(this.botFAQ.getTemplateContentPayloads().getCallbacks())) ? new ArrayList() : this.botFAQ.getTemplateContentPayloads().getCallbacks();
    }

    /* renamed from: h */
    public boolean m39625h(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        boolean z = false;
        if (bundle.containsKey("MESSAGE_ALIAS")) {
            if (C1626as.isEmpty(bundle.getString("MESSAGE_ALIAS"))) {
                z = false;
            } else {
                z = false;
                if (bundle.containsKey("EXTRA_TITLE")) {
                    if (C1626as.isEmpty(bundle.getString("EXTRA_TITLE"))) {
                        z = false;
                    } else {
                        z = false;
                        if (bundle.containsKey("REFERENCE_ID")) {
                            if (C1626as.isEmpty(bundle.getString("REFERENCE_ID"))) {
                                z = false;
                            } else {
                                z = false;
                                if (bundle.containsKey("PLACEOLDER_REFERENCE_ID")) {
                                    z = false;
                                    if (!C1626as.isEmpty(bundle.getString("PLACEOLDER_REFERENCE_ID"))) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: hV */
    public String m39624hV() {
        return getContext().getString(C1298R.string.freshchat_no_faq_found);
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: j */
    public void mo39623j(Intent intent) {
        super.mo39623j(intent);
        if (intent.hasExtra("MESSAGE_ALIAS")) {
            this.f4602ej = intent.getStringExtra("MESSAGE_ALIAS");
        }
        if (intent.hasExtra("EXTRA_TITLE")) {
            this.title = intent.getStringExtra("EXTRA_TITLE");
        }
        if (intent.hasExtra("REFERENCE_ID")) {
            this.referenceId = intent.getStringExtra("REFERENCE_ID");
        }
        if (intent.hasExtra("PLACEOLDER_REFERENCE_ID")) {
            this.placeholderReferenceId = intent.getStringExtra("PLACEOLDER_REFERENCE_ID");
        }
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: jc */
    public void mo39622jc() {
        this.botFAQ = null;
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: jd */
    public Status mo39621jd() {
        Status status;
        if (C1618al.m40261aS(getContext())) {
            C1638b.m40139k(getContext(), this.referenceId, this.placeholderReferenceId);
            status = Status.INIT_LOADING;
        } else {
            status = Status.NO_INTERNET;
        }
        m39627d(status);
        return this.f4604rr;
    }

    /* renamed from: jm */
    public Status m39620jm() {
        if (C1618al.m40261aS(getContext()) && this.f4604rr == Status.NO_INTERNET) {
            mo39621jd();
            m39627d(Status.INIT_LOADING);
        }
        return this.f4604rr;
    }

    /* renamed from: jv */
    public Status m39619jv() {
        return mo39621jd();
    }

    /* renamed from: jw */
    public String m39618jw() {
        return this.title;
    }

    /* renamed from: jx */
    public String m39617jx() {
        String str;
        List<MessageFragment> m39615kd = m39615kd();
        if (C1716k.isEmpty(m39615kd) || C1626as.isEmpty(m39615kd.get(0).getContent())) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        String replaceAll = m39615kd.get(0).getContent().replaceAll("src=\"//", "src=\"http://").replaceAll("value=\"//", "value=\"http://");
        Pattern compile = Pattern.compile("<\\s*(img|iframe).*?src\\s*=[ '\"]+http[s]?:\\/\\/.*?>");
        if (C1618al.m40261aS(getContext()) || !compile.matcher(replaceAll).find()) {
            str = "";
        } else {
            StringBuilder m8728C = C22128a.m8728C("<div class='offline-article-message'>");
            m8728C.append(getContext().getString(C1298R.string.freshchat_faq_rich_media_content_cannot_be_displayed));
            m8728C.append("</div>");
            str = m8728C.toString();
        }
        C22128a.m8666T0(sb, "<!DOCTYPE html>\t<html><head><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_res/raw/normalize.css\"/><script src='file:///freshchat_assets/freshchat_hacks.js'></script><title>HL_ARTICLE_TITLE</title></head><body onload='correctIframe()'> <bdi>", str, "<div class=\"article-body\">", replaceAll);
        return C22128a.m8618h(sb, "</div>", "</bdi></body></html>").replace("HL_ARTICLE_TITLE", m39618jw());
    }

    /* renamed from: kc */
    public void m39616kc() {
        C1649bg.m40094a(getContext(), m39618jw(), this.referenceId, this.placeholderReferenceId);
    }
}
