package com.google.android.gms.common.c;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.CursorWrapper;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/c/a.class */
public final class a extends CursorWrapper implements CrossProcessCursor {

    /* renamed from: a  reason: collision with root package name */
    private AbstractWindowedCursor f22790a;

    public a(Cursor cursor) {
        super(cursor);
        for (int i = 0; i < 10 && (cursor instanceof CursorWrapper); i++) {
            cursor = ((CursorWrapper) cursor).getWrappedCursor();
        }
        if (!(cursor instanceof AbstractWindowedCursor)) {
            String valueOf = String.valueOf(cursor.getClass().getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown type: ".concat(valueOf) : new String("Unknown type: "));
        }
        this.f22790a = (AbstractWindowedCursor) cursor;
    }

    public final void a() {
        this.f22790a.setWindow(null);
    }

    @Override // android.database.CrossProcessCursor
    public final void fillWindow(int i, CursorWindow cursorWindow) {
        this.f22790a.fillWindow(i, cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    public final CursorWindow getWindow() {
        return this.f22790a.getWindow();
    }

    @Override // android.database.CursorWrapper
    public final /* bridge */ /* synthetic */ Cursor getWrappedCursor() {
        return this.f22790a;
    }

    @Override // android.database.CrossProcessCursor
    public final boolean onMove(int i, int i2) {
        return this.f22790a.onMove(i, i2);
    }
}
