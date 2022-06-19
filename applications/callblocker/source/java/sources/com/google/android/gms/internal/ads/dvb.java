package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvb.class */
public final class dvb implements Comparator<dup> {
    public dvb(duy duyVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(dup dupVar, dup dupVar2) {
        int i;
        dup dupVar3 = dupVar;
        dup dupVar4 = dupVar2;
        if (dupVar3.m8536b() < dupVar4.m8536b()) {
            i = -1;
        } else if (dupVar3.m8536b() > dupVar4.m8536b()) {
            i = 1;
        } else {
            i = -1;
            if (dupVar3.m8537a() >= dupVar4.m8537a()) {
                if (dupVar3.m8537a() > dupVar4.m8537a()) {
                    i = 1;
                } else {
                    float m8534d = (dupVar3.m8534d() - dupVar3.m8536b()) * (dupVar3.m8535c() - dupVar3.m8537a());
                    float m8534d2 = (dupVar4.m8534d() - dupVar4.m8536b()) * (dupVar4.m8535c() - dupVar4.m8537a());
                    i = -1;
                    if (m8534d <= m8534d2) {
                        i = m8534d < m8534d2 ? 1 : 0;
                    }
                }
            }
        }
        return i;
    }
}
