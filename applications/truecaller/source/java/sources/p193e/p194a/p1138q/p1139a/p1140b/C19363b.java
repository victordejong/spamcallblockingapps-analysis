package p193e.p194a.p1138q.p1139a.p1140b;

import com.truecaller.contactfeedback.model.Profile;
import com.truecaller.contactfeedback.presentation.addcomment.model.AddCommentRequest;
import io.agora.rtc.Constants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1138q.p1145i.AbstractC19456a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p373a.p389v.AbstractC8339a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.g;
import s1.n;
import s1.u.i;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.q.a.b.b */
/* loaded from: classes4-dex2jar.jar:e/a/q/a/b/b.class */
public final class C19363b extends AbstractC20574a<AbstractC19369f> implements AbstractC19368e {

    /* renamed from: d */
    public AddCommentRequest f53846d;

    /* renamed from: e */
    public final g f53847e;

    /* renamed from: f */
    public Profile f53848f;

    /* renamed from: g */
    public final g f53849g = C25225a.m3978P1(new C19364a(1, this));

    /* renamed from: h */
    public final g f53850h = C25225a.m3978P1(new C19364a(0, this));

    /* renamed from: i */
    public final f f53851i;

    /* renamed from: j */
    public final AbstractC8541a f53852j;

    /* renamed from: k */
    public final AbstractC8339a f53853k;

    /* renamed from: l */
    public final AbstractC19222c f53854l;

    /* renamed from: m */
    public final AbstractC19456a f53855m;

    /* renamed from: e.a.q.a.b.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/q/a/b/b$a.class */
    public static final class C19364a extends m implements a<Integer> {

        /* renamed from: b */
        public final /* synthetic */ int f53856b;

        /* renamed from: c */
        public final /* synthetic */ Object f53857c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19364a(int i, Object obj) {
            super(0);
            this.f53856b = i;
            this.f53857c = obj;
        }

        public final Object invoke() {
            int i = this.f53856b;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                return Integer.valueOf(((C19363b) this.f53857c).f53852j.getInt("contactFeedbackCommentBoxMinLength", 3));
            }
            return Integer.valueOf(((C19363b) this.f53857c).f53852j.getInt("contactFeedbackCommentBoxMaxLength", Constants.ERR_ALREADY_IN_RECORDING));
        }
    }

    /* renamed from: e.a.q.a.b.b$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q/a/b/b$b.class */
    public static final class C19365b extends m implements a<Profile> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19365b() {
            super(0);
            C19363b.this = r4;
        }

        public Object invoke() {
            String string = C19363b.this.f53852j.getString("profileFirstName", "");
            l.d(string, "coreSettings.getString(C…gs.PROFILE_FIRSTNAME, \"\")");
            String string2 = C19363b.this.f53852j.getString("profileAvatar", "");
            l.d(string2, "coreSettings.getString(C…tings.PROFILE_AVATAR, \"\")");
            return new Profile(string, string2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C19363b(@Named("UI") f fVar, AbstractC8541a abstractC8541a, AbstractC8339a abstractC8339a, AbstractC19222c abstractC19222c, AbstractC19456a abstractC19456a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8339a, "commentBoxValidator");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19456a, "commentFeedbackProcessor");
        this.f53851i = fVar;
        this.f53852j = abstractC8541a;
        this.f53853k = abstractC8339a;
        this.f53854l = abstractC19222c;
        this.f53855m = abstractC19456a;
        n m3978P1 = C25225a.m3978P1(new C19365b());
        this.f53847e = m3978P1;
        this.f53848f = (Profile) m3978P1.getValue();
    }

    /* renamed from: Ij */
    public final int m13409Ij() {
        return ((Number) this.f53850h.getValue()).intValue();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.q.a.b.f, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC19369f abstractC19369f) {
        AbstractC19369f abstractC19369f2 = abstractC19369f;
        l.e(abstractC19369f2, "presenterView");
        this.f57683a = abstractC19369f2;
        abstractC19369f2.mo13401p3(m13409Ij());
        abstractC19369f2.mo13405Z3(i.T(new Profile[]{(Profile) this.f53847e.getValue(), null}));
    }
}
