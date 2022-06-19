package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayn.class */
public final class zzayn {
    private final Clock zzbqg;
    private final String zzdup;
    private final zzayy zzebw;
    private final String zzeby;
    private final Object lock = new Object();
    @GuardedBy("lock")
    private long zzdwc = -1;
    @GuardedBy("lock")
    private long zzebz = -1;
    @GuardedBy("lock")
    private boolean zzdvy = false;
    @GuardedBy("lock")
    private long zzeca = -1;
    @GuardedBy("lock")
    private long zzecb = 0;
    @GuardedBy("lock")
    private long zzecc = -1;
    @GuardedBy("lock")
    private long zzecd = -1;
    @GuardedBy("lock")
    private final LinkedList<zzaym> zzebx = new LinkedList<>();

    public zzayn(Clock clock, zzayy zzayyVar, String str, String str2) {
        this.zzbqg = clock;
        this.zzebw = zzayyVar;
        this.zzeby = str;
        this.zzdup = str2;
    }

    public final Bundle toBundle() {
        Bundle bundle;
        synchronized (this.lock) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.zzeby);
            bundle.putString("slotid", this.zzdup);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.zzecc);
            bundle.putLong("tresponse", this.zzecd);
            bundle.putLong("timp", this.zzebz);
            bundle.putLong("tload", this.zzeca);
            bundle.putLong("pcc", this.zzecb);
            bundle.putLong("tfetch", this.zzdwc);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zzaym> it = this.zzebx.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toBundle());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }

    public final void zzao(boolean z) {
        synchronized (this.lock) {
            if (this.zzecd != -1) {
                this.zzeca = this.zzbqg.elapsedRealtime();
            }
        }
    }

    public final void zze(zzvl zzvlVar) {
        synchronized (this.lock) {
            long elapsedRealtime = this.zzbqg.elapsedRealtime();
            this.zzecc = elapsedRealtime;
            this.zzebw.zza(zzvlVar, elapsedRealtime);
        }
    }

    public final void zzey(long j) {
        synchronized (this.lock) {
            this.zzecd = j;
            if (j != -1) {
                this.zzebw.zzb(this);
            }
        }
    }

    public final void zzxi() {
        synchronized (this.lock) {
            if (this.zzecd != -1 && this.zzebz == -1) {
                this.zzebz = this.zzbqg.elapsedRealtime();
                this.zzebw.zzb(this);
            }
            this.zzebw.zzxi();
        }
    }

    public final void zzxj() {
        synchronized (this.lock) {
            if (this.zzecd != -1) {
                zzaym zzaymVar = new zzaym(this);
                zzaymVar.zzxh();
                this.zzebx.add(zzaymVar);
                this.zzecb++;
                this.zzebw.zzxj();
                this.zzebw.zzb(this);
            }
        }
    }

    public final void zzxk() {
        synchronized (this.lock) {
            if (this.zzecd != -1 && !this.zzebx.isEmpty()) {
                zzaym last = this.zzebx.getLast();
                if (last.zzxf() == -1) {
                    last.zzxg();
                    this.zzebw.zzb(this);
                }
            }
        }
    }

    public final String zzxl() {
        return this.zzeby;
    }
}
