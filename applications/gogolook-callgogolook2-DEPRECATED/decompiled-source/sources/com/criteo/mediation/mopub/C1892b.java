package com.criteo.mediation.mopub;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.Criteo;
import com.criteo.publisher.CriteoInitException;
import com.mopub.common.MoPub;
import com.mopub.common.privacy.PersonalInfoManager;
/* renamed from: com.criteo.mediation.mopub.b */
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/b.class */
public class C1892b {
    @Nullable

    /* renamed from: a */
    public final PersonalInfoManager f1971a;

    public C1892b() {
        this(MoPub.getPersonalInformationManager());
    }

    @VisibleForTesting
    public C1892b(@Nullable PersonalInfoManager personalInfoManager) {
        this.f1971a = personalInfoManager;
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: a */
    public Criteo.Builder m36072a(@NonNull Context context, @NonNull String str) {
        return new Criteo.Builder((Application) context.getApplicationContext(), str);
    }

    /* renamed from: b */
    public void m36071b(@NonNull Context context, @NonNull String str) {
        Criteo.Builder a = m36072a(context, str);
        PersonalInfoManager personalInfoManager = this.f1971a;
        Criteo criteo = null;
        String name = personalInfoManager == null ? null : personalInfoManager.getPersonalInfoConsentStatus().name();
        try {
            a.mopubConsent(name);
            criteo = a.init();
        } catch (CriteoInitException e) {
        }
        if (criteo != null) {
            criteo.setMopubConsent(name);
        }
    }
}
