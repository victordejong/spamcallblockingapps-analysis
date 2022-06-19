package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/i.class */
public class C0987i extends AbstractC0999p {

    /* renamed from: b */
    private AbstractC0990k f3397b;

    /* renamed from: c */
    private AbstractC0990k f3398c;

    /* renamed from: a */
    private int m18482a(RecyclerView.AbstractC0925i abstractC0925i, View view, AbstractC0990k abstractC0990k) {
        return (abstractC0990k.mo18462a(view) + (abstractC0990k.mo18455e(view) / 2)) - (abstractC0990k.mo18460c() + (abstractC0990k.mo18454f() / 2));
    }

    /* renamed from: a */
    private int m18480a(RecyclerView.AbstractC0925i abstractC0925i, AbstractC0990k abstractC0990k, int i, int i2) {
        int round;
        int[] b = m18397b(i, i2);
        float m18479b = m18479b(abstractC0925i, abstractC0990k);
        if (m18479b <= 0.0f) {
            round = 0;
        } else {
            round = Math.round((Math.abs(b[0]) > Math.abs(b[1]) ? b[0] : b[1]) / m18479b);
        }
        return round;
    }

    /* renamed from: a */
    private View m18481a(RecyclerView.AbstractC0925i abstractC0925i, AbstractC0990k abstractC0990k) {
        View view = null;
        View view2 = null;
        int m18910y = abstractC0925i.m18910y();
        if (m18910y != 0) {
            int mo18460c = abstractC0990k.mo18460c();
            int mo18454f = abstractC0990k.mo18454f() / 2;
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            while (true) {
                view2 = view;
                if (i2 >= m18910y) {
                    break;
                }
                View m18927i = abstractC0925i.m18927i(i2);
                int abs = Math.abs((abstractC0990k.mo18462a(m18927i) + (abstractC0990k.mo18455e(m18927i) / 2)) - (mo18460c + mo18454f));
                if (abs < i) {
                    view = m18927i;
                    i = abs;
                }
                i2++;
            }
        }
        return view2;
    }

    /* renamed from: b */
    private float m18479b(RecyclerView.AbstractC0925i abstractC0925i, AbstractC0990k abstractC0990k) {
        View view;
        float f;
        int i;
        View view2;
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        int m18910y = abstractC0925i.m18910y();
        if (m18910y == 0) {
            f = 1.0f;
        } else {
            int i4 = 0;
            View view3 = null;
            View view4 = null;
            while (true) {
                view = view4;
                if (i4 >= m18910y) {
                    break;
                }
                View m18927i = abstractC0925i.m18927i(i4);
                int m18943d = abstractC0925i.m18943d(m18927i);
                if (m18943d == -1) {
                    view2 = view;
                    i = i3;
                } else {
                    int i5 = i2;
                    if (m18943d < i2) {
                        i5 = m18943d;
                        view = m18927i;
                    }
                    i = i3;
                    i2 = i5;
                    view2 = view;
                    if (m18943d > i3) {
                        i = m18943d;
                        i2 = i5;
                        view3 = m18927i;
                        view2 = view;
                    }
                }
                i4++;
                i3 = i;
                view4 = view2;
            }
            if (view == null || view3 == null) {
                f = 1.0f;
            } else {
                int max = Math.max(abstractC0990k.mo18461b(view), abstractC0990k.mo18461b(view3)) - Math.min(abstractC0990k.mo18462a(view), abstractC0990k.mo18462a(view3));
                f = max == 0 ? 1.0f : (max * 1.0f) / ((i3 - i2) + 1);
            }
        }
        return f;
    }

    /* renamed from: d */
    private AbstractC0990k m18478d(RecyclerView.AbstractC0925i abstractC0925i) {
        if (this.f3397b == null || this.f3397b.f3400a != abstractC0925i) {
            this.f3397b = AbstractC0990k.m18464b(abstractC0925i);
        }
        return this.f3397b;
    }

    /* renamed from: e */
    private AbstractC0990k m18477e(RecyclerView.AbstractC0925i abstractC0925i) {
        if (this.f3398c == null || this.f3398c.f3400a != abstractC0925i) {
            this.f3398c = AbstractC0990k.m18467a(abstractC0925i);
        }
        return this.f3398c;
    }

    @Override // androidx.recyclerview.widget.AbstractC0999p
    /* renamed from: a */
    public int mo18401a(RecyclerView.AbstractC0925i abstractC0925i, int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (!(abstractC0925i instanceof RecyclerView.AbstractC0942t.AbstractC0944b)) {
            i5 = -1;
        } else {
            int m19003I = abstractC0925i.m19003I();
            if (m19003I == 0) {
                i5 = -1;
            } else {
                View mo18402a = mo18402a(abstractC0925i);
                if (mo18402a == null) {
                    i5 = -1;
                } else {
                    int m18943d = abstractC0925i.m18943d(mo18402a);
                    if (m18943d == -1) {
                        i5 = -1;
                    } else {
                        PointF mo18712d = ((RecyclerView.AbstractC0942t.AbstractC0944b) abstractC0925i).mo18712d(m19003I - 1);
                        if (mo18712d == null) {
                            i5 = -1;
                        } else {
                            if (abstractC0925i.mo18707f()) {
                                int m18480a = m18480a(abstractC0925i, m18477e(abstractC0925i), i, 0);
                                i3 = m18480a;
                                if (mo18712d.x < 0.0f) {
                                    i3 = -m18480a;
                                }
                            } else {
                                i3 = 0;
                            }
                            if (abstractC0925i.mo18704g()) {
                                int m18480a2 = m18480a(abstractC0925i, m18478d(abstractC0925i), 0, i2);
                                i4 = m18480a2;
                                if (mo18712d.y < 0.0f) {
                                    i4 = -m18480a2;
                                }
                            } else {
                                i4 = 0;
                            }
                            if (!abstractC0925i.mo18704g()) {
                                i4 = i3;
                            }
                            if (i4 == 0) {
                                i5 = -1;
                            } else {
                                int i6 = m18943d + i4;
                                int i7 = i6;
                                if (i6 < 0) {
                                    i7 = 0;
                                }
                                i5 = i7;
                                if (i7 >= m19003I) {
                                    i5 = m19003I - 1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i5;
    }

    @Override // androidx.recyclerview.widget.AbstractC0999p
    /* renamed from: a */
    public View mo18402a(RecyclerView.AbstractC0925i abstractC0925i) {
        return abstractC0925i.mo18704g() ? m18481a(abstractC0925i, m18478d(abstractC0925i)) : abstractC0925i.mo18707f() ? m18481a(abstractC0925i, m18477e(abstractC0925i)) : null;
    }

    @Override // androidx.recyclerview.widget.AbstractC0999p
    /* renamed from: a */
    public int[] mo18400a(RecyclerView.AbstractC0925i abstractC0925i, View view) {
        int[] iArr = new int[2];
        if (abstractC0925i.mo18707f()) {
            iArr[0] = m18482a(abstractC0925i, view, m18477e(abstractC0925i));
        } else {
            iArr[0] = 0;
        }
        if (abstractC0925i.mo18704g()) {
            iArr[1] = m18482a(abstractC0925i, view, m18478d(abstractC0925i));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }
}
