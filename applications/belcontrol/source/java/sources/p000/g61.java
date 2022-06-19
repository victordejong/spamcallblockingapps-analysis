package p000;

import android.annotation.TargetApi;
import android.database.Cursor;
import android.telecom.Call;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.UUID;
import p000.fa1;
import p000.m91;
import p000.n91;
import p000.o91;
import p000.q71;
import p000.r71;
@TargetApi(23)
/* renamed from: g61 */
/* loaded from: classes3-dex2jar.jar:g61.class */
public class g61 implements m91.AbstractC1469b {

    /* renamed from: b */
    public EnumC1440c f6661b;

    /* renamed from: c */
    public Call f6662c;

    /* renamed from: f */
    public n91.C1485b f6664f;

    /* renamed from: g */
    public i91 f6665g;

    /* renamed from: h */
    public String f6666h;

    /* renamed from: j */
    public x81 f6667j;

    /* renamed from: k */
    public q81 f6668k;

    /* renamed from: a */
    public final String f6660a = UUID.randomUUID().toString();

    /* renamed from: d */
    public ArrayList<e61> f6663d = new ArrayList<>();

    /* renamed from: l */
    public EnumC1439b f6669l = EnumC1439b.NONE;

    /* renamed from: m */
    public long f6670m = 0;

    /* renamed from: n */
    public int f6671n = -1;

    /* renamed from: o */
    public boolean f6672o = false;

    /* renamed from: p */
    public boolean f6673p = false;

    /* renamed from: g61$a */
    /* loaded from: classes3-dex2jar.jar:g61$a.class */
    public static /* synthetic */ class C1438a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f6674a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[q71.EnumC1614a.values().length];
            f6674a = iArr;
            try {
                iArr[q71.EnumC1614a.PICKUP_HANGUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6674a[q71.EnumC1614a.VOICE_MAIL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6674a[q71.EnumC1614a.IGNORE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: g61$b */
    /* loaded from: classes3-dex2jar.jar:g61$b.class */
    public enum EnumC1439b {
        NONE,
        IGNORE,
        VOICE_MAIL,
        PICKUP_HANGUP
    }

    /* renamed from: g61$c */
    /* loaded from: classes3-dex2jar.jar:g61$c.class */
    public enum EnumC1440c {
        CONNECTING,
        DIALING,
        RINGING,
        ACTIVE,
        DISCONNECTED,
        UNKNOWN,
        HOLDING,
        SELECTING_ACCOUNT
    }

    public g61(Call call) {
        this.f6662c = call;
        m1689g(call);
        Call.Details details = call.getDetails();
        this.f6665g = fa1.C1420e.m1800o((details == null || details.getHandle() == null) ? "" : details.getHandle().getSchemeSpecificPart());
        if (r71.EnumC1638a.f7942d.m695a() && r71.m709m().length > 0 && !this.f6673p) {
            this.f6664f = o71.m1154e(this.f6665g);
            m1690f();
            if (!this.f6664f.f7083b) {
                z91.m51h(this.f6665g);
            }
            z91.m44o(this.f6665g, this.f6664f, q71.EnumC1618e.CALL);
            m1692d();
        }
        m1691e();
    }

    /* renamed from: a */
    public boolean m1695a() {
        n91.C1485b c1485b;
        if (this.f6673p || (c1485b = this.f6664f) == null || !ba1.m5688b(this.f6665g, c1485b)) {
            return false;
        }
        m81 m81Var = new m81();
        m81Var.m1285H(this.f6665g);
        long j = m81Var.f6966d;
        if (j != 0) {
            if (j <= 0) {
                return false;
            }
            if (((m81Var.f6970j != 1 && m81Var.f6969h <= 0) || System.currentTimeMillis() - 3600000 <= m81Var.f6972l) && (m81Var.f6970j != 0 || m81Var.f6969h != 0 || System.currentTimeMillis() - 900000 <= m81Var.f6972l)) {
                return false;
            }
        }
        m91.m1278d(this, EnumSet.of(m91.EnumC1470c.GET_CALLER_COMPLETE), new Class[0]);
        boolean m1826x = fa1.m1826x();
        if (m1826x && !this.f6672o) {
            o91.m1133a(o91.EnumC1509c.CALL);
        }
        ba1.m5689a(this.f6665g, this.f6664f);
        return m1826x;
    }

    /* renamed from: b */
    public void m1694b() {
        if (this.f6663d == null) {
            return;
        }
        for (int i = 0; i < this.f6663d.size(); i++) {
            e61 e61Var = this.f6663d.get(i);
            if (e61Var != null) {
                e61Var.m2214o(this);
            }
        }
    }

    /* renamed from: c */
    public void m1693c() {
        m91.m1277e(this);
    }

    /* renamed from: d */
    public final void m1692d() {
        n91.C1485b c1485b;
        if (!r71.EnumC1638a.f7942d.m695a() || this.f6661b != EnumC1440c.RINGING || (c1485b = this.f6664f) == null || !c1485b.f7083b) {
            return;
        }
        int i = C1438a.f6674a[c1485b.f7084c.m912d().ordinal()];
        this.f6669l = i != 1 ? i != 2 ? i != 3 ? EnumC1439b.NONE : EnumC1439b.IGNORE : EnumC1439b.VOICE_MAIL : EnumC1439b.PICKUP_HANGUP;
    }

    /* renamed from: e */
    public final void m1691e() {
        n91.C1485b c1485b;
        this.f6666h = null;
        if (!this.f6665g.m1595s() && !this.f6665g.m1597q()) {
            x81 x81Var = new x81();
            this.f6667j = x81Var;
            x81Var.m157P(this.f6665g);
            if (this.f6667j.f8635d < 1) {
                this.f6667j = null;
            }
            x81 x81Var2 = this.f6667j;
            if (x81Var2 != null && !TextUtils.isEmpty(x81Var2.f8636f)) {
                this.f6666h = this.f6667j.f8636f;
            }
            q81 q81Var = new q81();
            this.f6668k = q81Var;
            Cursor m875W = q81Var.m875W(this.f6665g);
            if (m875W == null || !m875W.moveToFirst()) {
                this.f6668k = null;
            } else {
                this.f6668k.m881Q(m875W);
            }
            if (m875W != null) {
                m875W.close();
            }
            q81 q81Var2 = this.f6668k;
            if (q81Var2 != null && !TextUtils.isEmpty(q81Var2.f7779f)) {
                this.f6666h = this.f6668k.f7779f;
            }
        }
        if (TextUtils.isEmpty(this.f6666h) && (c1485b = this.f6664f) != null && !TextUtils.isEmpty(c1485b.f7086f)) {
            this.f6666h = this.f6664f.f7086f;
        }
        if (TextUtils.isEmpty(this.f6666h) && !this.f6665g.m1595s() && !this.f6665g.m1597q()) {
            u81 u81Var = new u81();
            u81Var.m413F(this.f6665g, null);
            this.f6666h = u81Var.f8288d;
        }
        String str = this.f6666h;
        if (str == null || str.isEmpty()) {
            this.f6666h = this.f6665g.m1601m();
        }
    }

    /* renamed from: f */
    public final void m1690f() {
        this.f6664f = o71.m1154e(this.f6665g);
        j91.m1518F("CACHING", "Time to check cache for " + this.f6665g);
        if (this.f6664f == null) {
            j91.m1521C("FILTERING");
            this.f6664f = n91.m1216a(this.f6665g, q71.EnumC1618e.CALL);
            j91.m1518F("FILTERING", "Time to filter " + this.f6665g);
            n91.EnumC1484a enumC1484a = this.f6664f.f7082a;
            if (enumC1484a != n91.EnumC1484a.DND && enumC1484a != n91.EnumC1484a.ATTORNEY) {
                j91.m1521C("CACHE_SAVE");
                n91.C1485b c1485b = this.f6664f;
                o71.m1151h(this.f6665g, c1485b, (c1485b.f7082a == n91.EnumC1484a.COMMUNITY_BLACKLIST ? 86400000 : -1) == 1 ? 1L : 0L);
                j91.m1518F("CACHE_SAVE", "Time to save " + this.f6665g + " to cache");
            }
        }
        if (this.f6664f.f7082a != n91.EnumC1484a.DND || !u71.m445E(this.f6665g.toString())) {
            return;
        }
        n91.C1485b m1215b = n91.m1215b(this.f6665g, q71.EnumC1618e.CALL, Boolean.FALSE);
        n91.C1485b c1485b2 = this.f6664f;
        c1485b2.f7083b = m1215b.f7083b;
        c1485b2.f7082a = m1215b.f7083b ? m1215b.f7082a : n91.EnumC1484a.REPEATED_CALL;
    }

    /* renamed from: g */
    public void m1689g(Call call) {
        EnumC1440c enumC1440c;
        EnumC1440c enumC1440c2;
        if (call == null) {
            return;
        }
        int state = call.getState();
        if (state != 1) {
            if (state == 2) {
                enumC1440c2 = EnumC1440c.RINGING;
            } else if (state == 3) {
                enumC1440c2 = EnumC1440c.HOLDING;
            } else if (state == 4) {
                enumC1440c2 = EnumC1440c.ACTIVE;
            } else if (state == 7) {
                this.f6661b = EnumC1440c.DISCONNECTED;
                if (call.getDetails() == null || call.getDetails().getDisconnectCause() == null) {
                    return;
                }
                this.f6671n = call.getDetails().getDisconnectCause().getCode();
                return;
            } else if (state == 8) {
                enumC1440c2 = EnumC1440c.SELECTING_ACCOUNT;
            } else if (state != 9) {
                enumC1440c2 = EnumC1440c.UNKNOWN;
            } else {
                enumC1440c = EnumC1440c.CONNECTING;
            }
            this.f6661b = enumC1440c2;
            return;
        }
        enumC1440c = EnumC1440c.DIALING;
        this.f6661b = enumC1440c;
        this.f6673p = true;
    }

    @Override // p000.m91.AbstractC1469b
    /* renamed from: i */
    public void mo648i(m91.EnumC1470c enumC1470c, Class<?> cls, Object obj) {
        i91 i91Var = (i91) obj;
        if (i91Var == null) {
            if (!fa1.m1826x()) {
                return;
            }
            m91.m1281a(this, m91.EnumC1470c.GSM_CALL_READY, this);
            return;
        }
        m81 m81Var = new m81();
        m81Var.m1285H(i91Var);
        if (m81Var.m1283J() != null) {
            m1690f();
            m1692d();
            m1691e();
            m1694b();
        }
        if (!fa1.m1826x()) {
            return;
        }
        m91.m1281a(this, m91.EnumC1470c.GSM_CALL_READY, this);
    }
}
