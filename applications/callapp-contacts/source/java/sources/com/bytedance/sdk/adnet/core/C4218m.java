package com.bytedance.sdk.adnet.core;

import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.AbstractC4246a;
import com.bytedance.sdk.adnet.p143d.C4228d;
import java.util.Map;
/* renamed from: com.bytedance.sdk.adnet.core.m */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/m.class */
public class C4218m<T> {

    /* renamed from: a */
    public final T f15468a;

    /* renamed from: b */
    public final AbstractC4246a.C4247a f15469b;

    /* renamed from: c */
    public final VAdError f15470c;

    /* renamed from: d */
    public boolean f15471d;

    /* renamed from: e */
    public long f15472e;

    /* renamed from: f */
    public long f15473f;

    /* renamed from: g */
    public Map<String, Object> f15474g;

    /* renamed from: h */
    public long f15475h;

    /* renamed from: com.bytedance.sdk.adnet.core.m$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/m$a.class */
    public interface AbstractC4219a<T> {
        /* renamed from: a */
        void mo33422a(C4218m<T> c4218m);

        /* renamed from: b */
        void mo33419b(C4218m<T> c4218m);
    }

    private C4218m(VAdError vAdError) {
        this.f15471d = false;
        this.f15472e = 0L;
        this.f15473f = 0L;
        this.f15475h = 0L;
        this.f15468a = null;
        this.f15469b = null;
        this.f15470c = vAdError;
        if (0 != 0 || vAdError == null) {
            return;
        }
        if (vAdError.networkResponse != null) {
            this.f15475h = vAdError.networkResponse.f15449a;
        } else {
            this.f15475h = vAdError.getErrorCode();
        }
        C4228d.m36086b("Response", "Response error code = " + this.f15475h);
    }

    private C4218m(T t, AbstractC4246a.C4247a c4247a) {
        this.f15471d = false;
        this.f15472e = 0L;
        this.f15473f = 0L;
        this.f15475h = 0L;
        this.f15468a = t;
        this.f15469b = c4247a;
        this.f15470c = null;
        if (c4247a != null) {
            this.f15475h = c4247a.f15503a;
        }
    }

    /* renamed from: a */
    public static <T> C4218m<T> m36113a(VAdError vAdError) {
        return new C4218m<>(vAdError);
    }

    /* renamed from: a */
    public static <T> C4218m<T> m36112a(T t, AbstractC4246a.C4247a c4247a) {
        return new C4218m<>(t, c4247a);
    }

    /* renamed from: a */
    public C4218m m36114a(long j) {
        this.f15472e = j;
        return this;
    }

    /* renamed from: a */
    public String m36111a(String str, String str2) {
        String str3;
        AbstractC4246a.C4247a c4247a = this.f15469b;
        return (c4247a == null || c4247a.f15510h == null || (str3 = this.f15469b.f15510h.get(str)) == null) ? str2 : str3;
    }

    /* renamed from: a */
    public boolean m36115a() {
        return this.f15470c == null;
    }

    /* renamed from: b */
    public C4218m m36110b(long j) {
        this.f15473f = j;
        return this;
    }
}
