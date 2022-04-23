package com.google.firebase.crashlytics.internal.breadcrumbs;

import androidx.annotation.Nullable;
import com.google.firebase.crashlytics.internal.Logger;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/breadcrumbs/DisabledBreadcrumbSource.class */
public class DisabledBreadcrumbSource implements BreadcrumbSource {
    @Override // com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource
    public void registerBreadcrumbHandler(@Nullable BreadcrumbHandler breadcrumbHandler) {
        Logger.getLogger().m8450d("Could not register handler for breadcrumbs events.");
    }
}
