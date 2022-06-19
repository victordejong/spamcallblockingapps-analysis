package com.callapp.contacts.activity.favorites;

import android.content.Context;
import android.os.Handler;
import com.callapp.contacts.CallAppApplication;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AutoScroller.class */
public class AutoScroller {

    /* renamed from: a */
    boolean f22932a;

    /* renamed from: c */
    private AutoScrollListener f22934c;

    /* renamed from: e */
    private long f22936e;

    /* renamed from: b */
    private Handler f22933b = new Handler();

    /* renamed from: f */
    private AutoScrollMode f22937f = AutoScrollMode.POSITION;

    /* renamed from: d */
    private int f22935d = (int) (CallAppApplication.get().getResources().getDisplayMetrics().density * 8.0f);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.favorites.AutoScroller$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AutoScroller$3.class */
    public static /* synthetic */ class C66033 {

        /* renamed from: a */
        static final /* synthetic */ int[] f22943a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ScrollDirection.values().length];
            f22943a = iArr;
            try {
                iArr[ScrollDirection.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22943a[ScrollDirection.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AutoScroller$AutoScrollListener.class */
    public interface AutoScrollListener {
        /* renamed from: a */
        void mo30303a(int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode.class */
    public enum AutoScrollMode {
        POSITION,
        COLUMN
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection.class */
    public enum ScrollDirection {
        LEFT,
        RIGHT
    }

    public AutoScroller(Context context, AutoScrollListener autoScrollListener) {
        this.f22934c = autoScrollListener;
    }

    /* renamed from: a */
    private void m30318a(int i) {
        if (!this.f22932a) {
            this.f22932a = true;
            m30317a(i, 0);
        }
    }

    /* renamed from: a */
    public void m30317a(final int i, final int i2) {
        if (this.f22932a) {
            this.f22934c.mo30303a(i, i2);
            this.f22933b.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.favorites.AutoScroller.1
                @Override // java.lang.Runnable
                public void run() {
                    AutoScroller.this.m30317a(i, i2);
                }
            }, 12L);
        }
    }

    /* renamed from: b */
    private void m30313b(int i) {
        if (!this.f22932a) {
            this.f22932a = true;
            m30312c(i);
        }
    }

    /* renamed from: c */
    public void m30312c(final int i) {
        if (this.f22932a) {
            if (System.currentTimeMillis() - this.f22936e > 1000) {
                this.f22936e = System.currentTimeMillis();
            }
            this.f22933b.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.favorites.AutoScroller.2
                @Override // java.lang.Runnable
                public void run() {
                    AutoScroller.this.m30312c(i);
                }
            }, 12L);
        }
    }

    /* renamed from: a */
    public final void m30316a(ScrollDirection scrollDirection) {
        int i = C66033.f22943a[scrollDirection.ordinal()];
        if (i == 1) {
            if (this.f22937f == AutoScrollMode.POSITION) {
                m30318a(this.f22935d);
            } else {
                m30313b(1);
            }
        } else if (i != 2) {
        } else {
            if (this.f22937f == AutoScrollMode.POSITION) {
                m30318a(-this.f22935d);
            } else {
                m30313b(-1);
            }
        }
    }

    public boolean isAutoScrolling() {
        return this.f22932a;
    }
}
