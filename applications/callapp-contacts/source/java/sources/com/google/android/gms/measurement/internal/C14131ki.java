package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.C13370ar;
import com.google.android.gms.internal.measurement.C13378az;
import com.google.android.gms.internal.measurement.C13422cp;
import com.google.android.gms.internal.measurement.C13633kk;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.google.android.gms.measurement.internal.ki */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ki.class */
public final class C14131ki extends AbstractC14130kh {

    /* renamed from: a */
    final /* synthetic */ C14132kj f52039a;

    /* renamed from: h */
    private final C13378az f52040h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14131ki(C14132kj c14132kj, String str, int i, C13378az c13378az) {
        super(str, i);
        this.f52039a = c14132kj;
        this.f52040h = c13378az;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14130kh
    /* renamed from: a */
    public final int mo11535a() {
        return this.f52040h.zze;
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* renamed from: a */
    public final boolean m11534a(Long l, Long l2, C13422cp c13422cp, boolean z) {
        Boolean bool;
        C13633kk.m12390b();
        boolean m12061d = this.f52039a.f51637t.f51529g.m12061d(this.f52033b, C13935dc.f51301X);
        boolean z2 = this.f52040h.zzh;
        boolean z3 = this.f52040h.zzi;
        boolean z4 = this.f52040h.zzj;
        boolean z5 = z2 || z3 || z4;
        if (z && !z5) {
            C13945dm c13945dm = this.f52039a.f51637t.mo11661c().f51403k;
            int i = this.f52034c;
            Integer num = null;
            if (this.f52040h.m13235a()) {
                num = Integer.valueOf(this.f52040h.zze);
            }
            c13945dm.m12090a("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(i), num);
            return true;
        }
        C13370ar m13233b = this.f52040h.m13233b();
        boolean z6 = m13233b.zzg;
        if (c13422cp.m12938b()) {
            if (!m13233b.m13255c()) {
                this.f52039a.f51637t.mo11661c().f51398f.m12091a("No number filter for long property. property", this.f52039a.f51637t.m11987h().m12093c(c13422cp.zzf));
                bool = null;
            } else {
                bool = m11540a(m11541a(c13422cp.zzh, m13233b.m13254d()), z6);
            }
        } else if (!c13422cp.m12934c()) {
            if (!((c13422cp.zza & 4) != 0)) {
                this.f52039a.f51637t.mo11661c().f51398f.m12091a("User property has no value, property", this.f52039a.f51637t.m11987h().m12093c(c13422cp.zzf));
                bool = null;
            } else if (m13233b.m13258a()) {
                bool = m11540a(m11537a(c13422cp.zzg, m13233b.m13256b(), this.f52039a.f51637t.mo11661c()), z6);
            } else if (!m13233b.m13255c()) {
                this.f52039a.f51637t.mo11661c().f51398f.m12091a("No string or number filter defined. property", this.f52039a.f51637t.m11987h().m12093c(c13422cp.zzf));
                bool = null;
            } else if (C14112jq.m11629a(c13422cp.zzg)) {
                bool = m11540a(m11539a(c13422cp.zzg, m13233b.m13254d()), z6);
            } else {
                this.f52039a.f51637t.mo11661c().f51398f.m12090a("Invalid user property value for Numeric number filter. property, value", this.f52039a.f51637t.m11987h().m12093c(c13422cp.zzf), c13422cp.zzg);
                bool = null;
            }
        } else if (!m13233b.m13255c()) {
            this.f52039a.f51637t.mo11661c().f51398f.m12091a("No number filter for double property. property", this.f52039a.f51637t.m11987h().m12093c(c13422cp.zzf));
            bool = null;
        } else {
            bool = m11540a(m11542a(c13422cp.zzj, m13233b.m13254d()), z6);
        }
        this.f52039a.f51637t.mo11661c().f51403k.m12091a("Property filter result", bool == null ? JsonReaderKt.NULL : bool);
        if (bool == null) {
            return false;
        }
        this.f52035d = Boolean.TRUE;
        if (z4 && !bool.booleanValue()) {
            return true;
        }
        if (!z || this.f52040h.zzh) {
            this.f52036e = bool;
        }
        if (!bool.booleanValue() || !z5 || !c13422cp.m12943a()) {
            return true;
        }
        char c = c13422cp.zze;
        if (l != null) {
            c = l.longValue();
        }
        char c2 = c;
        if (m12061d) {
            c2 = c;
            if (this.f52040h.zzh) {
                c2 = c;
                if (!this.f52040h.zzi) {
                    c2 = c;
                    if (l2 != null) {
                        c2 = l2.longValue();
                    }
                }
            }
        }
        if (this.f52040h.zzi) {
            this.f52038g = Long.valueOf(c2);
            return true;
        }
        this.f52037f = Long.valueOf(c2);
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14130kh
    /* renamed from: b */
    public final boolean mo11533b() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14130kh
    /* renamed from: c */
    public final boolean mo11532c() {
        return false;
    }
}
