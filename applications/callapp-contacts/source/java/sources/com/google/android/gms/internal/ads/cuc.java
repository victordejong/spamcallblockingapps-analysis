package com.google.android.gms.internal.ads;

import java.io.File;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuc.class */
public final class cuc implements cwu {

    /* renamed from: a */
    private final /* synthetic */ cux f46552a;

    public cuc(csa csaVar, cux cuxVar) {
        this.f46552a = cuxVar;
    }

    @Override // com.google.android.gms.internal.ads.cwu
    /* renamed from: a */
    public final boolean mo17094a(File file) {
        try {
            return this.f46552a.m17195a(file);
        } catch (GeneralSecurityException e) {
            return false;
        }
    }
}
