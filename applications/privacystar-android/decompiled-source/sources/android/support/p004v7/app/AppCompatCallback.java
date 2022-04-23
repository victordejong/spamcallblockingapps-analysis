package android.support.p004v7.app;

import android.support.annotation.Nullable;
import android.support.p004v7.view.ActionMode;
/* renamed from: android.support.v7.app.AppCompatCallback */
/* loaded from: classes-dex2jar.jar:android/support/v7/app/AppCompatCallback.class */
public interface AppCompatCallback {
    void onSupportActionModeFinished(ActionMode actionMode);

    void onSupportActionModeStarted(ActionMode actionMode);

    @Nullable
    ActionMode onWindowStartingSupportActionMode(ActionMode.Callback callback);
}
