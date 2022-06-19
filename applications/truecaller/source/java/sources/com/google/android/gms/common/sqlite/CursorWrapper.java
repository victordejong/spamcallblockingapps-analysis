package com.google.android.gms.common.sqlite;

import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/sqlite/CursorWrapper.class */
public class CursorWrapper extends android.database.CursorWrapper implements CrossProcessCursor {
    @Override // android.database.CrossProcessCursor
    @KeepForSdk
    public void fillWindow(int i, CursorWindow cursorWindow) {
        throw null;
    }

    @Override // android.database.CrossProcessCursor
    @KeepForSdk
    public CursorWindow getWindow() {
        throw null;
    }

    @Override // android.database.CursorWrapper
    public final /* synthetic */ Cursor getWrappedCursor() {
        return null;
    }

    @Override // android.database.CrossProcessCursor
    public final boolean onMove(int i, int i2) {
        throw null;
    }
}
