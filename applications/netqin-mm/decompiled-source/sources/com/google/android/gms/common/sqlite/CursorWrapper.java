package com.google.android.gms.common.sqlite;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/sqlite/CursorWrapper.class */
public class CursorWrapper extends android.database.CursorWrapper implements CrossProcessCursor {

    /* renamed from: a */
    public AbstractWindowedCursor f23539a;

    @Override // android.database.CrossProcessCursor
    @KeepForSdk
    public void fillWindow(int i, CursorWindow cursorWindow) {
        this.f23539a.fillWindow(i, cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    @KeepForSdk
    public CursorWindow getWindow() {
        return this.f23539a.getWindow();
    }

    @Override // android.database.CursorWrapper
    public /* synthetic */ Cursor getWrappedCursor() {
        return this.f23539a;
    }

    @Override // android.database.CrossProcessCursor
    public boolean onMove(int i, int i2) {
        return this.f23539a.onMove(i, i2);
    }
}
