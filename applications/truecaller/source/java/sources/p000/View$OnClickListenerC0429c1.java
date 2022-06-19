package p000;

import android.view.View;
import com.truecaller.suspension.UnsuspensionMethod;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p786g0.p787a.AbstractC14338m;
import p193e.p194a.p786g0.p787a.AbstractC14339n;
import p193e.p194a.p786g0.p787a.C14320a;
import p193e.p194a.p786g0.p787a.C14340o;
import p193e.p194a.p786g0.p787a.C14347r;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: c1 */
/* loaded from: classes3-dex2jar.jar:c1.class */
public final class View$OnClickListenerC0429c1 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f1606a;

    /* renamed from: b */
    public final /* synthetic */ Object f1607b;

    public View$OnClickListenerC0429c1(int i, Object obj) {
        this.f1606a = i;
        this.f1607b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC14339n abstractC14339n;
        int i = this.f1606a;
        boolean z = true;
        if (i != 0) {
            if (i != 1) {
                throw null;
            }
            AbstractC14338m abstractC14338m = ((C14320a) this.f1607b).f41414h;
            if (abstractC14338m == null) {
                l.l("presenter");
                throw null;
            }
            AbstractC14339n abstractC14339n2 = (AbstractC14339n) ((C14347r) abstractC14338m).f57683a;
            if (abstractC14339n2 == null) {
                return;
            }
            abstractC14339n2.mo20244bn();
            return;
        }
        AbstractC14338m abstractC14338m2 = ((C14320a) this.f1607b).f41414h;
        if (abstractC14338m2 == null) {
            l.l("presenter");
            throw null;
        }
        C14347r c14347r = (C14347r) abstractC14338m2;
        UnsuspensionMethod mo20188k = c14347r.f41452f.mo20188k();
        boolean z2 = mo20188k instanceof UnsuspensionMethod.C4587b;
        if (z2 && ((UnsuspensionMethod.C4587b) mo20188k).f15168a > 0) {
            AbstractC14339n abstractC14339n3 = (AbstractC14339n) c14347r.f57683a;
            if (abstractC14339n3 == null) {
                return;
            }
            abstractC14339n3.mo20244bn();
        } else if (z2) {
            if (c14347r.f41453g.mo13429d()) {
                d.w2(c14347r, (f) null, (j0) null, new C14340o(c14347r, null), 3, (Object) null);
                return;
            }
            AbstractC14339n abstractC14339n4 = (AbstractC14339n) c14347r.f57683a;
            if (abstractC14339n4 == null) {
                return;
            }
            abstractC14339n4.mo20242i0();
        } else if (!(mo20188k instanceof UnsuspensionMethod.Support)) {
            if (!l.a(mo20188k, UnsuspensionMethod.C4586a.f15167a) || (abstractC14339n = (AbstractC14339n) c14347r.f57683a) == null) {
                return;
            }
            abstractC14339n.mo20244bn();
        } else {
            UnsuspensionMethod.Support support = (UnsuspensionMethod.Support) mo20188k;
            String str = support.f15165a;
            boolean z3 = str == null || !C19286f.m13664o(str);
            if (support.f15166b != UnsuspensionMethod.Support.Error.Feedback) {
                z = false;
            }
            if (!z3 && !z) {
                c14347r.m20212Kj();
                return;
            }
            AbstractC14339n abstractC14339n5 = (AbstractC14339n) c14347r.f57683a;
            if (abstractC14339n5 == null) {
                return;
            }
            abstractC14339n5.mo20249Rm(support.f15165a);
        }
    }
}
