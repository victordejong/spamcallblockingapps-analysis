package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentContainer.class */
public abstract class FragmentContainer {
    @NonNull
    @Deprecated
    /* renamed from: a */
    public Fragment m18496a(@NonNull Context context, @NonNull String str, @Nullable Bundle bundle) {
        return Fragment.instantiate(context, str, bundle);
    }

    @Nullable
    /* renamed from: b */
    public abstract View mo18466b(@IdRes int i);

    /* renamed from: c */
    public abstract boolean mo18465c();
}
