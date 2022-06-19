package com.google.android.gms.internal.ads;

import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cok.class */
public final class cok {

    /* renamed from: a */
    private final String f13440a;

    /* renamed from: b */
    private final coj f13441b;

    /* renamed from: c */
    private coj f13442c;

    /* renamed from: d */
    private boolean f13443d;

    /* JADX INFO: Access modifiers changed from: private */
    public cok(String str) {
        this.f13441b = new coj();
        this.f13442c = this.f13441b;
        this.f13443d = false;
        this.f13440a = (String) cor.m10936a(str);
    }

    /* renamed from: a */
    public final cok m10946a(@NullableDecl Object obj) {
        coj cojVar = new coj();
        this.f13442c.f13439b = cojVar;
        this.f13442c = cojVar;
        cojVar.f13438a = obj;
        return this;
    }

    public final String toString() {
        String str = "";
        StringBuilder append = new StringBuilder(32).append(this.f13440a).append('{');
        coj cojVar = this.f13441b.f13439b;
        while (true) {
            coj cojVar2 = cojVar;
            if (cojVar2 != null) {
                Object obj = cojVar2.f13438a;
                append.append(str);
                str = ", ";
                if (obj == null || !obj.getClass().isArray()) {
                    append.append(obj);
                } else {
                    String deepToString = Arrays.deepToString(new Object[]{obj});
                    append.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                }
                cojVar = cojVar2.f13439b;
            } else {
                return append.append('}').toString();
            }
        }
    }
}
