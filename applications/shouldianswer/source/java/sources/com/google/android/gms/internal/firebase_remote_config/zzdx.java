package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzdx.class */
abstract class zzdx extends zzdi<String> {
    private int limit;
    private final zzdj zzhg;
    final CharSequence zzhl;
    private int offset = 0;
    private final boolean zzhh = false;

    public zzdx(zzds zzdsVar, CharSequence charSequence) {
        zzdj zzdjVar;
        int i;
        zzdjVar = zzdsVar.zzhg;
        this.zzhg = zzdjVar;
        i = zzdsVar.limit;
        this.limit = i;
        this.zzhl = charSequence;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzdi
    protected final /* synthetic */ String zzcg() {
        int i;
        int i2;
        int i3;
        int i4 = this.offset;
        while (true) {
            int i5 = this.offset;
            if (i5 == -1) {
                zzch();
                return null;
            }
            int zzk = zzk(i5);
            if (zzk == -1) {
                zzk = this.zzhl.length();
                this.offset = -1;
            } else {
                this.offset = zzl(zzk);
            }
            int i6 = this.offset;
            i = i4;
            if (i6 == i4) {
                this.offset = i6 + 1;
                if (this.offset > this.zzhl.length()) {
                    this.offset = -1;
                }
            } else {
                while (true) {
                    i2 = zzk;
                    if (i >= zzk) {
                        break;
                    }
                    i2 = zzk;
                    if (!this.zzhg.zzb(this.zzhl.charAt(i))) {
                        break;
                    }
                    i++;
                }
                while (i2 > i && this.zzhg.zzb(this.zzhl.charAt(i2 - 1))) {
                    i2--;
                }
                if (!this.zzhh || i != i2) {
                    break;
                }
                i4 = this.offset;
            }
        }
        int i7 = this.limit;
        if (i7 == 1) {
            int length = this.zzhl.length();
            this.offset = -1;
            while (true) {
                i3 = length;
                if (length <= i) {
                    break;
                }
                i3 = length;
                if (!this.zzhg.zzb(this.zzhl.charAt(length - 1))) {
                    break;
                }
                length--;
            }
        } else {
            this.limit = i7 - 1;
            i3 = i2;
        }
        return this.zzhl.subSequence(i, i3).toString();
    }

    abstract int zzk(int i);

    abstract int zzl(int i);
}
