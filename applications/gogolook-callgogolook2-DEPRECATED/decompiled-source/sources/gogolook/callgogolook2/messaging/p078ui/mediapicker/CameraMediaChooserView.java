package gogolook.callgogolook2.messaging.p078ui.mediapicker;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p474c0.p491g.AbstractC12100p;
import p459j.p460a.p474c0.p491g.p496e0.C12010c;
import p459j.p460a.p474c0.p491g.p496e0.C12062n;
import p459j.p460a.p474c0.p499h.C12204q0;
/* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.CameraMediaChooserView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/CameraMediaChooserView.class */
public class CameraMediaChooserView extends FrameLayout implements AbstractC12100p {

    /* renamed from: a */
    public boolean f11852a;

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.CameraMediaChooserView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/CameraMediaChooserView$a.class */
    public class RunnableC4825a implements Runnable {
        public RunnableC4825a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HardwareCameraPreview hardwareCameraPreview = (HardwareCameraPreview) CameraMediaChooserView.this.findViewById(R$id.camera_preview);
            if (hardwareCameraPreview != null) {
                ViewGroup viewGroup = (ViewGroup) hardwareCameraPreview.getParent();
                int indexOfChild = viewGroup.indexOfChild(hardwareCameraPreview);
                C12062n nVar = new C12062n(CameraMediaChooserView.this.getContext());
                viewGroup.removeView(hardwareCameraPreview);
                viewGroup.addView(nVar, indexOfChild);
            }
        }
    }

    public CameraMediaChooserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12100p
    /* renamed from: f */
    public void mo7169f() {
        C12010c.m7550A().m7547a(0);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!canvas.isHardwareAccelerated() && !this.f11852a) {
            this.f11852a = true;
            C12204q0.m6814a().post(new RunnableC4825a());
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            C12010c.m7550A().m7531b(((Bundle) parcelable).getInt("camera_index"));
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putInt("camera_index", C12010c.m7550A().m7520g());
        return bundle;
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12100p
    public void restoreState(Parcelable parcelable) {
        onRestoreInstanceState(parcelable);
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12100p
    public Parcelable saveState() {
        return onSaveInstanceState();
    }
}
