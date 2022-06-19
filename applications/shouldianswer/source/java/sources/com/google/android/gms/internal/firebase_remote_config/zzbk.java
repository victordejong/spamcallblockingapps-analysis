package com.google.android.gms.internal.firebase_remote_config;

import java.io.EOFException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbk.class */
public final class zzbk extends zzba {
    private final zzbf zzdv;
    private final zzfj zzdy;
    private List<String> zzdz = new ArrayList();
    private zzbg zzea;
    private String zzeb;

    public zzbk(zzbf zzbfVar, zzfj zzfjVar) {
        this.zzdv = zzbfVar;
        this.zzdy = zzfjVar;
        zzfjVar.setLenient(true);
    }

    private final void zzbr() {
        if (this.zzea == zzbg.VALUE_NUMBER_INT || this.zzea == zzbg.VALUE_NUMBER_FLOAT) {
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final void close() {
        this.zzdy.close();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final int getIntValue() {
        zzbr();
        return Integer.parseInt(this.zzeb);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final String getText() {
        return this.zzeb;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final zzaw zzay() {
        return this.zzdv;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final zzbg zzaz() {
        zzfl zzflVar;
        if (this.zzea != null) {
            int i = zzbj.zzdg[this.zzea.ordinal()];
            if (i == 1) {
                this.zzdy.beginArray();
                this.zzdz.add(null);
            } else if (i == 2) {
                this.zzdy.beginObject();
                this.zzdz.add(null);
            }
        }
        try {
            zzflVar = this.zzdy.zzdy();
        } catch (EOFException e) {
            zzflVar = zzfl.END_DOCUMENT;
        }
        switch (zzbj.zzdx[zzflVar.ordinal()]) {
            case 1:
                this.zzeb = "[";
                this.zzea = zzbg.START_ARRAY;
                break;
            case 2:
                this.zzeb = "]";
                this.zzea = zzbg.END_ARRAY;
                List<String> list = this.zzdz;
                list.remove(list.size() - 1);
                this.zzdy.endArray();
                break;
            case 3:
                this.zzeb = "{";
                this.zzea = zzbg.START_OBJECT;
                break;
            case 4:
                this.zzeb = "}";
                this.zzea = zzbg.END_OBJECT;
                List<String> list2 = this.zzdz;
                list2.remove(list2.size() - 1);
                this.zzdy.endObject();
                break;
            case 5:
                if (!this.zzdy.nextBoolean()) {
                    this.zzeb = "false";
                    this.zzea = zzbg.VALUE_FALSE;
                    break;
                } else {
                    this.zzeb = "true";
                    this.zzea = zzbg.VALUE_TRUE;
                    break;
                }
            case 6:
                this.zzeb = "null";
                this.zzea = zzbg.VALUE_NULL;
                this.zzdy.nextNull();
                break;
            case 7:
                this.zzeb = this.zzdy.nextString();
                this.zzea = zzbg.VALUE_STRING;
                break;
            case 8:
                this.zzeb = this.zzdy.nextString();
                this.zzea = this.zzeb.indexOf(46) == -1 ? zzbg.VALUE_NUMBER_INT : zzbg.VALUE_NUMBER_FLOAT;
                break;
            case 9:
                this.zzeb = this.zzdy.nextName();
                this.zzea = zzbg.FIELD_NAME;
                List<String> list3 = this.zzdz;
                list3.set(list3.size() - 1, this.zzeb);
                break;
            default:
                this.zzeb = null;
                this.zzea = null;
                break;
        }
        return this.zzea;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final zzbg zzba() {
        return this.zzea;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final String zzbb() {
        if (this.zzdz.isEmpty()) {
            return null;
        }
        List<String> list = this.zzdz;
        return list.get(list.size() - 1);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final zzba zzbc() {
        if (this.zzea != null) {
            int i = zzbj.zzdg[this.zzea.ordinal()];
            if (i == 1) {
                this.zzdy.skipValue();
                this.zzeb = "]";
                this.zzea = zzbg.END_ARRAY;
            } else if (i == 2) {
                this.zzdy.skipValue();
                this.zzeb = "}";
                this.zzea = zzbg.END_OBJECT;
            }
        }
        return this;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final byte zzbd() {
        zzbr();
        return Byte.parseByte(this.zzeb);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final short zzbe() {
        zzbr();
        return Short.parseShort(this.zzeb);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final float zzbf() {
        zzbr();
        return Float.parseFloat(this.zzeb);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final long zzbg() {
        zzbr();
        return Long.parseLong(this.zzeb);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final double zzbh() {
        zzbr();
        return Double.parseDouble(this.zzeb);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final BigInteger zzbi() {
        zzbr();
        return new BigInteger(this.zzeb);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzba
    public final BigDecimal zzbj() {
        zzbr();
        return new BigDecimal(this.zzeb);
    }
}
