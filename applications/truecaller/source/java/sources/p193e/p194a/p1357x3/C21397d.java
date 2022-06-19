package p193e.p194a.p1357x3;

import com.amazon.device.ads.DtbConstants;
import com.truecaller.forcedupdate.UpdateType;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19222c;
import s1.z.c.l;
/* renamed from: e.a.x3.d */
/* loaded from: classes9-dex2jar.jar:e/a/x3/d.class */
public final class C21397d implements AbstractC21396c {

    /* renamed from: a */
    public final AbstractC21398e f59860a;

    /* renamed from: b */
    public final AbstractC19222c f59861b;

    /* renamed from: c */
    public final int f59862c;

    @Inject
    public C21397d(AbstractC21398e abstractC21398e, AbstractC19222c abstractC19222c, int i) {
        l.e(abstractC21398e, "forcedUpdateSettings");
        l.e(abstractC19222c, "clock");
        this.f59860a = abstractC21398e;
        this.f59861b = abstractC19222c;
        this.f59862c = i;
    }

    @Override // p193e.p194a.p1357x3.AbstractC21396c
    /* renamed from: a */
    public void mo9775a(long j) {
        this.f59860a.putLong("forcedUpdate_lastDismissed", j);
    }

    @Override // p193e.p194a.p1357x3.AbstractC21396c
    /* renamed from: b */
    public UpdateType mo9774b() {
        Integer valueOf = Integer.valueOf(this.f59860a.getInt("forcedUpdate_appVersion", -1));
        if (valueOf.intValue() == -1) {
            valueOf = null;
        }
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            return (intValue == -1 || this.f59862c <= intValue) ? UpdateType.Companion.m35319a(this.f59860a.getString("forcedUpdate_updateType")) : UpdateType.NONE;
        }
        return UpdateType.NONE;
    }

    @Override // p193e.p194a.p1357x3.AbstractC21396c
    /* renamed from: c */
    public String mo9773c() {
        return this.f59860a.getString("forcedUpdate_link");
    }

    @Override // p193e.p194a.p1357x3.AbstractC21396c
    /* renamed from: d */
    public UpdateType mo9772d(boolean z) {
        UpdateType mo9774b = mo9774b();
        UpdateType updateType = UpdateType.NONE;
        if (mo9774b == updateType) {
            return updateType;
        }
        if (z && !mo9774b.getSupportsCompactMode()) {
            return updateType;
        }
        UpdateType updateType2 = mo9774b;
        if (mo9774b != updateType) {
            updateType2 = mo9774b;
            if (mo9774b.getSkippable()) {
                updateType2 = this.f59861b.mo13819c() - this.f59860a.getLong("forcedUpdate_lastDismissed", 0L) > this.f59860a.getLong("forcedUpdate_period", 0L) ? mo9774b : updateType;
            }
        }
        return updateType2;
    }

    @Override // p193e.p194a.p1357x3.AbstractC21396c
    /* renamed from: e */
    public void mo9771e(UpdateType updateType, String str, Integer num) {
        l.e(updateType, "type");
        if (updateType == UpdateType.NONE) {
            this.f59860a.remove("forcedUpdate_updateType");
            this.f59860a.remove("forcedUpdate_link");
            this.f59860a.remove("forcedUpdate_period");
            this.f59860a.remove("forcedUpdate_lastDismissed");
            this.f59860a.remove("forcedUpdate_appVersion");
            return;
        }
        this.f59860a.putInt("forcedUpdate_appVersion", this.f59862c);
        this.f59860a.putString("forcedUpdate_updateType", updateType.name());
        this.f59860a.putString("forcedUpdate_link", str);
        if (num == null) {
            return;
        }
        this.f59860a.putLong("forcedUpdate_period", num.intValue() * DtbConstants.SIS_CHECKIN_INTERVAL);
    }

    @Override // p193e.p194a.p1357x3.AbstractC21396c
    /* renamed from: f */
    public boolean mo9770f() {
        return mo9774b() == UpdateType.DISCONTINUED;
    }
}
