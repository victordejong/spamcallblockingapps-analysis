package androidx.core.database;

import android.database.CursorWindow;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/core/database/CursorWindowCompat.class */
public final class CursorWindowCompat {
    @NonNull
    public static CursorWindow create(@Nullable String str, long j) {
        int i = Build.VERSION.SDK_INT;
        return i >= 28 ? new CursorWindow(str, j) : i >= 15 ? new CursorWindow(str) : new CursorWindow(false);
    }
}
