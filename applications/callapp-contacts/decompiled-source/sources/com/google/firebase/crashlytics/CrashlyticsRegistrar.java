package com.google.firebase.crashlytics;

import com.google.firebase.analytics.connector.a;
import com.google.firebase.b;
import com.google.firebase.components.e;
import com.google.firebase.components.i;
import com.google.firebase.components.r;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.f.g;
import com.google.firebase.installations.h;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/CrashlyticsRegistrar.class */
public class CrashlyticsRegistrar implements i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ FirebaseCrashlytics access$lambda$0(CrashlyticsRegistrar crashlyticsRegistrar, e eVar) {
        return crashlyticsRegistrar.buildCrashlytics(eVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FirebaseCrashlytics buildCrashlytics(e eVar) {
        return FirebaseCrashlytics.init((b) eVar.a(b.class), (h) eVar.a(h.class), (CrashlyticsNativeComponent) eVar.a(CrashlyticsNativeComponent.class), (a) eVar.a(a.class));
    }

    @Override // com.google.firebase.components.i
    public List<com.google.firebase.components.b<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.b.a(FirebaseCrashlytics.class).a(r.b(b.class)).a(r.b(h.class)).a(r.a(a.class)).a(r.a(CrashlyticsNativeComponent.class)).a(CrashlyticsRegistrar$$Lambda$1.lambdaFactory$(this)).a(2).a(), g.a("fire-cls", BuildConfig.VERSION_NAME));
    }
}
