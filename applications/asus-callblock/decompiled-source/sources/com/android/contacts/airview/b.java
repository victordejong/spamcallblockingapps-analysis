package com.android.contacts.airview;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.android.contacts.util.AsusAirViewUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/airview/b.class */
public final class b implements View.OnHoverListener {

    /* renamed from: a  reason: collision with root package name */
    private f f549a;

    /* renamed from: b  reason: collision with root package name */
    private Object f550b;
    private int c;

    public b(f fVar, Object obj, int i) {
        this.f549a = fVar;
        this.f550b = obj;
        this.c = i;
    }

    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        boolean z;
        if (view.getContext() != null) {
            Object tag = this.c == 3 ? view.getTag(2131296921) : view.getTag();
            switch (motionEvent.getActionMasked()) {
                case 7:
                    f fVar = this.f549a;
                    if (fVar.v) {
                        if (fVar.u != null) {
                            fVar.u.a(motionEvent);
                        } else {
                            fVar.u = new GuideLinePopup(fVar.f557a.getApplicationContext());
                            fVar.u.f545b = fVar.d;
                            GuideLinePopup guideLinePopup = fVar.u;
                            int i = fVar.w;
                            int i2 = fVar.x;
                            guideLinePopup.c = i;
                            guideLinePopup.d = i2;
                            fVar.u.a();
                            fVar.u.g.setLineVisible(true);
                            GuideLinePopup guideLinePopup2 = fVar.u;
                            guideLinePopup2.f544a.setHeight(guideLinePopup2.f.bottom - guideLinePopup2.f.top);
                            guideLinePopup2.f544a.setWidth(guideLinePopup2.f.right - guideLinePopup2.f.left);
                            guideLinePopup2.f544a.setContentView(guideLinePopup2.g);
                            guideLinePopup2.f544a.showAtLocation(guideLinePopup2.f545b, 0, guideLinePopup2.f.left, guideLinePopup2.f.top);
                        }
                    }
                    if (fVar.f558b != null && fVar.f558b.equals(tag) && !fVar.t.isShowing() && !fVar.t.f562a && Math.abs(fVar.h - motionEvent.getRawX()) + Math.abs(fVar.i - motionEvent.getRawY()) > 15.0f) {
                        fVar.z.removeMessages(0);
                        fVar.h = motionEvent.getRawX();
                        fVar.i = motionEvent.getRawY();
                        fVar.z.sendEmptyMessageDelayed(0, 50L);
                        break;
                    }
                    break;
                case 9:
                    AsusAirViewUtils.setStylusIcon(view, AsusAirViewUtils.STYLE_STYLUS_FOCUS);
                    f fVar2 = this.f549a;
                    int i3 = this.c;
                    Object obj = this.f550b;
                    fVar2.v = false;
                    fVar2.f558b = tag;
                    fVar2.e = obj;
                    fVar2.c = i3;
                    fVar2.d = view;
                    fVar2.h = motionEvent.getRawX();
                    fVar2.i = motionEvent.getRawY();
                    fVar2.s.dismiss();
                    fVar2.t.dismiss();
                    fVar2.z.removeMessages(0);
                    fVar2.z.sendEmptyMessageDelayed(0, 50L);
                    break;
                case 10:
                    f fVar3 = this.f549a;
                    fVar3.v = false;
                    if (fVar3.u != null) {
                        fVar3.u.f544a.dismiss();
                        fVar3.u = null;
                    }
                    if (fVar3.f558b != null && fVar3.f558b.equals(tag)) {
                        fVar3.z.removeMessages(0);
                        fVar3.s.dismiss();
                        if (fVar3.r <= 3) {
                            Log.d("PopupBuilder", "remove mListPopupWindow.dismiss()");
                        }
                    }
                    AsusAirViewUtils.setStylusIcon(view, AsusAirViewUtils.STYLE_STYLUS_HOVER);
                    break;
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
