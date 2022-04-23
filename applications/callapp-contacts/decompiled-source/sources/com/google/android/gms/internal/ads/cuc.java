package com.google.android.gms.internal.ads;

import java.io.File;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuc.class */
final class cuc implements cwu {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ cux f26403a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cuc(csa csaVar, cux cuxVar) {
        this.f26403a = cuxVar;
    }

    @Override // com.google.android.gms.internal.ads.cwu
    public final boolean a(File file) {
        try {
            return this.f26403a.a(file);
        } catch (GeneralSecurityException e) {
            return false;
        }
    }
}
