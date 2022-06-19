package com.google.android.gms.internal.ads;

import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcco.class */
public final class zzcco {
    public static final zzcco zzgfe = new zzccq().zzaor();
    private final zzafs zzgex;
    private final zzafr zzgey;
    private final zzagg zzgez;
    private final zzagf zzgfa;
    private final zzakb zzgfb;
    private final h4<String, zzafy> zzgfc;
    private final h4<String, zzafx> zzgfd;

    /* JADX INFO: Access modifiers changed from: private */
    public zzcco(zzccq zzccqVar) {
        this.zzgex = zzccqVar.zzgex;
        this.zzgey = zzccqVar.zzgey;
        this.zzgez = zzccqVar.zzgez;
        this.zzgfc = new h4<>(zzccqVar.zzgfc);
        this.zzgfd = new h4<>(zzccqVar.zzgfd);
        this.zzgfa = zzccqVar.zzgfa;
        this.zzgfb = zzccqVar.zzgfb;
    }

    public final zzafs zzaoj() {
        return this.zzgex;
    }

    public final zzafr zzaok() {
        return this.zzgey;
    }

    public final zzagg zzaol() {
        return this.zzgez;
    }

    public final zzagf zzaom() {
        return this.zzgfa;
    }

    public final zzakb zzaon() {
        return this.zzgfb;
    }

    public final ArrayList<String> zzaoo() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.zzgez != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.zzgex != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.zzgey != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.zzgfc.size() > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.zzgfb != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    public final ArrayList<String> zzaop() {
        ArrayList<String> arrayList = new ArrayList<>(this.zzgfc.size());
        for (int i = 0; i < this.zzgfc.size(); i++) {
            arrayList.add((String) this.zzgfc.i(i));
        }
        return arrayList;
    }

    public final zzafy zzga(String str) {
        return (zzafy) this.zzgfc.get(str);
    }

    public final zzafx zzgb(String str) {
        return (zzafx) this.zzgfd.get(str);
    }
}
