package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcid.class */
public final class zzcid extends FrameLayout {
    private final zzad zzdsj;

    public zzcid(Context context, View view, zzad zzadVar) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(view);
        this.zzdsj = zzadVar;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.zzdsj.zzd(motionEvent);
        return false;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            zzbeb childAt = getChildAt(i);
            if (childAt != null && (childAt instanceof zzbeb)) {
                arrayList.add(childAt);
            }
        }
        super.removeAllViews();
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            i2++;
            ((zzbeb) arrayList.get(i2)).destroy();
        }
    }
}
