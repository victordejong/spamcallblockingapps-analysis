package p000;

import org.json.JSONObject;
/* renamed from: ve1 */
/* loaded from: classes3-dex2jar.jar:ve1.class */
public abstract class ve1<PlayerOrIMAAd> extends te1<PlayerOrIMAAd> {

    /* renamed from: o */
    public int f8369o = Integer.MIN_VALUE;

    /* renamed from: p */
    public int f8370p = Integer.MIN_VALUE;

    /* renamed from: m */
    public int f8367m = Integer.MIN_VALUE;

    /* renamed from: n */
    public double f8368n = Double.NaN;

    /* renamed from: q */
    public int f8371q = 0;

    /* renamed from: l */
    public EnumC1694b f8366l = EnumC1694b.UNINITIALIZED;

    /* renamed from: ve1$a */
    /* loaded from: classes3-dex2jar.jar:ve1$a.class */
    public class RunnableC1693a implements Runnable {
        public RunnableC1693a() {
            ve1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ve1 ve1Var;
            try {
                if (ve1.this.f8231f.get() == null || ve1.this.m504n()) {
                    ve1Var = ve1.this;
                } else if (Boolean.valueOf(ve1.this.m333t()).booleanValue()) {
                    ve1.this.f8229d.postDelayed(this, 200L);
                    return;
                } else {
                    ve1Var = ve1.this;
                }
                ve1Var.m501q();
            } catch (Exception e) {
                ve1.this.m501q();
                uf1.m397a(e);
            }
        }
    }

    /* renamed from: ve1$b */
    /* loaded from: classes3-dex2jar.jar:ve1$b.class */
    public enum EnumC1694b {
        UNINITIALIZED,
        PAUSED,
        PLAYING,
        STOPPED,
        COMPLETED
    }

    public ve1(String str, re1 re1Var, mf1 mf1Var) {
        super(str, re1Var, mf1Var);
    }

    @Override // p000.te1
    /* renamed from: j */
    public JSONObject mo335j(ye1 ye1Var) {
        Integer num;
        int i;
        if (!ye1Var.f8732a.equals(ye1.f8730e)) {
            num = ye1Var.f8732a;
        } else {
            try {
                num = mo332u();
            } catch (Exception e) {
                num = Integer.valueOf(this.f8367m);
            }
            ye1Var.f8732a = num;
        }
        if (ye1Var.f8732a.intValue() < 0) {
            num = Integer.valueOf(this.f8367m);
            ye1Var.f8732a = num;
        }
        if (ye1Var.f8735d == ze1.AD_EVT_COMPLETE) {
            if (num.intValue() == Integer.MIN_VALUE || (i = this.f8370p) == Integer.MIN_VALUE || !m503o(num, Integer.valueOf(i))) {
                this.f8366l = EnumC1694b.STOPPED;
                ye1Var.f8735d = ze1.AD_EVT_STOPPED;
            } else {
                this.f8366l = EnumC1694b.COMPLETED;
            }
        }
        return super.mo335j(ye1Var);
    }

    @Override // p000.te1
    /* renamed from: r */
    public void mo334r() {
        super.mo334r();
        this.f8229d.postDelayed(new RunnableC1693a(), 200L);
    }

    /* renamed from: t */
    public boolean m333t() {
        ze1 ze1Var;
        EnumC1694b enumC1694b;
        boolean z = false;
        if (this.f8231f.get() != null) {
            if (m504n()) {
                z = false;
            } else {
                try {
                    int intValue = mo332u().intValue();
                    if (this.f8367m >= 0 && intValue < 0) {
                        return false;
                    }
                    this.f8367m = intValue;
                    if (intValue == 0) {
                        return true;
                    }
                    int intValue2 = mo331v().intValue();
                    boolean mo330w = mo330w();
                    double d = intValue2 / 4.0d;
                    double m505m = m505m();
                    if (intValue > this.f8369o) {
                        this.f8369o = intValue;
                    }
                    if (this.f8370p == Integer.MIN_VALUE) {
                        this.f8370p = intValue2;
                    }
                    if (mo330w) {
                        EnumC1694b enumC1694b2 = this.f8366l;
                        if (enumC1694b2 == EnumC1694b.UNINITIALIZED) {
                            ze1Var = ze1.AD_EVT_START;
                            enumC1694b = EnumC1694b.PLAYING;
                        } else if (enumC1694b2 == EnumC1694b.PAUSED) {
                            ze1Var = ze1.AD_EVT_PLAYING;
                            enumC1694b = EnumC1694b.PLAYING;
                        } else {
                            int floor = ((int) Math.floor(intValue / d)) - 1;
                            ze1Var = null;
                            if (floor > -1) {
                                ze1Var = null;
                                if (floor < 3) {
                                    ze1 ze1Var2 = te1.f8225k[floor];
                                    ze1Var = null;
                                    if (!this.f8228c.containsKey(ze1Var2)) {
                                        this.f8228c.put(ze1Var2, 1);
                                        ze1Var = ze1Var2;
                                    }
                                }
                            }
                        }
                        this.f8366l = enumC1694b;
                    } else {
                        EnumC1694b enumC1694b3 = this.f8366l;
                        EnumC1694b enumC1694b4 = EnumC1694b.PAUSED;
                        ze1Var = null;
                        if (enumC1694b3 != enumC1694b4) {
                            ze1Var = ze1.AD_EVT_PAUSED;
                            this.f8366l = enumC1694b4;
                        }
                    }
                    boolean z2 = ze1Var != null;
                    boolean z3 = z2;
                    ze1 ze1Var3 = ze1Var;
                    if (!z2) {
                        z3 = z2;
                        ze1Var3 = ze1Var;
                        if (!Double.isNaN(this.f8368n)) {
                            z3 = z2;
                            ze1Var3 = ze1Var;
                            if (Math.abs(this.f8368n - m505m) > 0.05d) {
                                ze1Var3 = ze1.AD_EVT_VOLUME_CHANGE;
                                z3 = true;
                            }
                        }
                    }
                    if (z3) {
                        m509h(new ye1(ze1Var3, Integer.valueOf(intValue), Double.valueOf(m505m)));
                    }
                    this.f8368n = m505m;
                    this.f8371q = 0;
                    return true;
                } catch (Exception e) {
                    int i = this.f8371q;
                    this.f8371q = i + 1;
                    z = false;
                    if (i < 5) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: u */
    public abstract Integer mo332u();

    /* renamed from: v */
    public abstract Integer mo331v();

    /* renamed from: w */
    public abstract boolean mo330w();
}
