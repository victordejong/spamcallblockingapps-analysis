package com.google.firebase.crashlytics.internal.breadcrumbs;

import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbSource.class */
public interface BreadcrumbSource {
    void registerBreadcrumbHandler(@Nullable BreadcrumbHandler breadcrumbHandler);
}
