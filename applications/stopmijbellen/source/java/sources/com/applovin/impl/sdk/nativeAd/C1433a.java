package com.applovin.impl.sdk.nativeAd;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1473p;
import com.applovin.impl.sdk.p056d.C1327e;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.utils.StringUtils;
import com.google.android.gms.internal.ads.C1676a;
import java.io.File;
import java.util.Collections;
/* renamed from: com.applovin.impl.sdk.nativeAd.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/a.class */
public class C1433a extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final C1473p f5385a;

    /* renamed from: c */
    private final C1327e f5386c = new C1327e();

    /* renamed from: d */
    private final AppLovinNativeAdImpl f5387d;

    /* renamed from: e */
    private final AbstractC1434a f5388e;

    /* renamed from: com.applovin.impl.sdk.nativeAd.a$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/nativeAd/a$a.class */
    public interface AbstractC1434a {
        /* renamed from: a */
        void mo5364a(AppLovinNativeAdImpl appLovinNativeAdImpl);
    }

    public C1433a(AppLovinNativeAdImpl appLovinNativeAdImpl, C1408l c1408l, AbstractC1434a abstractC1434a) {
        super("TaskCacheNativeAd", c1408l);
        this.f5387d = appLovinNativeAdImpl;
        this.f5388e = abstractC1434a;
        this.f5385a = c1408l.m5517Z();
    }

    /* renamed from: a */
    private Uri m5371a(Uri uri) {
        String str;
        if (uri == null) {
            return null;
        }
        m5733a("Attempting to cache resource: " + uri);
        String m5153a = this.f5385a.m5153a(m5726f(), uri.toString(), null, Collections.emptyList(), false, this.f5386c);
        String cachePrefix = this.f5387d.getCachePrefix();
        String str2 = m5153a;
        if (StringUtils.isValidString(cachePrefix)) {
            str2 = C1676a.m4789h(cachePrefix, m5153a);
        }
        if (!StringUtils.isValidString(str2)) {
            return null;
        }
        File m5147a = this.f5385a.m5147a(str2, m5726f());
        if (m5147a != null) {
            Uri fromFile = Uri.fromFile(m5147a);
            if (fromFile != null) {
                return fromFile;
            }
            str = "Unable to extract Uri from image file";
        } else {
            str = C1676a.m4789h("Unable to retrieve File from cached image filename = ", str2);
        }
        m5728d(str);
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        StringBuilder m8752j = C0082b.m8752j("Begin caching ad #");
        m8752j.append(this.f5387d.getAdIdNumber());
        m8752j.append("...");
        m5733a(m8752j.toString());
        Uri m5371a = m5371a(this.f5387d.getIconUri());
        if (m5371a != null) {
            this.f5387d.setIconUri(m5371a);
        }
        Uri m5371a2 = m5371a(this.f5387d.getMainImageUri());
        if (m5371a2 != null) {
            this.f5387d.setMainImageUri(m5371a2);
        }
        Uri m5371a3 = m5371a(this.f5387d.getPrivacyIconUri());
        if (m5371a3 != null) {
            this.f5387d.setPrivacyIconUri(m5371a3);
        }
        StringBuilder m8752j2 = C0082b.m8752j("Finished caching ad #");
        m8752j2.append(this.f5387d.getAdIdNumber());
        m5733a(m8752j2.toString());
        this.f5388e.mo5364a(this.f5387d);
    }
}
