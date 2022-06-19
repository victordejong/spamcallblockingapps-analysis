package com.applovin.impl.sdk.p057e;

import android.net.Uri;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import com.applovin.impl.mediation.C1236h;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1473p;
import com.applovin.impl.sdk.network.C1442b;
import com.applovin.impl.sdk.network.C1447c;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1326d;
import com.applovin.impl.sdk.p056d.C1327e;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.internal.ads.C1676a;
import java.io.File;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.applovin.impl.sdk.e.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/c.class */
public abstract class AbstractC1337c extends AbstractRunnableC1331a implements C1236h.AbstractC1237a {

    /* renamed from: a */
    public final AbstractC1286e f5121a;

    /* renamed from: c */
    private AppLovinAdLoadListener f5122c;

    /* renamed from: d */
    private final C1473p f5123d;

    /* renamed from: e */
    private final Collection<Character> f5124e;

    /* renamed from: f */
    private final C1327e f5125f;

    /* renamed from: g */
    private boolean f5126g;

    public AbstractC1337c(String str, AbstractC1286e abstractC1286e, C1408l c1408l, AppLovinAdLoadListener appLovinAdLoadListener) {
        super(str, c1408l);
        if (abstractC1286e != null) {
            this.f5121a = abstractC1286e;
            this.f5122c = appLovinAdLoadListener;
            this.f5123d = c1408l.m5517Z();
            this.f5124e = m5696j();
            this.f5125f = new C1327e();
            return;
        }
        throw new IllegalArgumentException("No ad specified.");
    }

    /* renamed from: a */
    private Uri m5710a(Uri uri, String str) {
        String str2;
        StringBuilder sb;
        if (uri != null) {
            String uri2 = uri.toString();
            if (StringUtils.isValidString(uri2)) {
                m5733a("Caching " + str + " image...");
                return m5697g(uri2);
            }
            sb = new StringBuilder();
            sb.append("Failed to cache ");
            sb.append(str);
            str2 = " image";
        } else {
            sb = new StringBuilder();
            sb.append("No ");
            sb.append(str);
            str2 = " image to cache";
        }
        sb.append(str2);
        m5733a(sb.toString());
        return null;
    }

    /* renamed from: a */
    private Uri m5706a(String str, String str2) {
        StringBuilder sb;
        String replace = str2.replace("/", "_");
        String m5986G = this.f5121a.m5986G();
        String str3 = replace;
        if (StringUtils.isValidString(m5986G)) {
            str3 = C1676a.m4789h(m5986G, replace);
        }
        File m5147a = this.f5123d.m5147a(str3, this.f5113b.m5532K());
        if (m5147a == null) {
            return null;
        }
        if (m5147a.exists()) {
            this.f5125f.m5753b(m5147a.length());
            sb = new StringBuilder();
        } else if (!this.f5123d.m5150a(m5147a, C1676a.m4789h(str, str2), Arrays.asList(str), this.f5125f)) {
            return null;
        } else {
            sb = new StringBuilder();
        }
        sb.append("file://");
        sb.append(m5147a.getAbsolutePath());
        return Uri.parse(sb.toString());
    }

    /* renamed from: g */
    private Uri m5697g(String str) {
        return m5701b(str, this.f5121a.m5987F(), true);
    }

    /* renamed from: j */
    private Collection<Character> m5696j() {
        HashSet hashSet = new HashSet();
        for (char c : ((String) this.f5113b.m5511a(C1314b.f4811bn)).toCharArray()) {
            hashSet.add(Character.valueOf(c));
        }
        hashSet.add('\"');
        return hashSet;
    }

    /* renamed from: a */
    public Uri m5703a(String str, List<String> list, boolean z) {
        String str2;
        if (StringUtils.isValidString(str)) {
            m5733a("Caching video " + str + "...");
            String m5153a = this.f5123d.m5153a(m5726f(), str, this.f5121a.m5986G(), list, z, this.f5125f);
            if (!StringUtils.isValidString(m5153a)) {
                m5728d("Failed to cache video");
                mo5689h();
                Bundle bundle = new Bundle();
                bundle.putLong("ad_id", this.f5121a.getAdIdNumber());
                bundle.putInt("load_response_code", this.f5125f.m5745j());
                Exception m5746i = this.f5125f.m5746i();
                if (m5746i != null) {
                    bundle.putString("load_exception_message", m5746i.getMessage());
                }
                this.f5113b.m5490ae().m5589a(bundle, "video_caching_failed");
                return null;
            }
            File m5147a = this.f5123d.m5147a(m5153a, m5726f());
            if (m5147a != null) {
                Uri fromFile = Uri.fromFile(m5147a);
                if (fromFile != null) {
                    StringBuilder m8752j = C0082b.m8752j("Finish caching video for ad #");
                    m8752j.append(this.f5121a.getAdIdNumber());
                    m8752j.append(". Updating ad with cachedVideoFilename = ");
                    m8752j.append(m5153a);
                    m5733a(m8752j.toString());
                    return fromFile;
                }
                str2 = "Unable to create URI from cached video file = " + m5147a;
            } else {
                str2 = C0082b.m8755g("Unable to cache video = ", str, "Video file was missing or null");
            }
            m5728d(str2);
            return null;
        }
        return null;
    }

    /* renamed from: a */
    public String m5705a(String str, List<String> list) {
        InputStream inputStream;
        Throwable th;
        if (StringUtils.isValidString(str)) {
            Uri parse = Uri.parse(str);
            if (parse == null) {
                m5733a("Nothing to cache, skipping...");
                return null;
            }
            String lastPathSegment = parse.getLastPathSegment();
            String str2 = lastPathSegment;
            if (StringUtils.isValidString(this.f5121a.m5986G())) {
                str2 = this.f5121a.m5986G() + lastPathSegment;
            }
            try {
                File m5147a = this.f5123d.m5147a(str2, m5726f());
                if (m5147a != null && m5147a.exists()) {
                    return this.f5123d.m5151a(m5147a);
                }
                try {
                    inputStream = this.f5123d.m5146a(str, list, true, this.f5125f);
                    if (inputStream != null) {
                        try {
                            this.f5123d.m5143b(inputStream, m5147a);
                        } catch (Throwable th2) {
                            th = th2;
                            Utils.close(inputStream, this.f5113b);
                            throw th;
                        }
                    }
                    Utils.close(inputStream, this.f5113b);
                    return this.f5123d.m5151a(m5147a);
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                }
            } catch (Throwable th4) {
                m5732a("Resource at " + str + " failed to load.", th4);
                return null;
            }
        } else {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x0049, code lost:
        continue;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m5704a(java.lang.String r6, java.util.List<java.lang.String> r7, com.applovin.impl.sdk.p053ad.AbstractC1286e r8) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.p057e.AbstractC1337c.m5704a(java.lang.String, java.util.List, com.applovin.impl.sdk.ad.e):java.lang.String");
    }

    /* renamed from: a */
    public void m5711a() {
        this.f5113b.m5536G().m6106b(this);
    }

    @Override // com.applovin.impl.mediation.C1236h.AbstractC1237a
    /* renamed from: a */
    public void mo5642a(AbstractC1044a abstractC1044a) {
        if (abstractC1044a.m6711f().equalsIgnoreCase(this.f5121a.m5984I())) {
            m5728d("Updating flag for timeout...");
            this.f5126g = true;
        }
        this.f5113b.m5536G().m6106b(this);
    }

    /* renamed from: a */
    public void m5709a(AppLovinAdBase appLovinAdBase) {
        C1326d.m5768a(this.f5125f, appLovinAdBase, this.f5113b);
    }

    /* renamed from: b */
    public Uri m5701b(String str, List<String> list, boolean z) {
        String str2;
        try {
            String m5153a = this.f5123d.m5153a(m5726f(), str, this.f5121a.m5986G(), list, z, this.f5125f);
            if (!StringUtils.isValidString(m5153a)) {
                return null;
            }
            File m5147a = this.f5123d.m5147a(m5153a, m5726f());
            if (m5147a != null) {
                Uri fromFile = Uri.fromFile(m5147a);
                if (fromFile != null) {
                    return fromFile;
                }
                str2 = "Unable to extract Uri from image file";
            } else {
                str2 = "Unable to retrieve File from cached image filename = " + m5153a;
            }
            m5728d(str2);
            return null;
        } catch (Throwable th) {
            m5732a("Failed to cache image at url = " + str, th);
            return null;
        }
    }

    /* renamed from: b */
    public boolean m5702b() {
        return this.f5126g;
    }

    /* renamed from: c */
    public void m5700c() {
        m5733a("Caching mute images...");
        Uri m5710a = m5710a(this.f5121a.m5926ay(), "mute");
        if (m5710a != null) {
            this.f5121a.m5917c(m5710a);
        }
        Uri m5710a2 = m5710a(this.f5121a.m5925az(), "unmute");
        if (m5710a2 != null) {
            this.f5121a.m5913d(m5710a2);
        }
        StringBuilder m8752j = C0082b.m8752j("Ad updated with muteImageFilename = ");
        m8752j.append(this.f5121a.m5926ay());
        m8752j.append(", unmuteImageFilename = ");
        m8752j.append(this.f5121a.m5925az());
        m5733a(m8752j.toString());
    }

    /* renamed from: e */
    public Uri m5699e(String str) {
        return m5703a(str, this.f5121a.m5987F(), true);
    }

    /* renamed from: f */
    public String m5698f(final String str) {
        if (!StringUtils.isValidString(str)) {
            return null;
        }
        C1447c mo5196a = C1447c.m5327a(this.f5113b).mo5192a(str).mo5185b("GET").mo5193a((C1447c.C1448a) "").mo5195a(0).mo5196a();
        final AtomicReference atomicReference = new AtomicReference(null);
        this.f5113b.m5526Q().m5345a(mo5196a, new C1442b.C1444a(), new C1442b.AbstractC1446c<String>() { // from class: com.applovin.impl.sdk.e.c.1
            /* renamed from: a */
            public void mo5331a(int i, String str2, String str3) {
                AbstractC1337c abstractC1337c = AbstractC1337c.this;
                StringBuilder m8752j = C0082b.m8752j("Failed to load resource from '");
                m8752j.append(str);
                m8752j.append("'");
                abstractC1337c.m5728d(m8752j.toString());
            }

            /* renamed from: a */
            public void mo5330a(String str2, int i) {
                atomicReference.set(str2);
            }
        });
        String str2 = (String) atomicReference.get();
        if (str2 != null) {
            this.f5125f.m5756a(str2.length());
        }
        return str2;
    }

    /* renamed from: h */
    public void mo5689h() {
        AppLovinAdLoadListener appLovinAdLoadListener = this.f5122c;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.failedToReceiveAd(AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
            this.f5122c = null;
        }
    }

    /* renamed from: i */
    public void mo5688i() {
        StringBuilder m8752j = C0082b.m8752j("Rendered new ad:");
        m8752j.append(this.f5121a);
        m5733a(m8752j.toString());
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.e.c.2
            @Override // java.lang.Runnable
            public void run() {
                if (AbstractC1337c.this.f5122c != null) {
                    AbstractC1337c.this.f5122c.adReceived(AbstractC1337c.this.f5121a);
                    AbstractC1337c.this.f5122c = null;
                }
            }
        });
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f5121a.m5985H()) {
            m5733a("Subscribing to timeout events...");
            this.f5113b.m5536G().m6107a(this);
        }
    }
}
