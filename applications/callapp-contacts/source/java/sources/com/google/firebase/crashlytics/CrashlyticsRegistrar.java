package com.google.firebase.crashlytics;

import com.google.firebase.C15601b;
import com.google.firebase.analytics.connector.AbstractC15587a;
import com.google.firebase.components.AbstractC15627e;
import com.google.firebase.components.AbstractC15634i;
import com.google.firebase.components.C15622b;
import com.google.firebase.components.C15648r;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.installations.AbstractC15822h;
import com.google.firebase.p394f.C15751g;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/CrashlyticsRegistrar.class */
public class CrashlyticsRegistrar implements AbstractC15634i {
    public FirebaseCrashlytics buildCrashlytics(AbstractC15627e abstractC15627e) {
        return FirebaseCrashlytics.init((C15601b) abstractC15627e.mo8532a(C15601b.class), (AbstractC15822h) abstractC15627e.mo8532a(AbstractC15822h.class), (CrashlyticsNativeComponent) abstractC15627e.mo8532a(CrashlyticsNativeComponent.class), (AbstractC15587a) abstractC15627e.mo8532a(AbstractC15587a.class));
    }

    @Override // com.google.firebase.components.AbstractC15634i
    public List<C15622b<?>> getComponents() {
        return Arrays.asList(C15622b.m8552a(FirebaseCrashlytics.class).m8544a(C15648r.m8510b(C15601b.class)).m8544a(C15648r.m8510b(AbstractC15822h.class)).m8544a(C15648r.m8512a(AbstractC15587a.class)).m8544a(C15648r.m8512a(CrashlyticsNativeComponent.class)).m8545a(CrashlyticsRegistrar$$Lambda$1.lambdaFactory$(this)).m8546a(2).m8547a(), C15751g.m8457a("fire-cls", BuildConfig.VERSION_NAME));
    }
}
