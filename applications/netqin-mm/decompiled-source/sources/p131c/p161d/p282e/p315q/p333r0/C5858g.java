package p131c.p161d.p282e.p315q.p333r0;

import android.graphics.Bitmap;
import android.text.TextUtils;
/* renamed from: c.d.e.q.r0.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/g.class */
public class C5858g {

    /* renamed from: a */
    public final String f19152a;

    /* renamed from: b */
    public final Bitmap f19153b;

    /* renamed from: c.d.e.q.r0.g$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/g$a.class */
    public static class C5859a {

        /* renamed from: a */
        public String f19154a;

        /* renamed from: b */
        public Bitmap f19155b;

        /* renamed from: a */
        public C5859a m22869a(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.f19154a = str;
            }
            return this;
        }

        /* renamed from: a */
        public C5858g m22870a() {
            if (!TextUtils.isEmpty(this.f19154a)) {
                return new C5858g(this.f19154a, this.f19155b);
            }
            throw new IllegalArgumentException("ImageData model must have an imageUrl");
        }
    }

    public C5858g(String str, Bitmap bitmap) {
        this.f19152a = str;
        this.f19153b = bitmap;
    }

    /* renamed from: b */
    public static C5859a m22871b() {
        return new C5859a();
    }

    /* renamed from: a */
    public String m22872a() {
        return this.f19152a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5858g)) {
            return false;
        }
        C5858g gVar = (C5858g) obj;
        return hashCode() == gVar.hashCode() && this.f19152a.equals(gVar.f19152a);
    }

    public int hashCode() {
        Bitmap bitmap = this.f19153b;
        return this.f19152a.hashCode() + (bitmap != null ? bitmap.hashCode() : 0);
    }
}
