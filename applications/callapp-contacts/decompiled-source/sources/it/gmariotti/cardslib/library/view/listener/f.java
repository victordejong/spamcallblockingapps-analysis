package it.gmariotti.cardslib.library.view.listener;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.view.listener.b;
import it.gmariotti.cardslib.library.view.listener.c;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public View f36542a;

    /* renamed from: b  reason: collision with root package name */
    public TextView f36543b;

    /* renamed from: c  reason: collision with root package name */
    public ViewPropertyAnimator f36544c;

    /* renamed from: d  reason: collision with root package name */
    public Handler f36545d;
    d e;
    public b f;
    public Parcelable g;
    public CharSequence h;
    public c i;
    public Runnable j;

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$a.class */
    public static final class a implements c {
        @Override // it.gmariotti.cardslib.library.view.listener.f.c
        public final int a() {
            return a.c.list_card_undobar_message;
        }

        @Override // it.gmariotti.cardslib.library.view.listener.f.c
        public final String a(it.gmariotti.cardslib.library.a.c cVar, int[] iArr) {
            Resources resources;
            if (cVar == null || cVar.getContext() == null || (resources = cVar.getContext().getResources()) == null) {
                return null;
            }
            return resources.getQuantityString(a.f.list_card_undo_items, iArr.length, Integer.valueOf(iArr.length));
        }

        @Override // it.gmariotti.cardslib.library.view.listener.f.c
        public final int b() {
            return a.c.list_card_undobar_button;
        }

        @Override // it.gmariotti.cardslib.library.view.listener.f.c
        public final c.b c() {
            return c.b.NONE;
        }

        @Override // it.gmariotti.cardslib.library.view.listener.f.c
        public final c.a d() {
            return c.a.ALPHA;
        }
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$b.class */
    public interface b {
        void a(boolean z);
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$c.class */
    public interface c {

        /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$c$a.class */
        public enum a {
            ALPHA(0),
            TOPBOTTOM(1);
            
            private final int mValue;

            a(int i) {
                this.mValue = i;
            }

            public final int getValue() {
                return this.mValue;
            }
        }

        /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$c$b.class */
        public enum b {
            NONE(0),
            LEFTRIGHT(1),
            TOPBOTTOM(2);
            
            private final int mValue;

            b(int i) {
                this.mValue = i;
            }

            public final int getValue() {
                return this.mValue;
            }
        }

        int a();

        String a(it.gmariotti.cardslib.library.a.c cVar, int[] iArr);

        int b();

        b c();

        a d();
    }

    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$d.class */
    public interface d {
        void a(Parcelable parcelable);
    }

    public f(View view, d dVar) {
        this(view, dVar, null);
    }

    public f(View view, d dVar, c cVar) {
        this.f36545d = new Handler();
        this.j = new Runnable() { // from class: it.gmariotti.cardslib.library.view.listener.f.4
            @Override // java.lang.Runnable
            public final void run() {
                f.this.a(false);
            }
        };
        this.f36542a = view;
        this.f36544c = view.animate();
        this.e = dVar;
        c aVar = cVar == null ? new a() : cVar;
        this.i = aVar;
        this.f36543b = (TextView) this.f36542a.findViewById(aVar.a());
        this.f36542a.findViewById(this.i.b()).setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.listener.f.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                f.this.a(false);
                f.this.e.a(f.this.g);
                f.this.g = null;
            }
        });
        if (this.i.d() == c.a.TOPBOTTOM) {
            View view2 = this.f36542a;
            view2.setTranslationY(view2.getHeight());
        }
        if (!(this.i.c() == c.b.NONE || this.f36542a == null)) {
            if (this.i.c() == c.b.LEFTRIGHT) {
                View view3 = this.f36542a;
                view3.setOnTouchListener(new it.gmariotti.cardslib.library.view.listener.c(view3, null, new c.a() { // from class: it.gmariotti.cardslib.library.view.listener.f.5
                    @Override // it.gmariotti.cardslib.library.view.listener.c.a
                    public final boolean a() {
                        return f.this.i.c() != c.b.NONE;
                    }

                    @Override // it.gmariotti.cardslib.library.view.listener.c.a
                    public final void b() {
                        f.this.a(true);
                        f.this.e.a(f.this.g);
                        f.this.g = null;
                    }
                }));
            } else if (this.i.c() == c.b.TOPBOTTOM) {
                View view4 = this.f36542a;
                view4.setOnTouchListener(new it.gmariotti.cardslib.library.view.listener.b(view4, null, new b.a() { // from class: it.gmariotti.cardslib.library.view.listener.f.6
                    @Override // it.gmariotti.cardslib.library.view.listener.b.a
                    public final boolean a() {
                        return f.this.i.c() != c.b.NONE;
                    }

                    @Override // it.gmariotti.cardslib.library.view.listener.b.a
                    public final void b() {
                        f.this.a(true);
                        f.this.e.a(f.this.g);
                        f.this.g = null;
                    }
                }));
            }
        }
        a(true);
    }

    public final void a(boolean z) {
        this.f36545d.removeCallbacks(this.j);
        if (z) {
            this.f36542a.setVisibility(8);
            this.f36542a.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.h = null;
            b bVar = this.f;
            if (bVar != null) {
                bVar.a(this.g == null);
            }
            this.f = null;
            this.g = null;
            return;
        }
        this.f36544c.cancel();
        if (this.i.d() == c.a.ALPHA) {
            this.f36544c.alpha(BitmapDescriptorFactory.HUE_RED).setDuration(this.f36542a.getResources().getInteger(17694720)).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.f.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    f.this.f36542a.setVisibility(8);
                    f.this.h = null;
                    if (f.this.f != null) {
                        f.this.f.a(f.this.g == null);
                    }
                    f.this.f = null;
                    f.this.g = null;
                }
            });
        } else if (this.i.d() == c.a.TOPBOTTOM) {
            this.f36544c.alpha(BitmapDescriptorFactory.HUE_RED).translationY(this.f36542a.getHeight()).setDuration(this.f36542a.getResources().getInteger(17694720)).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.f.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    f.this.f36542a.setVisibility(8);
                    f.this.h = null;
                    if (f.this.f != null) {
                        f.this.f.a(f.this.g == null);
                    }
                    f.this.f = null;
                    f.this.g = null;
                }
            });
        }
    }
}
