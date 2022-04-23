package com.android.contacts.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.format.DateUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/DataStatus.class */
public class DataStatus {
    private int mPresence = -1;
    private String mStatus = null;
    private long mTimestamp = -1;
    private String mResPackage = null;
    private int mIconRes = -1;
    private int mLabelRes = -1;

    public DataStatus() {
    }

    public DataStatus(Cursor cursor) {
        fromCursor(cursor);
    }

    private void fromCursor(Cursor cursor) {
        this.mPresence = getInt(cursor, "mode", -1);
        this.mStatus = getString(cursor, "status");
        this.mTimestamp = getLong(cursor, "status_ts", -1L);
        this.mResPackage = getString(cursor, "status_res_package");
        this.mIconRes = getInt(cursor, "status_icon", -1);
        this.mLabelRes = getInt(cursor, "status_label", -1);
    }

    private static int getInt(Cursor cursor, String str) {
        return cursor.getInt(cursor.getColumnIndex(str));
    }

    private static int getInt(Cursor cursor, String str, int i) {
        int columnIndex = cursor.getColumnIndex(str);
        if (!cursor.isNull(columnIndex)) {
            i = cursor.getInt(columnIndex);
        }
        return i;
    }

    private static long getLong(Cursor cursor, String str, long j) {
        int columnIndex = cursor.getColumnIndex(str);
        if (!cursor.isNull(columnIndex)) {
            j = cursor.getLong(columnIndex);
        }
        return j;
    }

    private static String getString(Cursor cursor, String str) {
        return cursor.getString(cursor.getColumnIndex(str));
    }

    private static boolean isNull(Cursor cursor, String str) {
        return cursor.isNull(cursor.getColumnIndex(str));
    }

    public Drawable getIcon(Context context) {
        Drawable drawable = null;
        PackageManager packageManager = context.getPackageManager();
        if (this.mResPackage == null) {
            this.mResPackage = context.getPackageName();
        }
        if ((this.mResPackage == null || this.mIconRes == -1) ? false : true) {
            drawable = packageManager.getDrawable(this.mResPackage, this.mIconRes, null);
        }
        return drawable;
    }

    public int getPresence() {
        return this.mPresence;
    }

    public CharSequence getStatus() {
        return this.mStatus;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public CharSequence getTimestampLabel(Context context) {
        String str;
        PackageManager packageManager = context.getPackageManager();
        if (this.mResPackage == null) {
            this.mResPackage = context.getPackageName();
        }
        boolean z = this.mTimestamp > 0;
        boolean z2 = (this.mResPackage == null || this.mLabelRes == -1) ? false : true;
        Object relativeTimeSpanString = z ? DateUtils.getRelativeTimeSpanString(this.mTimestamp, System.currentTimeMillis(), 60000L, 262144) : null;
        CharSequence text = z2 ? packageManager.getText(this.mResPackage, this.mLabelRes, null) : null;
        if (z && z2) {
            str = context.getString(2131755452, relativeTimeSpanString, text);
        } else if (z2) {
            str = context.getString(2131755451, text);
        } else {
            str = relativeTimeSpanString;
            if (!z) {
                str = null;
            }
        }
        return str;
    }

    public boolean isValid() {
        return !TextUtils.isEmpty(this.mStatus);
    }

    public void possibleUpdate(Cursor cursor) {
        boolean z = true;
        boolean z2 = !isNull(cursor, "status");
        if (isNull(cursor, "status_ts")) {
            z = false;
        }
        if (z2) {
            if (!isValid() || z) {
                if (z) {
                    long j = getLong(cursor, "status_ts", -1L);
                    if (j >= this.mTimestamp) {
                        this.mTimestamp = j;
                    } else {
                        return;
                    }
                }
                fromCursor(cursor);
            }
        }
    }
}
