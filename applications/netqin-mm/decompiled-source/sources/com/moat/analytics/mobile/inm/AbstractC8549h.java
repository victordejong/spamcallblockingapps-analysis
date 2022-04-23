package com.moat.analytics.mobile.inm;

import android.view.View;
import java.util.Map;
/* renamed from: com.moat.analytics.mobile.inm.h */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/h.class */
public abstract class AbstractC8549h extends AbstractC8538c {

    /* renamed from: p */
    public int f33259p = Integer.MIN_VALUE;

    /* renamed from: l */
    public int f33255l = Integer.MIN_VALUE;

    /* renamed from: n */
    public int f33257n = Integer.MIN_VALUE;

    /* renamed from: q */
    public int f33260q = 0;

    /* renamed from: m */
    public EnumC8551a f33256m = EnumC8551a.UNINITIALIZED;

    /* renamed from: o */
    public double f33258o = Double.NaN;

    /* renamed from: com.moat.analytics.mobile.inm.h$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/h$a.class */
    public enum EnumC8551a {
        UNINITIALIZED,
        PAUSED,
        PLAYING,
        STOPPED,
        COMPLETED
    }

    public AbstractC8549h(String str) {
        super(str);
    }

    /* renamed from: t */
    private void m5195t() {
        ((AbstractC8538c) this).f33229i.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.inm.h.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!AbstractC8549h.this.mo5073n() || AbstractC8549h.this.m5213m()) {
                        AbstractC8549h.this.m5214l();
                    } else if (Boolean.valueOf(AbstractC8549h.this.m5196s()).booleanValue()) {
                        ((AbstractC8538c) AbstractC8549h.this).f33229i.postDelayed(this, 200L);
                    } else {
                        AbstractC8549h.this.m5214l();
                    }
                } catch (Exception e) {
                    AbstractC8549h.this.m5214l();
                    C8562m.m5135a(e);
                }
            }
        }, 200L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
        if (r4.f33257n > 0) goto L_0x0056;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006d  */
    @Override // com.moat.analytics.mobile.inm.AbstractC8538c
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject mo5036a(com.moat.analytics.mobile.inm.MoatAdEvent r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.Integer r0 = r0.f33198b
            java.lang.Integer r1 = com.moat.analytics.mobile.inm.MoatAdEvent.f33196a
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0015
            r0 = r5
            java.lang.Integer r0 = r0.f33198b
            r6 = r0
            goto L_0x002b
        L_0x0015:
            r0 = r4
            java.lang.Integer r0 = r0.mo5072o()     // Catch: Exception -> 0x001d
            r6 = r0
            goto L_0x0026
        L_0x001d:
            r6 = move-exception
            r0 = r4
            int r0 = r0.f33257n
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r6 = r0
        L_0x0026:
            r0 = r5
            r1 = r6
            r0.f33198b = r1
        L_0x002b:
            r0 = r5
            java.lang.Integer r0 = r0.f33198b
            int r0 = r0.intValue()
            if (r0 < 0) goto L_0x0056
            r0 = r6
            r7 = r0
            r0 = r5
            java.lang.Integer r0 = r0.f33198b
            int r0 = r0.intValue()
            if (r0 != 0) goto L_0x0063
            r0 = r6
            r7 = r0
            r0 = r5
            com.moat.analytics.mobile.inm.MoatAdEventType r0 = r0.f33200d
            com.moat.analytics.mobile.inm.MoatAdEventType r1 = com.moat.analytics.mobile.inm.MoatAdEventType.AD_EVT_COMPLETE
            if (r0 != r1) goto L_0x0063
            r0 = r6
            r7 = r0
            r0 = r4
            int r0 = r0.f33257n
            if (r0 <= 0) goto L_0x0063
        L_0x0056:
            r0 = r4
            int r0 = r0.f33257n
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r7 = r0
            r0 = r5
            r1 = r7
            r0.f33198b = r1
        L_0x0063:
            r0 = r5
            com.moat.analytics.mobile.inm.MoatAdEventType r0 = r0.f33200d
            com.moat.analytics.mobile.inm.MoatAdEventType r1 = com.moat.analytics.mobile.inm.MoatAdEventType.AD_EVT_COMPLETE
            if (r0 != r1) goto L_0x00ab
            r0 = r7
            int r0 = r0.intValue()
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x009d
            r0 = r4
            int r0 = r0.f33255l
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x009d
            r0 = r4
            r1 = r7
            r2 = r8
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            boolean r0 = r0.m5219a(r1, r2)
            if (r0 != 0) goto L_0x0093
            goto L_0x009d
        L_0x0093:
            r0 = r4
            com.moat.analytics.mobile.inm.h$a r1 = com.moat.analytics.mobile.inm.AbstractC8549h.EnumC8551a.COMPLETED
            r0.f33256m = r1
            goto L_0x00ab
        L_0x009d:
            r0 = r4
            com.moat.analytics.mobile.inm.h$a r1 = com.moat.analytics.mobile.inm.AbstractC8549h.EnumC8551a.STOPPED
            r0.f33256m = r1
            r0 = r5
            com.moat.analytics.mobile.inm.MoatAdEventType r1 = com.moat.analytics.mobile.inm.MoatAdEventType.AD_EVT_STOPPED
            r0.f33200d = r1
        L_0x00ab:
            r0 = r4
            r1 = r5
            org.json.JSONObject r0 = super.mo5036a(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.inm.AbstractC8549h.mo5036a(com.moat.analytics.mobile.inm.MoatAdEvent):org.json.JSONObject");
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8538c
    /* renamed from: a */
    public boolean mo5198a(Map<String, String> map, View view) {
        boolean z;
        try {
            boolean a = super.mo5198a(map, view);
            z = a;
            if (a) {
                z = a;
                if (m5197p()) {
                    m5195t();
                    z = a;
                }
            }
        } catch (Exception e) {
            C8571p.m5104a(3, "IntervalVideoTracker", this, "Problem with video loop");
            m5233a("trackVideoAd", e);
            z = false;
        }
        return z;
    }

    /* renamed from: n */
    public abstract boolean mo5073n();

    /* renamed from: o */
    public abstract Integer mo5072o();

    /* renamed from: p */
    public boolean m5197p() {
        return true;
    }

    /* renamed from: q */
    public abstract boolean mo5071q();

    /* renamed from: r */
    public abstract Integer mo5070r();

    /* JADX WARN: Removed duplicated region for block: B:53:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0172 A[Catch: Exception -> 0x0199, TRY_ENTER, TryCatch #0 {Exception -> 0x0199, blocks: (B:6:0x0011, B:11:0x0026, B:14:0x0031, B:16:0x0050, B:18:0x005c, B:20:0x0064, B:22:0x006a, B:24:0x0072, B:27:0x007b, B:29:0x0085, B:31:0x0090, B:32:0x0098, B:34:0x00a2, B:36:0x00c0, B:41:0x00da, B:43:0x00e5, B:45:0x00f3, B:48:0x010e, B:50:0x0118, B:58:0x0143, B:62:0x0154, B:64:0x0165, B:68:0x0172, B:70:0x018d), top: B:77:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m5196s() {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moat.analytics.mobile.inm.AbstractC8549h.m5196s():boolean");
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8538c
    public void setPlayerVolume(Double d) {
        super.setPlayerVolume(d);
        this.f33258o = m5216j().doubleValue();
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8538c, com.moat.analytics.mobile.inm.AbstractC8537b
    public void stopTracking() {
        try {
            dispatchEvent(new MoatAdEvent(MoatAdEventType.AD_EVT_COMPLETE));
            super.stopTracking();
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }
}
