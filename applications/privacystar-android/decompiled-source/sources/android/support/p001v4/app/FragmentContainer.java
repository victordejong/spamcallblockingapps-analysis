package android.support.p001v4.app;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.view.View;
/* renamed from: android.support.v4.app.FragmentContainer */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/FragmentContainer.class */
public abstract class FragmentContainer {
    public Fragment instantiate(Context context, String str, Bundle bundle) {
        return Fragment.instantiate(context, str, bundle);
    }

    @Nullable
    public abstract View onFindViewById(@IdRes int i);

    public abstract boolean onHasView();
}
