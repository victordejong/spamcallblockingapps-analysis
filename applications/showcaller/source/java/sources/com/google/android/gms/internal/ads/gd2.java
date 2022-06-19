package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gd2.class */
public final class gd2 implements cj3<ab2<JSONObject>> {
    /* renamed from: a */
    public static ab2<JSONObject> m14961a(dh0 dh0Var, eh0 eh0Var, Object obj, sb2 sb2Var, rc2 rc2Var, vi3<mb2> vi3Var, vi3<vb2> vi3Var2, vi3<cc2> vi3Var3, vi3<gc2> vi3Var4, vi3<nc2> vi3Var5, vi3<uc2> vi3Var6, vi3<nd2> vi3Var7, vi3<jd2> vi3Var8, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        HashSet hashSet = new HashSet();
        hashSet.add((kc2) obj);
        hashSet.add(sb2Var);
        hashSet.add(rc2Var);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25639Z3)).booleanValue()) {
            hashSet.add(vi3Var.m9997b());
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25648a4)).booleanValue()) {
            hashSet.add(vi3Var2.m9997b());
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25657b4)).booleanValue()) {
            hashSet.add(vi3Var3.m9997b());
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25666c4)).booleanValue()) {
            hashSet.add(vi3Var4.m9997b());
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25699g4)).booleanValue()) {
            hashSet.add(vi3Var6.m9997b());
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25707h4)).booleanValue()) {
            hashSet.add(vi3Var7.m9997b());
        }
        return new ab2<>(executor, hashSet);
    }
}
