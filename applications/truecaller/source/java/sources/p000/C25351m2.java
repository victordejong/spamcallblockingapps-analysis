package p000;

import com.google.android.material.chip.ChipGroup;
import p193e.p194a.p437c.p438a.p480j.p486e.C9162a;
import s1.a.l;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: m2 */
/* loaded from: classes5-dex2jar.jar:m2.class */
public final class C25351m2 extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ int f70766b;

    /* renamed from: c */
    public final /* synthetic */ Object f70767c;

    /* renamed from: d */
    public final /* synthetic */ Object f70768d;

    /* renamed from: e */
    public final /* synthetic */ boolean f70769e;

    /* renamed from: f */
    public final /* synthetic */ boolean f70770f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25351m2(int i, Object obj, Object obj2, boolean z, boolean z2) {
        super(0);
        this.f70766b = i;
        this.f70767c = obj;
        this.f70768d = obj2;
        this.f70769e = z;
        this.f70770f = z2;
    }

    public final Object invoke() {
        s sVar = s.a;
        int i = this.f70766b;
        if (i == 0) {
            C9162a c9162a = (C9162a) this.f70767c;
            l[] lVarArr = C9162a.f27891j;
            c9162a.m27838TA().m35150i(true);
            ((C9162a) this.f70767c).m27839SA().f27494f.f27413a.clearFocus();
            C9162a c9162a2 = (C9162a) this.f70767c;
            ChipGroup chipGroup = c9162a2.m27839SA().f27491c;
            s1.z.c.l.d(chipGroup, "binding.categoryTags");
            C9162a.m27841QA(c9162a2, chipGroup);
            return sVar;
        } else if (i != 1) {
            throw null;
        } else {
            C9162a c9162a3 = (C9162a) this.f70767c;
            l[] lVarArr2 = C9162a.f27891j;
            c9162a3.m27838TA().m35150i(false);
            ((C9162a) this.f70767c).m27839SA().f27494f.f27413a.clearFocus();
            C9162a c9162a4 = (C9162a) this.f70767c;
            ChipGroup chipGroup2 = c9162a4.m27839SA().f27491c;
            s1.z.c.l.d(chipGroup2, "binding.categoryTags");
            C9162a.m27841QA(c9162a4, chipGroup2);
            return sVar;
        }
    }
}
