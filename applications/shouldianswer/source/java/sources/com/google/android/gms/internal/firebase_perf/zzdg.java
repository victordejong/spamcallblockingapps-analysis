package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdg.class */
public final class zzdg extends zzdi {
    private final int limit;
    private int position = 0;
    private final /* synthetic */ zzdd zzmk;

    public zzdg(zzdd zzddVar) {
        this.zzmk = zzddVar;
        this.limit = this.zzmk.size();
    }

    public final boolean hasNext() {
        return this.position < this.limit;
    }

    public final byte nextByte() {
        int i = this.position;
        if (i < this.limit) {
            this.position = i + 1;
            return this.zzmk.zzr(i);
        }
        throw new NoSuchElementException();
    }
}
