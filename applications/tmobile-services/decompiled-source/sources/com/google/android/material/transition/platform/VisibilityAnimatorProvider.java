package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/VisibilityAnimatorProvider.class */
public interface VisibilityAnimatorProvider {
    @Nullable
    /* renamed from: a */
    Animator mo8454a(@NonNull ViewGroup viewGroup, @NonNull View view);

    @Nullable
    /* renamed from: b */
    Animator mo8453b(@NonNull ViewGroup viewGroup, @NonNull View view);
}
