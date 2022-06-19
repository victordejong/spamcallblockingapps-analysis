package p000;

import android.util.SparseArray;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
/* renamed from: hc1 */
/* loaded from: classes3-dex2jar.jar:hc1.class */
public class hc1 {

    /* renamed from: a */
    public SparseArray<hd1> f6720a = new SparseArray<>();

    /* renamed from: b */
    public ArrayList<hd1> f6721b = new ArrayList<>();

    /* renamed from: c */
    public final float f6722c;

    public hc1(float f, float f2) {
        this.f6722c = f;
    }

    /* renamed from: a */
    public void m1634a(MotionEvent motionEvent) {
        this.f6721b.clear();
        int actionMasked = motionEvent.getActionMasked();
        for (int i = 0; i < motionEvent.getPointerCount(); i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (actionMasked == 1 || actionMasked == 3 || (actionMasked == 6 && i == motionEvent.getActionIndex())) {
                this.f6720a.remove(pointerId);
            }
        }
    }

    /* renamed from: b */
    public ArrayList<hd1> m1633b() {
        return this.f6721b;
    }

    /* renamed from: c */
    public hd1 m1632c(int i) {
        return this.f6720a.get(i);
    }

    /* renamed from: d */
    public void m1631d(MotionEvent motionEvent) {
        this.f6721b.clear();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f6720a.clear();
        }
        for (int i = 0; i < motionEvent.getPointerCount(); i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (this.f6720a.get(pointerId) == null) {
                this.f6720a.put(pointerId, new hd1(TimeUnit.MILLISECONDS.toNanos(motionEvent.getEventTime()), this.f6722c));
            }
            this.f6720a.get(pointerId).m1630a(motionEvent.getX(i), motionEvent.getY(i), TimeUnit.MILLISECONDS.toNanos(motionEvent.getEventTime()));
            if (actionMasked == 1 || actionMasked == 3 || (actionMasked == 6 && i == motionEvent.getActionIndex())) {
                this.f6721b.add(m1632c(pointerId));
            }
        }
    }
}
