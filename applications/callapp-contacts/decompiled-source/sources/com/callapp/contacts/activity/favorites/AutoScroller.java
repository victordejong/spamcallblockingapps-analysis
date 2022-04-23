package com.callapp.contacts.activity.favorites;

import android.content.Context;
import android.os.Handler;
import com.callapp.contacts.CallAppApplication;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AutoScroller.class */
class AutoScroller {

    /* renamed from: a  reason: collision with root package name */
    boolean f12828a;

    /* renamed from: c  reason: collision with root package name */
    private AutoScrollListener f12830c;
    private long e;

    /* renamed from: b  reason: collision with root package name */
    private Handler f12829b = new Handler();
    private AutoScrollMode f = AutoScrollMode.POSITION;

    /* renamed from: d  reason: collision with root package name */
    private int f12831d = (int) (CallAppApplication.get().getResources().getDisplayMetrics().density * 8.0f);

    /* renamed from: com.callapp.contacts.activity.favorites.AutoScroller$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AutoScroller$3.class */
    static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12837a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ScrollDirection.values().length];
            f12837a = iArr;
            try {
                iArr[ScrollDirection.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12837a[ScrollDirection.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AutoScroller$AutoScrollListener.class */
    public interface AutoScrollListener {
        void a(int i, int i2);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AutoScroller$AutoScrollMode.class */
    enum AutoScrollMode {
        POSITION,
        COLUMN
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/AutoScroller$ScrollDirection.class */
    enum ScrollDirection {
        LEFT,
        RIGHT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoScroller(Context context, AutoScrollListener autoScrollListener) {
        this.f12830c = autoScrollListener;
    }

    private void a(int i) {
        if (!this.f12828a) {
            this.f12828a = true;
            a(i, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final int i2) {
        if (this.f12828a) {
            this.f12830c.a(i, i2);
            this.f12829b.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.favorites.AutoScroller.1
                @Override // java.lang.Runnable
                public void run() {
                    AutoScroller.this.a(i, i2);
                }
            }, 12L);
        }
    }

    private void b(int i) {
        if (!this.f12828a) {
            this.f12828a = true;
            c(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final int i) {
        if (this.f12828a) {
            if (System.currentTimeMillis() - this.e > 1000) {
                this.e = System.currentTimeMillis();
            }
            this.f12829b.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.favorites.AutoScroller.2
                @Override // java.lang.Runnable
                public void run() {
                    AutoScroller.this.c(i);
                }
            }, 12L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ScrollDirection scrollDirection) {
        int i = AnonymousClass3.f12837a[scrollDirection.ordinal()];
        if (i != 1) {
            if (i == 2) {
                if (this.f == AutoScrollMode.POSITION) {
                    a(-this.f12831d);
                } else {
                    b(-1);
                }
            }
        } else if (this.f == AutoScrollMode.POSITION) {
            a(this.f12831d);
        } else {
            b(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAutoScrolling() {
        return this.f12828a;
    }
}
