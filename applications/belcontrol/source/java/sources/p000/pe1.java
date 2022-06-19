package p000;

import android.text.TextUtils;
import java.io.Serializable;
/* renamed from: pe1 */
/* loaded from: classes3-dex2jar.jar:pe1.class */
public class pe1 implements Serializable {
    private static final long serialVersionUID = -4076859435174187767L;

    /* renamed from: a */
    public String f7697a;

    /* renamed from: b */
    public String f7698b;

    /* renamed from: c */
    public String f7699c;

    /* renamed from: d */
    public String f7700d;

    /* renamed from: f */
    public String f7701f;

    /* renamed from: a */
    public String m927a() {
        return TextUtils.isEmpty(this.f7699c) ? "" : this.f7699c;
    }

    /* renamed from: b */
    public String m926b() {
        return this.f7700d;
    }

    /* renamed from: c */
    public String m925c() {
        return TextUtils.isEmpty(this.f7698b) ? "" : this.f7698b;
    }

    /* renamed from: d */
    public String m924d() {
        return TextUtils.isEmpty(this.f7697a) ? "" : this.f7697a;
    }

    /* renamed from: e */
    public void m923e(String str) {
        this.f7699c = str;
    }

    /* renamed from: f */
    public void m922f(String str) {
        this.f7700d = str;
    }

    /* renamed from: g */
    public void m921g(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f7701f = "0";
        }
        this.f7701f = str;
    }

    /* renamed from: h */
    public void m920h(String str) {
        this.f7698b = str;
    }

    /* renamed from: i */
    public void m919i(String str) {
        this.f7697a = str;
    }

    public String toString() {
        return this.f7700d + ";;" + this.f7697a + ";;" + this.f7699c + ";;" + this.f7701f;
    }
}
