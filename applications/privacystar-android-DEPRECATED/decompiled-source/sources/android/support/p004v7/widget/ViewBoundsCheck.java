package android.support.p004v7.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* renamed from: android.support.v7.widget.ViewBoundsCheck */
/* loaded from: classes-dex2jar.jar:android/support/v7/widget/ViewBoundsCheck.class */
class ViewBoundsCheck {
    static final int CVE_PVE_POS = 12;
    static final int CVE_PVS_POS = 8;
    static final int CVS_PVE_POS = 4;
    static final int CVS_PVS_POS = 0;

    /* renamed from: EQ */
    static final int f42EQ = 2;
    static final int FLAG_CVE_EQ_PVE = 8192;
    static final int FLAG_CVE_EQ_PVS = 512;
    static final int FLAG_CVE_GT_PVE = 4096;
    static final int FLAG_CVE_GT_PVS = 256;
    static final int FLAG_CVE_LT_PVE = 16384;
    static final int FLAG_CVE_LT_PVS = 1024;
    static final int FLAG_CVS_EQ_PVE = 32;
    static final int FLAG_CVS_EQ_PVS = 2;
    static final int FLAG_CVS_GT_PVE = 16;
    static final int FLAG_CVS_GT_PVS = 1;
    static final int FLAG_CVS_LT_PVE = 64;
    static final int FLAG_CVS_LT_PVS = 4;

    /* renamed from: GT */
    static final int f43GT = 1;

    /* renamed from: LT */
    static final int f44LT = 4;
    static final int MASK = 7;
    BoundFlags mBoundFlags = new BoundFlags();
    final Callback mCallback;

    /* renamed from: android.support.v7.widget.ViewBoundsCheck$BoundFlags */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/ViewBoundsCheck$BoundFlags.class */
    static class BoundFlags {
        int mBoundFlags = 0;
        int mChildEnd;
        int mChildStart;
        int mRvEnd;
        int mRvStart;

        BoundFlags() {
        }

        void addFlags(int i) {
            this.mBoundFlags = i | this.mBoundFlags;
        }

        boolean boundsMatch() {
            if ((this.mBoundFlags & 7) != 0 && (this.mBoundFlags & (compare(this.mChildStart, this.mRvStart) << 0)) == 0) {
                return false;
            }
            if ((this.mBoundFlags & 112) != 0 && (this.mBoundFlags & (compare(this.mChildStart, this.mRvEnd) << 4)) == 0) {
                return false;
            }
            if ((this.mBoundFlags & 1792) == 0 || (this.mBoundFlags & (compare(this.mChildEnd, this.mRvStart) << 8)) != 0) {
                return (this.mBoundFlags & 28672) == 0 || (this.mBoundFlags & (compare(this.mChildEnd, this.mRvEnd) << 12)) != 0;
            }
            return false;
        }

        int compare(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        void resetFlags() {
            this.mBoundFlags = 0;
        }

        void setBounds(int i, int i2, int i3, int i4) {
            this.mRvStart = i;
            this.mRvEnd = i2;
            this.mChildStart = i3;
            this.mChildEnd = i4;
        }

        void setFlags(int i, int i2) {
            this.mBoundFlags = (i & i2) | (this.mBoundFlags & (i2 ^ (-1)));
        }
    }

    /* renamed from: android.support.v7.widget.ViewBoundsCheck$Callback */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/ViewBoundsCheck$Callback.class */
    interface Callback {
        View getChildAt(int i);

        int getChildCount();

        int getChildEnd(View view);

        int getChildStart(View view);

        View getParent();

        int getParentEnd();

        int getParentStart();
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v7.widget.ViewBoundsCheck$ViewBounds */
    /* loaded from: classes-dex2jar.jar:android/support/v7/widget/ViewBoundsCheck$ViewBounds.class */
    public @interface ViewBounds {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewBoundsCheck(Callback callback) {
        this.mCallback = callback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View findOneViewWithinBoundFlags(int i, int i2, int i3, int i4) {
        int parentStart = this.mCallback.getParentStart();
        int parentEnd = this.mCallback.getParentEnd();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View childAt = this.mCallback.getChildAt(i);
            this.mBoundFlags.setBounds(parentStart, parentEnd, this.mCallback.getChildStart(childAt), this.mCallback.getChildEnd(childAt));
            if (i3 != 0) {
                this.mBoundFlags.resetFlags();
                this.mBoundFlags.addFlags(i3);
                if (this.mBoundFlags.boundsMatch()) {
                    return childAt;
                }
            }
            view = view;
            if (i4 != 0) {
                this.mBoundFlags.resetFlags();
                this.mBoundFlags.addFlags(i4);
                view = view;
                if (this.mBoundFlags.boundsMatch()) {
                    view = childAt;
                }
            }
            i += i5;
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isViewWithinBoundFlags(View view, int i) {
        this.mBoundFlags.setBounds(this.mCallback.getParentStart(), this.mCallback.getParentEnd(), this.mCallback.getChildStart(view), this.mCallback.getChildEnd(view));
        if (i == 0) {
            return false;
        }
        this.mBoundFlags.resetFlags();
        this.mBoundFlags.addFlags(i);
        return this.mBoundFlags.boundsMatch();
    }
}
