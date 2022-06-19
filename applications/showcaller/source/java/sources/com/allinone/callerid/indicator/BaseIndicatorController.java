package com.allinone.callerid.indicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.List;
import p078c.p133f.p134a.AbstractC2084a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/indicator/BaseIndicatorController.class */
public abstract class BaseIndicatorController {

    /* renamed from: a */
    private WeakReference<View> f9864a;

    /* renamed from: b */
    private List<AbstractC2084a> f9865b;

    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/indicator/BaseIndicatorController$AnimStatus.class */
    public enum AnimStatus {
        START,
        END,
        CANCEL
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.indicator.BaseIndicatorController$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/indicator/BaseIndicatorController$a.class */
    public static /* synthetic */ class C3024a {

        /* renamed from: a */
        static final /* synthetic */ int[] f9870a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AnimStatus.values().length];
            f9870a = iArr;
            try {
                iArr[AnimStatus.START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9870a[AnimStatus.END.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9870a[AnimStatus.CANCEL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: a */
    public abstract List<AbstractC2084a> mo26210a();

    /* renamed from: b */
    public abstract void mo26209b(Canvas canvas, Paint paint);

    /* renamed from: c */
    public int m26217c() {
        return m26216d() != null ? m26216d().getHeight() : 0;
    }

    /* renamed from: d */
    public View m26216d() {
        WeakReference<View> weakReference = this.f9864a;
        return weakReference != null ? weakReference.get() : null;
    }

    /* renamed from: e */
    public int m26215e() {
        return m26216d() != null ? m26216d().getWidth() : 0;
    }

    /* renamed from: f */
    public void m26214f() {
        this.f9865b = mo26210a();
    }

    /* renamed from: g */
    public void m26213g() {
        if (m26216d() != null) {
            m26216d().postInvalidate();
        }
    }

    /* renamed from: h */
    public void m26212h(AnimStatus animStatus) {
        List<AbstractC2084a> list = this.f9865b;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            AbstractC2084a abstractC2084a = this.f9865b.get(i);
            boolean mo28034c = abstractC2084a.mo28034c();
            int i2 = C3024a.f9870a[animStatus.ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3 && mo28034c) {
                        abstractC2084a.cancel();
                    }
                } else if (mo28034c) {
                    abstractC2084a.mo28035b();
                }
            } else if (!mo28034c) {
                abstractC2084a.mo28033d();
            }
        }
    }

    /* renamed from: i */
    public void m26211i(View view) {
        this.f9864a = new WeakReference<>(view);
    }
}
