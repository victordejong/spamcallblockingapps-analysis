package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentActivityFragment$g */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$g.class */
public class RecentActivityFragment$g implements View.OnTouchListener {

    /* renamed from: a */
    public float f3087a;

    /* renamed from: b */
    public List<MotionEvent> f3088b = new ArrayList();

    /* renamed from: c */
    public final /* synthetic */ RecentActivityFragment f3089c;

    public RecentActivityFragment$g(RecentActivityFragment recentActivityFragment) {
        this.f3089c = recentActivityFragment;
    }

    /* renamed from: a */
    public final void m4785a() {
        for (MotionEvent motionEvent : this.f3088b) {
            RecentActivityFragment.Q(this.f3089c).onTouchEvent(motionEvent);
        }
        this.f3088b.clear();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 2) {
            this.f3088b.add(motionEvent);
        }
        if (motionEvent.getAction() == 0) {
            this.f3087a = motionEvent.getRawY();
        }
        if (motionEvent.getAction() == 1) {
            this.f3087a = -1.0f;
        }
        if (motionEvent.getAction() == 2) {
            if (this.f3087a == -1.0f) {
                this.f3087a = motionEvent.getRawY();
            }
            int rawY = (int) (this.f3087a - motionEvent.getRawY());
            int height = RecentActivityFragment.z(this.f3089c).getHeight();
            RecentActivityFragment.R(this.f3089c).setEnabled(false);
            if (rawY < 0 && RecentActivityFragment.Q(this.f3089c).computeVerticalScrollOffset() > 0) {
                this.f3087a = motionEvent.getRawY();
                m4785a();
                return false;
            }
            if (rawY > 0 && height > RecentActivityFragment.A(this.f3089c)) {
                RecentActivityFragment.z(this.f3089c).getLayoutParams().height = Math.max(height - rawY, RecentActivityFragment.A(this.f3089c));
                RecentActivityFragment.B(this.f3089c);
                RecentActivityFragment.z(this.f3089c).requestLayout();
            }
            if (rawY < 0 && height < RecentActivityFragment.x(this.f3089c)) {
                RecentActivityFragment.z(this.f3089c).getLayoutParams().height = Math.min(height - rawY, RecentActivityFragment.x(this.f3089c));
                RecentActivityFragment.B(this.f3089c);
                RecentActivityFragment.z(this.f3089c).requestLayout();
            }
            this.f3087a = motionEvent.getRawY();
            if (rawY > 0 && height <= RecentActivityFragment.A(this.f3089c)) {
                m4785a();
                return false;
            } else if (rawY < 0 && height >= RecentActivityFragment.x(this.f3089c)) {
                RecentActivityFragment.R(this.f3089c).setEnabled(true);
                m4785a();
                return false;
            }
        }
        if (motionEvent.getAction() == 1) {
            this.f3088b.clear();
            return false;
        }
        return true;
    }
}
