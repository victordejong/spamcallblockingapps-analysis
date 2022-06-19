package com.google.firebase.crashlytics.internal.breadcrumbs;

import com.google.firebase.crashlytics.internal.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/breadcrumbs/DisabledBreadcrumbSource.class */
public class DisabledBreadcrumbSource implements BreadcrumbSource {
    @Override // com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource
    public void registerBreadcrumbHandler(BreadcrumbHandler breadcrumbHandler) {
        Logger.getLogger().m8488d("Could not register handler for breadcrumbs events.");
    }
}
