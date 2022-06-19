package com.freshchat.consumer.sdk.p063m;

import android.app.Dialog;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$f;
import com.freshchat.consumer.sdk.p047b.C1471i;
import e.m.a.g.e.d;
import e.m.a.g.e.e;
/* renamed from: com.freshchat.consumer.sdk.m.y */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/y.class */
public abstract class AbstractC1802y extends e {
    private int orientation;

    /* renamed from: pq */
    private FrameLayout f4666pq;

    /* renamed from: ps */
    private int f4668ps;

    /* renamed from: pt */
    private int f4669pt;

    /* renamed from: pr */
    private DisplayMetrics f4667pr = new DisplayMetrics();

    /* renamed from: pu */
    private int f4670pu = 1;

    /* renamed from: S */
    private int m39549S(int i) {
        int i2;
        int m39548T = m39548T(i);
        if (getContext() != null) {
            i2 = C1471i.m40838cb(getContext()) + C1471i.m40839ca(getContext());
        } else {
            i2 = 0;
        }
        int i3 = m39548T - i2;
        if (this.f4670pu == 2) {
            return i3;
        }
        int i4 = this.f4668ps;
        int i5 = i3;
        if (i4 < i3) {
            i5 = i4;
        }
        return i5;
    }

    /* renamed from: T */
    private int m39548T(int i) {
        int i2;
        if (i == 1) {
            DisplayMetrics displayMetrics = this.f4667pr;
            int i3 = displayMetrics.heightPixels;
            int i4 = displayMetrics.widthPixels;
            i2 = i4;
            if (i3 > i4) {
                i2 = i3;
            }
        } else {
            DisplayMetrics displayMetrics2 = this.f4667pr;
            int i5 = displayMetrics2.heightPixels;
            int i6 = displayMetrics2.widthPixels;
            i2 = i6;
            if (i5 < i6) {
                i2 = i5;
            }
        }
        return i2;
    }

    /* renamed from: hT */
    private void m39543hT() {
        CoordinatorLayout$f coordinatorLayout$f = (CoordinatorLayout$f) this.f4666pq.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) coordinatorLayout$f).height = m39549S(this.orientation);
        this.f4666pq.setLayoutParams(coordinatorLayout$f);
    }

    /* renamed from: R */
    public void m39550R(int i) {
        this.f4670pu = 1;
        this.f4668ps = i + this.f4669pt;
        m39543hT();
    }

    public int getOrientation() {
        return this.orientation;
    }

    /* renamed from: hS */
    public void m39544hS() {
        if (this.f4670pu != 2) {
            this.f4670pu = 2;
            m39543hT();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        AbstractC1802y.super.onConfigurationChanged(configuration);
        this.orientation = configuration.orientation;
        m39543hT();
    }

    public void onCreate(Bundle bundle) {
        AbstractC1802y.super.onCreate(bundle);
        if (getActivity() == null || getActivity().getWindowManager() == null) {
            return;
        }
        getActivity().getWindowManager().getDefaultDisplay().getMetrics(this.f4667pr);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        d onCreateDialog = AbstractC1802y.super.onCreateDialog(bundle);
        onCreateDialog.setOnShowListener(new DialogInterface$OnShowListenerC1803z(this, onCreateDialog));
        return onCreateDialog;
    }

    public void setOrientation(int i) {
        this.orientation = i;
    }
}
