package p459j.p460a.p474c0.p491g.p495d0;

import android.view.View;
import p459j.p460a.p582w0.C14167t;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.g.d0.b */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/d0/b.class */
public final class C11993b {

    /* renamed from: a */
    public final String f26883a;

    /* renamed from: b */
    public final int f26884b;

    /* renamed from: c */
    public final View.OnClickListener f26885c;

    public C11993b(String str, int i, View.OnClickListener onClickListener) {
        C15149k.m377b(str, "text");
        C15149k.m377b(onClickListener, "onClickListener");
        this.f26883a = str;
        this.f26884b = i;
        this.f26885c = onClickListener;
    }

    public /* synthetic */ C11993b(String str, int i, View.OnClickListener onClickListener, int i2, C15145g gVar) {
        this(str, (i2 & 2) != 0 ? C14167t.m2312d() : i, onClickListener);
    }

    /* renamed from: a */
    public final View.OnClickListener m7622a() {
        return this.f26885c;
    }

    /* renamed from: b */
    public final String m7621b() {
        return this.f26883a;
    }

    /* renamed from: c */
    public final int m7620c() {
        return this.f26884b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11993b)) {
            return false;
        }
        C11993b bVar = (C11993b) obj;
        if (!C15149k.m384a((Object) this.f26883a, (Object) bVar.f26883a)) {
            return false;
        }
        return (this.f26884b == bVar.f26884b) && C15149k.m384a(this.f26885c, bVar.f26885c);
    }

    public int hashCode() {
        int hashCode;
        String str = this.f26883a;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        hashCode = Integer.valueOf(this.f26884b).hashCode();
        View.OnClickListener onClickListener = this.f26885c;
        if (onClickListener != null) {
            i = onClickListener.hashCode();
        }
        return (((hashCode2 * 31) + hashCode) * 31) + i;
    }

    public String toString() {
        return "DialogButton(text=" + this.f26883a + ", textColor=" + this.f26884b + ", onClickListener=" + this.f26885c + ")";
    }
}
