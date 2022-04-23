package com.android.contacts.list;

import android.content.AsyncTaskLoader;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Handler;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.d.c;
import com.android.contacts.util.CompatUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/al.class */
public final class al extends AsyncTaskLoader<Cursor> {
    private static final String[] c = {"_id", "directoryType", "displayName", "photoSupport"};

    /* renamed from: a  reason: collision with root package name */
    int f1780a;

    /* renamed from: b  reason: collision with root package name */
    boolean f1781b;
    private final ContentObserver d = new ContentObserver(new Handler()) { // from class: com.android.contacts.list.al.1
        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            al.this.forceLoad();
        }
    };
    private MatrixCursor e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/al$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f1783a = {"_id", "packageName", "typeResourceId", "displayName", "photoSupport"};

        public static Uri a(int i) {
            return (i == 3 || i == 2) ? ContactsContract.Directory.CONTENT_URI : CompatUtils.isNCompatible() ? c.f798a : ContactsContract.Directory.CONTENT_URI;
        }
    }

    public al(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Cursor loadInBackground() {
        String str;
        Throwable th;
        MatrixCursor matrixCursor;
        String string;
        Cursor cursor = null;
        Cursor cursor2 = null;
        if (this.f1780a == 0) {
            if (this.e == null) {
                this.e = new MatrixCursor(c);
                this.e.addRow(new Object[]{0L, null, getContext().getString(2131755457), null});
                this.e.addRow(new Object[]{1L, null, getContext().getString(2131755763), null});
            }
            matrixCursor = this.e;
        } else {
            MatrixCursor matrixCursor2 = new MatrixCursor(c);
            Context context = getContext();
            PackageManager packageManager = context.getPackageManager();
            switch (this.f1780a) {
                case 1:
                    str = null;
                    break;
                case 2:
                    str = "shortcutSupport=2";
                    break;
                case 3:
                    str = "shortcutSupport IN (2, 1)";
                    break;
                default:
                    throw new RuntimeException("Unsupported directory search mode: " + this.f1780a);
            }
            try {
                try {
                    cursor2 = context.getContentResolver().query(a.a(this.f1780a), a.f1783a, str, null, "_id");
                } catch (RuntimeException e) {
                }
                if (cursor2 == null) {
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    matrixCursor = matrixCursor2;
                } else {
                    while (cursor2.moveToNext()) {
                        long j = cursor2.getLong(0);
                        if (!this.f1781b) {
                            if (CompatUtils.isNCompatible() ? j == 1 || j == 1000000001 : j == 1) {
                                continue;
                            }
                        }
                        String string2 = cursor2.getString(1);
                        int i = cursor2.getInt(2);
                        if (!TextUtils.isEmpty(string2) && i != 0) {
                            try {
                                string = packageManager.getResourcesForApplication(string2).getString(i);
                            } catch (Exception e2) {
                                try {
                                    try {
                                        Log.e("ContactEntryListAdapter", "Cannot obtain directory type from package: " + string2);
                                    } catch (RuntimeException e3) {
                                        cursor = cursor2;
                                        Log.w("ContactEntryListAdapter", "Runtime Exception when querying directory");
                                        if (cursor2 != null) {
                                            cursor2.close();
                                        }
                                        matrixCursor = matrixCursor2;
                                        return matrixCursor;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    cursor = cursor2;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    throw th;
                                }
                            }
                            matrixCursor2.addRow(new Object[]{Long.valueOf(j), string, cursor2.getString(3), Integer.valueOf(cursor2.getInt(4))});
                        }
                        string = null;
                        matrixCursor2.addRow(new Object[]{Long.valueOf(j), string, cursor2.getString(3), Integer.valueOf(cursor2.getInt(4))});
                    }
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    matrixCursor = matrixCursor2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return matrixCursor;
    }

    @Override // android.content.Loader
    protected final void onReset() {
        stopLoading();
    }

    @Override // android.content.Loader
    protected final void onStartLoading() {
        getContext().getContentResolver().registerContentObserver(a.a(this.f1780a), false, this.d);
        forceLoad();
    }

    @Override // android.content.Loader
    protected final void onStopLoading() {
        getContext().getContentResolver().unregisterContentObserver(this.d);
    }
}
