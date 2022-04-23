package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MergeCursor;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/bg.class */
public final class bg extends CursorLoader {

    /* renamed from: a  reason: collision with root package name */
    boolean f1802a;

    /* renamed from: b  reason: collision with root package name */
    private String[] f1803b;
    private Cursor c;

    public bg(Context context) {
        super(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.database.MatrixCursor a() {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.bg.a():android.database.MatrixCursor");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.content.CursorLoader, android.content.AsyncTaskLoader
    public final Cursor loadInBackground() {
        final Cursor loadInBackground;
        MergeCursor mergeCursor;
        ArrayList arrayList = new ArrayList();
        if (this.f1802a) {
            MatrixCursor a2 = a();
            if (a2 != this.c) {
                if (this.c != null && !this.c.isClosed()) {
                    this.c.close();
                }
                this.c = a2;
            }
            arrayList.add(a2);
        }
        int i = 0;
        MergeCursor mergeCursor2 = null;
        while (true) {
            int i2 = i + 1;
            if (i >= 3) {
                break;
            }
            try {
                loadInBackground = super.loadInBackground();
                arrayList.add(loadInBackground);
                mergeCursor = new MergeCursor((Cursor[]) arrayList.toArray(new Cursor[arrayList.size()])) { // from class: com.android.contacts.list.bg.1
                    @Override // android.database.AbstractCursor, android.database.Cursor
                    public final Bundle getExtras() {
                        return loadInBackground != null ? loadInBackground.getExtras() : null;
                    }
                };
            } catch (NullPointerException e) {
                Log.w("ProfileAndContactsLoader", i2 + ": " + e.toString());
                i = i2;
            }
            if (loadInBackground != null) {
                mergeCursor2 = mergeCursor;
                break;
            }
            mergeCursor2 = mergeCursor;
            i = i2;
        }
        return mergeCursor2;
    }

    @Override // android.content.CursorLoader
    public final void setProjection(String[] strArr) {
        super.setProjection(strArr);
        this.f1803b = strArr;
    }
}
