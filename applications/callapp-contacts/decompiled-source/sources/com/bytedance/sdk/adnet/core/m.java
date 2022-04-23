package com.bytedance.sdk.adnet.core;

import com.bytedance.sdk.adnet.d.d;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.a;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/m.class */
public class m<T> {

    /* renamed from: a  reason: collision with root package name */
    public final T f8332a;

    /* renamed from: b  reason: collision with root package name */
    public final a.C0159a f8333b;

    /* renamed from: c  reason: collision with root package name */
    public final VAdError f8334c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f8335d;
    public long e;
    public long f;
    public Map<String, Object> g;
    public long h;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/m$a.class */
    public interface a<T> {
        void a(m<T> mVar);

        void b(m<T> mVar);
    }

    private m(VAdError vAdError) {
        this.f8335d = false;
        this.e = 0L;
        this.f = 0L;
        this.h = 0L;
        this.f8332a = null;
        this.f8333b = null;
        this.f8334c = vAdError;
        if (0 == 0 && vAdError != null) {
            if (vAdError.networkResponse != null) {
                this.h = vAdError.networkResponse.f8322a;
            } else {
                this.h = vAdError.getErrorCode();
            }
            d.b("Response", "Response error code = " + this.h);
        }
    }

    private m(T t, a.C0159a aVar) {
        this.f8335d = false;
        this.e = 0L;
        this.f = 0L;
        this.h = 0L;
        this.f8332a = t;
        this.f8333b = aVar;
        this.f8334c = null;
        if (aVar != null) {
            this.h = aVar.f8362a;
        }
    }

    public static <T> m<T> a(VAdError vAdError) {
        return new m<>(vAdError);
    }

    public static <T> m<T> a(T t, a.C0159a aVar) {
        return new m<>(t, aVar);
    }

    public m a(long j) {
        this.e = j;
        return this;
    }

    public String a(String str, String str2) {
        String str3;
        a.C0159a aVar = this.f8333b;
        return (aVar == null || aVar.h == null || (str3 = this.f8333b.h.get(str)) == null) ? str2 : str3;
    }

    public boolean a() {
        return this.f8334c == null;
    }

    public m b(long j) {
        this.f = j;
        return this;
    }
}
