package com.google.android.gms.common.p351c;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.CursorWrapper;
/* renamed from: com.google.android.gms.common.c.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/c/a.class */
public final class C11942a extends CursorWrapper implements CrossProcessCursor {

    /* renamed from: a */
    private AbstractWindowedCursor f39429a;

    public C11942a(Cursor cursor) {
        super(cursor);
        for (int i = 0; i < 10 && (cursor instanceof CursorWrapper); i++) {
            cursor = ((CursorWrapper) cursor).getWrappedCursor();
        }
        if (!(cursor instanceof AbstractWindowedCursor)) {
            String valueOf = String.valueOf(cursor.getClass().getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown type: ".concat(valueOf) : new String("Unknown type: "));
        }
        this.f39429a = (AbstractWindowedCursor) cursor;
    }

    /* renamed from: a */
    public final void m19267a() {
        this.f39429a.setWindow(null);
    }

    @Override // android.database.CrossProcessCursor
    public final void fillWindow(int i, CursorWindow cursorWindow) {
        this.f39429a.fillWindow(i, cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    public final CursorWindow getWindow() {
        return this.f39429a.getWindow();
    }

    @Override // android.database.CursorWrapper
    public final /* bridge */ /* synthetic */ Cursor getWrappedCursor() {
        return this.f39429a;
    }

    @Override // android.database.CrossProcessCursor
    public final boolean onMove(int i, int i2) {
        return this.f39429a.onMove(i, i2);
    }
}
