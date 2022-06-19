package p304z3;

import android.graphics.Typeface;
import android.support.p012v4.media.AbstractC0081a;
import p262v3.C4601b;
import p262v3.C4602c;
/* renamed from: z3.a */
/* loaded from: classes-dex2jar.jar:z3/a.class */
public final class C5068a extends AbstractC0081a {

    /* renamed from: a */
    public final Typeface f15377a;

    /* renamed from: b */
    public final AbstractC5069a f15378b;

    /* renamed from: c */
    public boolean f15379c;

    /* renamed from: z3.a$a */
    /* loaded from: classes-dex2jar.jar:z3/a$a.class */
    public interface AbstractC5069a {
    }

    public C5068a(AbstractC5069a abstractC5069a, Typeface typeface) {
        this.f15377a = typeface;
        this.f15378b = abstractC5069a;
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: A */
    public void mo58A(int i) {
        m76M(this.f15377a);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: B */
    public void mo57B(Typeface typeface, boolean z) {
        m76M(typeface);
    }

    /* renamed from: M */
    public final void m76M(Typeface typeface) {
        if (!this.f15379c) {
            C4602c c4602c = ((C4601b) this.f15378b).f14193a;
            C5068a c5068a = c4602c.f14236w;
            boolean z = true;
            if (c5068a != null) {
                c5068a.f15379c = true;
            }
            if (c4602c.f14233t != typeface) {
                c4602c.f14233t = typeface;
            } else {
                z = false;
            }
            if (!z) {
                return;
            }
            c4602c.m727j();
        }
    }
}
