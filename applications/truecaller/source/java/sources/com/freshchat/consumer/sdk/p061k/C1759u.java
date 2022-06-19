package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.FAQ;
import com.freshchat.consumer.sdk.beans.reqres.FAQFetchResponse;
import com.freshchat.consumer.sdk.p047b.C1477m;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.service.Status;
import com.freshchat.consumer.sdk.service.p068e.C1890am;
import com.freshchat.consumer.sdk.service.p068e.C1892an;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.k.u */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/u.class */
public class C1759u extends AbstractC1752n {
    private String categoryId;
    private String categoryName;
    private FAQ faq;
    private String faqId;

    /* renamed from: rr */
    private Status f4586rr;

    /* renamed from: t */
    private final String f4589t;
    private String title;

    /* renamed from: u */
    private final String f4590u;

    /* renamed from: y */
    private boolean f4591y;

    /* renamed from: z */
    private String f4592z;

    /* renamed from: s */
    private String f4588s = "HL_ARTICLE_TITLE";

    /* renamed from: rA */
    private final String f4585rA = "</bdi></body></html>";

    /* renamed from: rz */
    private final C1477m f4587rz = new C1477m(getContext());

    public C1759u(Context context) {
        super(context);
        String m8618h = C22128a.m8618h(C22128a.m8728C("<head><link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_res/raw/normalize.css\"/><script src='file:///freshchat_assets/freshchat_hacks.js'></script><title>"), this.f4588s, "</title></head>");
        this.f4589t = m8618h;
        this.f4590u = C22128a.m8725C2("<!DOCTYPE html>\t<html>", m8618h, "<body onload='correctIframe()'> <bdi>");
    }

    /* renamed from: d */
    private void m39664d(Status status) {
        this.f4586rr = status;
    }

    /* renamed from: jA */
    private boolean m39659jA() {
        FAQ faq = this.faq;
        if (faq == null) {
            return false;
        }
        return this.f4587rz.m40828c(this.categoryId, this.faqId, faq.getLastUpdatedAt());
    }

    /* renamed from: jz */
    private boolean m39650jz() {
        FAQ faq = this.faq;
        if (faq == null) {
            return false;
        }
        return this.f4587rz.m40826d(this.categoryId, this.faqId, faq.getLastUpdatedAt());
    }

    /* renamed from: a */
    public void m39666a(C1890am.EnumC1891a enumC1891a) {
        C1638b.m40146a(getContext(), this.categoryId, this.faqId, enumC1891a, this.faq.getLanguage(), this.faq.getLastUpdatedAt());
        this.f4592z = this.faqId;
        m39665b(enumC1891a);
    }

    /* renamed from: b */
    public void m39665b(C1890am.EnumC1891a enumC1891a) {
        C1649bg.m40093a(getContext(), this.categoryId, this.categoryName, this.faqId, this.title, enumC1891a == C1890am.EnumC1891a.THUMBS_UP);
    }

    /* renamed from: g */
    public Status m39663g(Bundle bundle) {
        try {
        } catch (Exception e) {
            m39664d(Status.ERROR);
            C1723q.m39823a(e);
        }
        if (bundle != null) {
            FAQFetchResponse fAQFetchResponse = (FAQFetchResponse) bundle.getParcelable("RESPONSE");
            if (fAQFetchResponse == null) {
                throw new IllegalArgumentException("faqFetchResponse cannot be null in FAQDetailViewModel::processResponse()");
            }
            this.faq = fAQFetchResponse.getFaq();
            m39664d(fAQFetchResponse.getStatus());
            return this.f4586rr;
        }
        throw new IllegalArgumentException("bundle cannot be null in FAQDetailViewModel::processResponse()");
    }

    /* renamed from: h */
    public boolean m39662h(Bundle bundle) {
        return bundle != null && bundle.containsKey("article_id") && !C1626as.isEmpty(bundle.getString("article_id")) && bundle.containsKey("category_id") && !C1626as.isEmpty(bundle.getString("category_id"));
    }

    /* renamed from: hV */
    public String m39661hV() {
        return getContext().getString(C1298R.string.freshchat_no_articles_found);
    }

    /* renamed from: i */
    public boolean m39660i(Bundle bundle) {
        C1892an c1892an;
        if (bundle == null || (c1892an = (C1892an) bundle.getParcelable("RESPONSE")) == null) {
            return false;
        }
        return Status.SUCCESS.equals(c1892an.getStatus());
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: j */
    public void mo39623j(Intent intent) {
        super.mo39623j(intent);
        if (intent.hasExtra("article_id")) {
            this.faqId = intent.getStringExtra("article_id");
        }
        if (intent.hasExtra("category_id")) {
            this.categoryId = intent.getStringExtra("category_id");
        }
        if (intent.hasExtra("EXTRA_FAQ_VIEW_TITLE")) {
            this.title = intent.getStringExtra("EXTRA_FAQ_VIEW_TITLE");
        }
        if (intent.hasExtra("category_name")) {
            this.categoryName = intent.getStringExtra("category_name");
        }
        if (intent.hasExtra("LAUNCHED_FROM_CONVERSATION")) {
            this.f4591y = intent.getBooleanExtra("LAUNCHED_FROM_CONVERSATION", false);
        }
    }

    /* renamed from: jB */
    public boolean m39658jB() {
        String str = this.f4592z;
        if (str == null || !str.equals(this.faqId)) {
            return !m39650jz();
        }
        return false;
    }

    /* renamed from: jC */
    public boolean m39657jC() {
        if (shouldShowContactUsOnFaqNotHelpful()) {
            return m39659jA();
        }
        return false;
    }

    /* renamed from: jD */
    public boolean m39656jD() {
        return this.f4591y;
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: jc */
    public void mo39622jc() {
        this.faq = null;
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: jd */
    public Status mo39621jd() {
        Status status;
        if (C1618al.m40261aS(getContext())) {
            C1638b.m40140h(getContext(), this.faqId, this.categoryId);
            status = Status.INIT_LOADING;
        } else {
            status = Status.NO_INTERNET;
        }
        m39664d(status);
        return this.f4586rr;
    }

    /* renamed from: jm */
    public Status m39655jm() {
        if (C1618al.m40261aS(getContext()) && this.f4586rr == Status.NO_INTERNET) {
            mo39621jd();
            m39664d(Status.INIT_LOADING);
        }
        return this.f4586rr;
    }

    /* renamed from: jv */
    public Status m39654jv() {
        return mo39621jd();
    }

    /* renamed from: jw */
    public String m39653jw() {
        return C1626as.isEmpty(this.categoryName) ? getContext().getString(C1298R.string.freshchat_activity_title_article_detail) : this.categoryName;
    }

    /* renamed from: jx */
    public String m39652jx() {
        String str;
        if (this.faq == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        String replaceAll = this.faq.getContent().replaceAll("src=\"//", "src=\"http://").replaceAll("value=\"//", "value=\"http://");
        Pattern compile = Pattern.compile("<\\s*(img|iframe).*?src\\s*=[ '\"]+http[s]?:\\/\\/.*?>");
        if (C1618al.m40261aS(getContext()) || !compile.matcher(replaceAll).find()) {
            str = "";
        } else {
            StringBuilder m8728C = C22128a.m8728C("<div class='offline-article-message'>");
            m8728C.append(getContext().getString(C1298R.string.freshchat_faq_rich_media_content_cannot_be_displayed));
            m8728C.append("</div>");
            str = m8728C.toString();
        }
        sb.append(this.f4590u);
        sb.append("<div class=\"article-title\";><h3 >");
        sb.append(this.faq.getTitle());
        sb.append("</h3></div>");
        sb.append(str);
        sb.append("<div class=\"article-body\">");
        String m8610j = C22128a.m8610j(sb, replaceAll, "</div>", "</bdi></body></html>");
        String str2 = m8610j;
        if (!C1626as.isEmpty(this.faq.getCategoryName())) {
            str2 = m8610j.replace(this.f4588s, this.faq.getCategoryName());
        }
        return str2;
    }

    /* renamed from: jy */
    public void m39651jy() {
        C1649bg.m40092a(getContext(), this.categoryId, this.categoryName, this.faqId, this.title, this.f4571lE);
    }
}
