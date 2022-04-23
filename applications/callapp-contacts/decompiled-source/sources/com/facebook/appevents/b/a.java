package com.facebook.appevents.b;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.facebook.appevents.b.a.f;
import com.facebook.g;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19435a = "com.facebook.appevents.b.a";

    /* renamed from: com.facebook.appevents.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a$a.class */
    public static final class View$OnClickListenerC0384a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f19438a;

        /* renamed from: b  reason: collision with root package name */
        private com.facebook.appevents.b.a.a f19439b;

        /* renamed from: c  reason: collision with root package name */
        private WeakReference<View> f19440c;

        /* renamed from: d  reason: collision with root package name */
        private WeakReference<View> f19441d;
        private View.OnClickListener e;

        private View$OnClickListenerC0384a(com.facebook.appevents.b.a.a aVar, View view, View view2) {
            this.f19438a = false;
            if (aVar != null && view != null && view2 != null) {
                this.e = f.g(view2);
                this.f19439b = aVar;
                this.f19440c = new WeakReference<>(view2);
                this.f19441d = new WeakReference<>(view);
                this.f19438a = true;
            }
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    View.OnClickListener onClickListener = this.e;
                    if (onClickListener != null) {
                        onClickListener.onClick(view);
                    }
                    if (this.f19441d.get() != null && this.f19440c.get() != null) {
                        a.b(this.f19439b, this.f19441d.get(), this.f19440c.get());
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/b/a$b.class */
    public static final class b implements AdapterView.OnItemClickListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f19446a;

        /* renamed from: b  reason: collision with root package name */
        private com.facebook.appevents.b.a.a f19447b;

        /* renamed from: c  reason: collision with root package name */
        private WeakReference<AdapterView> f19448c;

        /* renamed from: d  reason: collision with root package name */
        private WeakReference<View> f19449d;
        private AdapterView.OnItemClickListener e;

        private b(com.facebook.appevents.b.a.a aVar, View view, AdapterView adapterView) {
            this.f19446a = false;
            if (aVar != null && view != null && adapterView != null) {
                this.e = adapterView.getOnItemClickListener();
                this.f19447b = aVar;
                this.f19448c = new WeakReference<>(adapterView);
                this.f19449d = new WeakReference<>(view);
                this.f19446a = true;
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            AdapterView.OnItemClickListener onItemClickListener = this.e;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i, j);
            }
            if (this.f19449d.get() != null && this.f19448c.get() != null) {
                a.b(this.f19447b, this.f19449d.get(), this.f19448c.get());
            }
        }
    }

    public static View$OnClickListenerC0384a a(com.facebook.appevents.b.a.a aVar, View view, View view2) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        try {
            return new View$OnClickListenerC0384a(aVar, view, view2);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    public static b a(com.facebook.appevents.b.a.a aVar, View view, AdapterView adapterView) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        try {
            return new b(aVar, view, adapterView);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    static /* synthetic */ void b(com.facebook.appevents.b.a.a aVar, View view, View view2) {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                if (!com.facebook.internal.b.b.a.a(a.class)) {
                    final String str = aVar.f19442a;
                    final Bundle a2 = c.a(aVar, view, view2);
                    if (!com.facebook.internal.b.b.a.a(a.class)) {
                        try {
                            String string = a2.getString("_valueToSum");
                            if (string != null) {
                                a2.putDouble("_valueToSum", com.facebook.appevents.f.b.a(string));
                            }
                            a2.putString("_is_fb_codeless", "1");
                        } catch (Throwable th) {
                            com.facebook.internal.b.b.a.a(th, a.class);
                        }
                    }
                    g.f().execute(new Runnable() { // from class: com.facebook.appevents.b.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!com.facebook.internal.b.b.a.a(this)) {
                                try {
                                    com.facebook.appevents.g.a(g.i()).a(str, a2);
                                } catch (Throwable th2) {
                                    com.facebook.internal.b.b.a.a(th2, this);
                                }
                            }
                        }
                    });
                }
            } catch (Throwable th2) {
                com.facebook.internal.b.b.a.a(th2, a.class);
            }
        }
    }
}
