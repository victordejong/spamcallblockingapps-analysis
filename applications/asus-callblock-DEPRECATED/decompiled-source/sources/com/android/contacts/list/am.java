package com.android.contacts.list;

import com.android.a.b.a;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/am.class */
public final class am extends a.C0018a {
    public long f;
    String g;
    String h;
    int i;
    boolean j;
    boolean k;
    String m;
    private String n;
    int l = -1;
    private boolean o = true;

    public am(boolean z) {
        super(z, true);
    }

    public final boolean a() {
        boolean z = true;
        if (this.i != 0) {
            z = this.i == 1;
        }
        return z;
    }

    public final String toString() {
        return "DirectoryPartition{mDirectoryId=" + this.f + ", mContentUri='" + this.n + "', mDirectoryType='" + this.g + "', mDisplayName='" + this.h + "', mStatus=" + this.i + ", mPriorityDirectory=" + this.j + ", mPhotoSupported=" + this.k + ", mResultLimit=" + this.l + ", mLabel='" + this.m + "'}";
    }
}
