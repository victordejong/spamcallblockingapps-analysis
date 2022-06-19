package p193e.p194a.p1275v.p1309p;

import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import p193e.p194a.p1114o5.C19047j1;
import p193e.p194a.p1114o5.C19090q;
import p193e.p194a.p372b0.p430q.C8613t;
import s1.z.c.l;
/* renamed from: e.a.v.p.j */
/* loaded from: classes8-dex2jar.jar:e/a/v/p/j.class */
public final class C20935j implements AbstractC20934i {

    /* renamed from: e.a.v.p.j$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/p/j$a.class */
    public static final class C20936a implements C19047j1.AbstractC19048a {

        /* renamed from: a */
        public final /* synthetic */ Fragment f58881a;

        public C20936a(Fragment fragment) {
            this.f58881a = fragment;
        }

        @Override // p193e.p194a.p1114o5.C19047j1.AbstractC19048a
        /* renamed from: a */
        public final void mo10489a(Contact contact, byte[] bArr) {
            C8613t.m28200l(this.f58881a, C19090q.m14140d(contact, bArr), 21);
        }
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20934i
    /* renamed from: a */
    public Fragment mo10490a(Contact contact, Fragment fragment) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(fragment, "resultReceiver");
        C19047j1 m14189QA = C19047j1.m14189QA(contact, new C20936a(fragment));
        l.d(m14189QA, "PrepareContactForSaveDia…T\n            )\n        }");
        return m14189QA;
    }
}
