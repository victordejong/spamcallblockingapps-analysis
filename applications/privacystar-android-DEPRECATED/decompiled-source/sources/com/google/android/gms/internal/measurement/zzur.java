package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzur.class */
public final class zzur implements zzxi {
    private int tag;
    private final zzuo zzbur;
    private int zzbus;
    private int zzbut = 0;

    private zzur(zzuo zzuoVar) {
        this.zzbur = (zzuo) zzvo.zza(zzuoVar, "input");
        this.zzbur.zzbuk = this;
    }

    public static zzur zza(zzuo zzuoVar) {
        return zzuoVar.zzbuk != null ? zzuoVar.zzbuk : new zzur(zzuoVar);
    }

    private final Object zza(zzyq zzyqVar, Class<?> cls, zzuz zzuzVar) throws IOException {
        switch (zzus.zzbuu[zzyqVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzum());
            case 2:
                return zzuo();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(zzuq());
            case 5:
                return Integer.valueOf(zzul());
            case 6:
                return Long.valueOf(zzuk());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(zzuj());
            case 9:
                return Long.valueOf(zzui());
            case 10:
                zzat(2);
                return zzc(zzxf.zzxn().zzi(cls), zzuzVar);
            case 11:
                return Integer.valueOf(zzur());
            case 12:
                return Long.valueOf(zzus());
            case 13:
                return Integer.valueOf(zzut());
            case 14:
                return Long.valueOf(zzuu());
            case 15:
                return zzun();
            case 16:
                return Integer.valueOf(zzup());
            case 17:
                return Long.valueOf(zzuh());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private final void zza(List<String> list, boolean z) throws IOException {
        int zzug;
        int zzug2;
        if ((this.tag & 7) != 2) {
            throw zzvt.zzwo();
        } else if (!(list instanceof zzwc) || z) {
            do {
                list.add(z ? zzun() : readString());
                if (!this.zzbur.zzuw()) {
                    zzug = this.zzbur.zzug();
                } else {
                    return;
                }
            } while (zzug == this.tag);
            this.zzbut = zzug;
        } else {
            zzwc zzwcVar = (zzwc) list;
            do {
                zzwcVar.zzc(zzuo());
                if (!this.zzbur.zzuw()) {
                    zzug2 = this.zzbur.zzug();
                } else {
                    return;
                }
            } while (zzug2 == this.tag);
            this.zzbut = zzug2;
        }
    }

    private final void zzat(int i) throws IOException {
        if ((this.tag & 7) != i) {
            throw zzvt.zzwo();
        }
    }

    private static void zzau(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzvt.zzwq();
        }
    }

    private static void zzav(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzvt.zzwq();
        }
    }

    private final void zzaw(int i) throws IOException {
        if (this.zzbur.zzux() != i) {
            throw zzvt.zzwk();
        }
    }

    private final <T> T zzc(zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        int zzup = this.zzbur.zzup();
        if (this.zzbur.zzbuh >= this.zzbur.zzbui) {
            throw zzvt.zzwp();
        }
        int zzaq = this.zzbur.zzaq(zzup);
        T newInstance = zzxjVar.newInstance();
        this.zzbur.zzbuh++;
        zzxjVar.zza(newInstance, this, zzuzVar);
        zzxjVar.zzu(newInstance);
        this.zzbur.zzan(0);
        this.zzbur.zzbuh--;
        this.zzbur.zzar(zzaq);
        return newInstance;
    }

    private final <T> T zzd(zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        int i = this.zzbus;
        this.zzbus = ((this.tag >>> 3) << 3) | 4;
        try {
            T newInstance = zzxjVar.newInstance();
            zzxjVar.zza(newInstance, this, zzuzVar);
            zzxjVar.zzu(newInstance);
            if (this.tag == this.zzbus) {
                return newInstance;
            }
            throw zzvt.zzwq();
        } finally {
            this.zzbus = i;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int getTag() {
        return this.tag;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final double readDouble() throws IOException {
        zzat(1);
        return this.zzbur.readDouble();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final float readFloat() throws IOException {
        zzat(5);
        return this.zzbur.readFloat();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final String readString() throws IOException {
        zzat(2);
        return this.zzbur.readString();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void readStringList(List<String> list) throws IOException {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final <T> T zza(zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        zzat(2);
        return (T) zzc(zzxjVar, zzuzVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzxi
    public final <T> void zza(List<T> list, zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        int zzug;
        if ((this.tag & 7) != 2) {
            throw zzvt.zzwo();
        }
        int i = this.tag;
        do {
            list.add(zzc(zzxjVar, zzuzVar));
            if (!this.zzbur.zzuw() && this.zzbut == 0) {
                zzug = this.zzbur.zzug();
            } else {
                return;
            }
        } while (zzug == i);
        this.zzbut = zzug;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzxi
    public final <K, V> void zza(Map<K, V> map, zzwm<K, V> zzwmVar, zzuz zzuzVar) throws IOException {
        zzat(2);
        int zzaq = this.zzbur.zzaq(this.zzbur.zzup());
        Object obj = zzwmVar.zzcas;
        Object obj2 = zzwmVar.zzbre;
        while (true) {
            try {
                int zzve = zzve();
                if (zzve != Integer.MAX_VALUE && !this.zzbur.zzuw()) {
                    switch (zzve) {
                        case 1:
                            obj = zza(zzwmVar.zzcar, (Class<?>) null, (zzuz) null);
                            obj2 = obj2;
                            break;
                        case 2:
                            obj2 = zza(zzwmVar.zzcat, zzwmVar.zzbre.getClass(), zzuzVar);
                            obj = obj;
                            break;
                        default:
                            try {
                                obj = obj;
                                obj2 = obj2;
                                if (!zzvf()) {
                                    throw new zzvt("Unable to parse map entry.");
                                    break;
                                } else {
                                    continue;
                                }
                            } catch (zzvu e) {
                                obj = obj;
                                obj2 = obj2;
                                if (zzvf()) {
                                    break;
                                } else {
                                    throw new zzvt("Unable to parse map entry.");
                                }
                            }
                    }
                }
            } finally {
                this.zzbur.zzar(zzaq);
            }
        }
        map.put(obj, obj2);
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final <T> T zzb(zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        zzat(3);
        return (T) zzd(zzxjVar, zzuzVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzxi
    public final <T> void zzb(List<T> list, zzxj<T> zzxjVar, zzuz zzuzVar) throws IOException {
        int zzug;
        if ((this.tag & 7) != 3) {
            throw zzvt.zzwo();
        }
        int i = this.tag;
        do {
            list.add(zzd(zzxjVar, zzuzVar));
            if (!this.zzbur.zzuw() && this.zzbut == 0) {
                zzug = this.zzbur.zzug();
            } else {
                return;
            }
        } while (zzug == i);
        this.zzbut = zzug;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzh(List<Double> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzuw) {
            zzuw zzuwVar = (zzuw) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int zzup = this.zzbur.zzup();
                    zzau(zzup);
                    int zzux = this.zzbur.zzux();
                    do {
                        zzuwVar.zzd(this.zzbur.readDouble());
                    } while (this.zzbur.zzux() < zzux + zzup);
                    return;
                default:
                    throw zzvt.zzwo();
            }
            do {
                zzuwVar.zzd(this.zzbur.readDouble());
                if (!this.zzbur.zzuw()) {
                    zzug2 = this.zzbur.zzug();
                } else {
                    return;
                }
            } while (zzug2 == this.tag);
            this.zzbut = zzug2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int zzup2 = this.zzbur.zzup();
                zzau(zzup2);
                int zzux2 = this.zzbur.zzux();
                do {
                    list.add(Double.valueOf(this.zzbur.readDouble()));
                } while (this.zzbur.zzux() < zzux2 + zzup2);
                return;
            default:
                throw zzvt.zzwo();
        }
        do {
            list.add(Double.valueOf(this.zzbur.readDouble()));
            if (!this.zzbur.zzuw()) {
                zzug = this.zzbur.zzug();
            } else {
                return;
            }
        } while (zzug == this.tag);
        this.zzbut = zzug;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzi(List<Float> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzvj) {
            zzvj zzvjVar = (zzvj) list;
            int i = this.tag & 7;
            if (i == 2) {
                int zzup = this.zzbur.zzup();
                zzav(zzup);
                int zzux = this.zzbur.zzux();
                do {
                    zzvjVar.zzc(this.zzbur.readFloat());
                } while (this.zzbur.zzux() < zzux + zzup);
            } else if (i != 5) {
                throw zzvt.zzwo();
            } else {
                do {
                    zzvjVar.zzc(this.zzbur.readFloat());
                    if (!this.zzbur.zzuw()) {
                        zzug2 = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug2 == this.tag);
                this.zzbut = zzug2;
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int zzup2 = this.zzbur.zzup();
                zzav(zzup2);
                int zzux2 = this.zzbur.zzux();
                do {
                    list.add(Float.valueOf(this.zzbur.readFloat()));
                } while (this.zzbur.zzux() < zzux2 + zzup2);
            } else if (i2 != 5) {
                throw zzvt.zzwo();
            } else {
                do {
                    list.add(Float.valueOf(this.zzbur.readFloat()));
                    if (!this.zzbur.zzuw()) {
                        zzug = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug == this.tag);
                this.zzbut = zzug;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzj(List<Long> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzwh) {
            zzwh zzwhVar = (zzwh) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzwhVar.zzbg(this.zzbur.zzuh());
                    if (!this.zzbur.zzuw()) {
                        zzug2 = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug2 == this.tag);
                this.zzbut = zzug2;
            } else if (i != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzwhVar.zzbg(this.zzbur.zzuh());
                } while (this.zzbur.zzux() < zzux);
                zzaw(zzux);
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzbur.zzuh()));
                    if (!this.zzbur.zzuw()) {
                        zzug = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug == this.tag);
                this.zzbut = zzug;
            } else if (i2 != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux2 = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    list.add(Long.valueOf(this.zzbur.zzuh()));
                } while (this.zzbur.zzux() < zzux2);
                zzaw(zzux2);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzk(List<Long> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzwh) {
            zzwh zzwhVar = (zzwh) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzwhVar.zzbg(this.zzbur.zzui());
                    if (!this.zzbur.zzuw()) {
                        zzug2 = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug2 == this.tag);
                this.zzbut = zzug2;
            } else if (i != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzwhVar.zzbg(this.zzbur.zzui());
                } while (this.zzbur.zzux() < zzux);
                zzaw(zzux);
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzbur.zzui()));
                    if (!this.zzbur.zzuw()) {
                        zzug = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug == this.tag);
                this.zzbut = zzug;
            } else if (i2 != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux2 = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    list.add(Long.valueOf(this.zzbur.zzui()));
                } while (this.zzbur.zzux() < zzux2);
                zzaw(zzux2);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzl(List<Integer> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvnVar.zzbm(this.zzbur.zzuj());
                    if (!this.zzbur.zzuw()) {
                        zzug2 = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug2 == this.tag);
                this.zzbut = zzug2;
            } else if (i != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzvnVar.zzbm(this.zzbur.zzuj());
                } while (this.zzbur.zzux() < zzux);
                zzaw(zzux);
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzbur.zzuj()));
                    if (!this.zzbur.zzuw()) {
                        zzug = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug == this.tag);
                this.zzbut = zzug;
            } else if (i2 != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux2 = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    list.add(Integer.valueOf(this.zzbur.zzuj()));
                } while (this.zzbur.zzux() < zzux2);
                zzaw(zzux2);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzm(List<Long> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzwh) {
            zzwh zzwhVar = (zzwh) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int zzup = this.zzbur.zzup();
                    zzau(zzup);
                    int zzux = this.zzbur.zzux();
                    do {
                        zzwhVar.zzbg(this.zzbur.zzuk());
                    } while (this.zzbur.zzux() < zzux + zzup);
                    return;
                default:
                    throw zzvt.zzwo();
            }
            do {
                zzwhVar.zzbg(this.zzbur.zzuk());
                if (!this.zzbur.zzuw()) {
                    zzug2 = this.zzbur.zzug();
                } else {
                    return;
                }
            } while (zzug2 == this.tag);
            this.zzbut = zzug2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int zzup2 = this.zzbur.zzup();
                zzau(zzup2);
                int zzux2 = this.zzbur.zzux();
                do {
                    list.add(Long.valueOf(this.zzbur.zzuk()));
                } while (this.zzbur.zzux() < zzux2 + zzup2);
                return;
            default:
                throw zzvt.zzwo();
        }
        do {
            list.add(Long.valueOf(this.zzbur.zzuk()));
            if (!this.zzbur.zzuw()) {
                zzug = this.zzbur.zzug();
            } else {
                return;
            }
        } while (zzug == this.tag);
        this.zzbut = zzug;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzn(List<Integer> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 2) {
                int zzup = this.zzbur.zzup();
                zzav(zzup);
                int zzux = this.zzbur.zzux();
                do {
                    zzvnVar.zzbm(this.zzbur.zzul());
                } while (this.zzbur.zzux() < zzux + zzup);
            } else if (i != 5) {
                throw zzvt.zzwo();
            } else {
                do {
                    zzvnVar.zzbm(this.zzbur.zzul());
                    if (!this.zzbur.zzuw()) {
                        zzug2 = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug2 == this.tag);
                this.zzbut = zzug2;
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int zzup2 = this.zzbur.zzup();
                zzav(zzup2);
                int zzux2 = this.zzbur.zzux();
                do {
                    list.add(Integer.valueOf(this.zzbur.zzul()));
                } while (this.zzbur.zzux() < zzux2 + zzup2);
            } else if (i2 != 5) {
                throw zzvt.zzwo();
            } else {
                do {
                    list.add(Integer.valueOf(this.zzbur.zzul()));
                    if (!this.zzbur.zzuw()) {
                        zzug = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug == this.tag);
                this.zzbut = zzug;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzo(List<Boolean> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzub) {
            zzub zzubVar = (zzub) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzubVar.addBoolean(this.zzbur.zzum());
                    if (!this.zzbur.zzuw()) {
                        zzug2 = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug2 == this.tag);
                this.zzbut = zzug2;
            } else if (i != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzubVar.addBoolean(this.zzbur.zzum());
                } while (this.zzbur.zzux() < zzux);
                zzaw(zzux);
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Boolean.valueOf(this.zzbur.zzum()));
                    if (!this.zzbur.zzuw()) {
                        zzug = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug == this.tag);
                this.zzbut = zzug;
            } else if (i2 != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux2 = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    list.add(Boolean.valueOf(this.zzbur.zzum()));
                } while (this.zzbur.zzux() < zzux2);
                zzaw(zzux2);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzp(List<String> list) throws IOException {
        zza(list, true);
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzq(List<zzud> list) throws IOException {
        int zzug;
        if ((this.tag & 7) != 2) {
            throw zzvt.zzwo();
        }
        do {
            list.add(zzuo());
            if (!this.zzbur.zzuw()) {
                zzug = this.zzbur.zzug();
            } else {
                return;
            }
        } while (zzug == this.tag);
        this.zzbut = zzug;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzr(List<Integer> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvnVar.zzbm(this.zzbur.zzup());
                    if (!this.zzbur.zzuw()) {
                        zzug2 = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug2 == this.tag);
                this.zzbut = zzug2;
            } else if (i != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzvnVar.zzbm(this.zzbur.zzup());
                } while (this.zzbur.zzux() < zzux);
                zzaw(zzux);
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzbur.zzup()));
                    if (!this.zzbur.zzuw()) {
                        zzug = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug == this.tag);
                this.zzbut = zzug;
            } else if (i2 != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux2 = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    list.add(Integer.valueOf(this.zzbur.zzup()));
                } while (this.zzbur.zzux() < zzux2);
                zzaw(zzux2);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzs(List<Integer> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvnVar.zzbm(this.zzbur.zzuq());
                    if (!this.zzbur.zzuw()) {
                        zzug2 = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug2 == this.tag);
                this.zzbut = zzug2;
            } else if (i != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzvnVar.zzbm(this.zzbur.zzuq());
                } while (this.zzbur.zzux() < zzux);
                zzaw(zzux);
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzbur.zzuq()));
                    if (!this.zzbur.zzuw()) {
                        zzug = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug == this.tag);
                this.zzbut = zzug;
            } else if (i2 != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux2 = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    list.add(Integer.valueOf(this.zzbur.zzuq()));
                } while (this.zzbur.zzux() < zzux2);
                zzaw(zzux2);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzt(List<Integer> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 2) {
                int zzup = this.zzbur.zzup();
                zzav(zzup);
                int zzux = this.zzbur.zzux();
                do {
                    zzvnVar.zzbm(this.zzbur.zzur());
                } while (this.zzbur.zzux() < zzux + zzup);
            } else if (i != 5) {
                throw zzvt.zzwo();
            } else {
                do {
                    zzvnVar.zzbm(this.zzbur.zzur());
                    if (!this.zzbur.zzuw()) {
                        zzug2 = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug2 == this.tag);
                this.zzbut = zzug2;
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 2) {
                int zzup2 = this.zzbur.zzup();
                zzav(zzup2);
                int zzux2 = this.zzbur.zzux();
                do {
                    list.add(Integer.valueOf(this.zzbur.zzur()));
                } while (this.zzbur.zzux() < zzux2 + zzup2);
            } else if (i2 != 5) {
                throw zzvt.zzwo();
            } else {
                do {
                    list.add(Integer.valueOf(this.zzbur.zzur()));
                    if (!this.zzbur.zzuw()) {
                        zzug = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug == this.tag);
                this.zzbut = zzug;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzu(List<Long> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzwh) {
            zzwh zzwhVar = (zzwh) list;
            switch (this.tag & 7) {
                case 1:
                    break;
                case 2:
                    int zzup = this.zzbur.zzup();
                    zzau(zzup);
                    int zzux = this.zzbur.zzux();
                    do {
                        zzwhVar.zzbg(this.zzbur.zzus());
                    } while (this.zzbur.zzux() < zzux + zzup);
                    return;
                default:
                    throw zzvt.zzwo();
            }
            do {
                zzwhVar.zzbg(this.zzbur.zzus());
                if (!this.zzbur.zzuw()) {
                    zzug2 = this.zzbur.zzug();
                } else {
                    return;
                }
            } while (zzug2 == this.tag);
            this.zzbut = zzug2;
            return;
        }
        switch (this.tag & 7) {
            case 1:
                break;
            case 2:
                int zzup2 = this.zzbur.zzup();
                zzau(zzup2);
                int zzux2 = this.zzbur.zzux();
                do {
                    list.add(Long.valueOf(this.zzbur.zzus()));
                } while (this.zzbur.zzux() < zzux2 + zzup2);
                return;
            default:
                throw zzvt.zzwo();
        }
        do {
            list.add(Long.valueOf(this.zzbur.zzus()));
            if (!this.zzbur.zzuw()) {
                zzug = this.zzbur.zzug();
            } else {
                return;
            }
        } while (zzug == this.tag);
        this.zzbut = zzug;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final long zzuh() throws IOException {
        zzat(0);
        return this.zzbur.zzuh();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final long zzui() throws IOException {
        zzat(0);
        return this.zzbur.zzui();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzuj() throws IOException {
        zzat(0);
        return this.zzbur.zzuj();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final long zzuk() throws IOException {
        zzat(1);
        return this.zzbur.zzuk();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzul() throws IOException {
        zzat(5);
        return this.zzbur.zzul();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final boolean zzum() throws IOException {
        zzat(0);
        return this.zzbur.zzum();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final String zzun() throws IOException {
        zzat(2);
        return this.zzbur.zzun();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final zzud zzuo() throws IOException {
        zzat(2);
        return this.zzbur.zzuo();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzup() throws IOException {
        zzat(0);
        return this.zzbur.zzup();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzuq() throws IOException {
        zzat(0);
        return this.zzbur.zzuq();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzur() throws IOException {
        zzat(5);
        return this.zzbur.zzur();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final long zzus() throws IOException {
        zzat(1);
        return this.zzbur.zzus();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzut() throws IOException {
        zzat(0);
        return this.zzbur.zzut();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final long zzuu() throws IOException {
        zzat(0);
        return this.zzbur.zzuu();
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzv(List<Integer> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzvn) {
            zzvn zzvnVar = (zzvn) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzvnVar.zzbm(this.zzbur.zzut());
                    if (!this.zzbur.zzuw()) {
                        zzug2 = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug2 == this.tag);
                this.zzbut = zzug2;
            } else if (i != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzvnVar.zzbm(this.zzbur.zzut());
                } while (this.zzbur.zzux() < zzux);
                zzaw(zzux);
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Integer.valueOf(this.zzbur.zzut()));
                    if (!this.zzbur.zzuw()) {
                        zzug = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug == this.tag);
                this.zzbut = zzug;
            } else if (i2 != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux2 = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    list.add(Integer.valueOf(this.zzbur.zzut()));
                } while (this.zzbur.zzux() < zzux2);
                zzaw(zzux2);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final int zzve() throws IOException {
        if (this.zzbut != 0) {
            this.tag = this.zzbut;
            this.zzbut = 0;
        } else {
            this.tag = this.zzbur.zzug();
        }
        if (this.tag == 0 || this.tag == this.zzbus) {
            return Integer.MAX_VALUE;
        }
        return this.tag >>> 3;
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final boolean zzvf() throws IOException {
        if (this.zzbur.zzuw() || this.tag == this.zzbus) {
            return false;
        }
        return this.zzbur.zzao(this.tag);
    }

    @Override // com.google.android.gms.internal.measurement.zzxi
    public final void zzw(List<Long> list) throws IOException {
        int zzug;
        int zzug2;
        if (list instanceof zzwh) {
            zzwh zzwhVar = (zzwh) list;
            int i = this.tag & 7;
            if (i == 0) {
                do {
                    zzwhVar.zzbg(this.zzbur.zzuu());
                    if (!this.zzbur.zzuw()) {
                        zzug2 = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug2 == this.tag);
                this.zzbut = zzug2;
            } else if (i != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    zzwhVar.zzbg(this.zzbur.zzuu());
                } while (this.zzbur.zzux() < zzux);
                zzaw(zzux);
            }
        } else {
            int i2 = this.tag & 7;
            if (i2 == 0) {
                do {
                    list.add(Long.valueOf(this.zzbur.zzuu()));
                    if (!this.zzbur.zzuw()) {
                        zzug = this.zzbur.zzug();
                    } else {
                        return;
                    }
                } while (zzug == this.tag);
                this.zzbut = zzug;
            } else if (i2 != 2) {
                throw zzvt.zzwo();
            } else {
                int zzux2 = this.zzbur.zzux() + this.zzbur.zzup();
                do {
                    list.add(Long.valueOf(this.zzbur.zzuu()));
                } while (this.zzbur.zzux() < zzux2);
                zzaw(zzux2);
            }
        }
    }
}
