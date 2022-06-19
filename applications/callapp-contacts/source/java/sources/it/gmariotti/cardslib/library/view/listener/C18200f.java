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
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18083c;
import it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18184b;
import it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18189c;
/* renamed from: it.gmariotti.cardslib.library.view.listener.f */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f.class */
public final class C18200f {

    /* renamed from: a */
    public View f63311a;

    /* renamed from: b */
    public TextView f63312b;

    /* renamed from: c */
    public ViewPropertyAnimator f63313c;

    /* renamed from: d */
    public Handler f63314d;

    /* renamed from: e */
    AbstractC18212d f63315e;

    /* renamed from: f */
    public AbstractC18208b f63316f;

    /* renamed from: g */
    public Parcelable f63317g;

    /* renamed from: h */
    public CharSequence f63318h;

    /* renamed from: i */
    public AbstractC18209c f63319i;

    /* renamed from: j */
    public Runnable f63320j;

    /* renamed from: it.gmariotti.cardslib.library.view.listener.f$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$a.class */
    public static final class C18207a implements AbstractC18209c {
        @Override // it.gmariotti.cardslib.library.view.listener.C18200f.AbstractC18209c
        /* renamed from: a */
        public final int mo4310a() {
            return C18061a.C18064c.list_card_undobar_message;
        }

        @Override // it.gmariotti.cardslib.library.view.listener.C18200f.AbstractC18209c
        /* renamed from: a */
        public final String mo4309a(C18083c c18083c, int[] iArr) {
            Resources resources;
            if (c18083c == null || c18083c.getContext() == null || (resources = c18083c.getContext().getResources()) == null) {
                return null;
            }
            return resources.getQuantityString(C18061a.C18067f.list_card_undo_items, iArr.length, Integer.valueOf(iArr.length));
        }

        @Override // it.gmariotti.cardslib.library.view.listener.C18200f.AbstractC18209c
        /* renamed from: b */
        public final int mo4308b() {
            return C18061a.C18064c.list_card_undobar_button;
        }

        @Override // it.gmariotti.cardslib.library.view.listener.C18200f.AbstractC18209c
        /* renamed from: c */
        public final AbstractC18209c.EnumC18211b mo4307c() {
            return AbstractC18209c.EnumC18211b.NONE;
        }

        @Override // it.gmariotti.cardslib.library.view.listener.C18200f.AbstractC18209c
        /* renamed from: d */
        public final AbstractC18209c.EnumC18210a mo4306d() {
            return AbstractC18209c.EnumC18210a.ALPHA;
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.listener.f$b */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$b.class */
    public interface AbstractC18208b {
        /* renamed from: a */
        void mo4311a(boolean z);
    }

    /* renamed from: it.gmariotti.cardslib.library.view.listener.f$c */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$c.class */
    public interface AbstractC18209c {

        /* renamed from: it.gmariotti.cardslib.library.view.listener.f$c$a */
        /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$c$a.class */
        public enum EnumC18210a {
            ALPHA(0),
            TOPBOTTOM(1);
            
            private final int mValue;

            EnumC18210a(int i) {
                this.mValue = i;
            }

            public final int getValue() {
                return this.mValue;
            }
        }

        /* renamed from: it.gmariotti.cardslib.library.view.listener.f$c$b */
        /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$c$b.class */
        public enum EnumC18211b {
            NONE(0),
            LEFTRIGHT(1),
            TOPBOTTOM(2);
            
            private final int mValue;

            EnumC18211b(int i) {
                this.mValue = i;
            }

            public final int getValue() {
                return this.mValue;
            }
        }

        /* renamed from: a */
        int mo4310a();

        /* renamed from: a */
        String mo4309a(C18083c c18083c, int[] iArr);

        /* renamed from: b */
        int mo4308b();

        /* renamed from: c */
        EnumC18211b mo4307c();

        /* renamed from: d */
        EnumC18210a mo4306d();
    }

    /* renamed from: it.gmariotti.cardslib.library.view.listener.f$d */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/f$d.class */
    public interface AbstractC18212d {
        /* renamed from: a */
        void mo4305a(Parcelable parcelable);
    }

    public C18200f(View view, AbstractC18212d abstractC18212d) {
        this(view, abstractC18212d, null);
    }

    public C18200f(View view, AbstractC18212d abstractC18212d, AbstractC18209c abstractC18209c) {
        this.f63314d = new Handler();
        this.f63320j = new Runnable() { // from class: it.gmariotti.cardslib.library.view.listener.f.4
            @Override // java.lang.Runnable
            public final void run() {
                C18200f.this.m4316a(false);
            }
        };
        this.f63311a = view;
        this.f63313c = view.animate();
        this.f63315e = abstractC18212d;
        C18207a c18207a = abstractC18209c == null ? new C18207a() : abstractC18209c;
        this.f63319i = c18207a;
        this.f63312b = (TextView) this.f63311a.findViewById(c18207a.mo4310a());
        this.f63311a.findViewById(this.f63319i.mo4308b()).setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.listener.f.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C18200f.this.m4316a(false);
                C18200f.this.f63315e.mo4305a(C18200f.this.f63317g);
                C18200f.this.f63317g = null;
            }
        });
        if (this.f63319i.mo4306d() == AbstractC18209c.EnumC18210a.TOPBOTTOM) {
            View view2 = this.f63311a;
            view2.setTranslationY(view2.getHeight());
        }
        if (this.f63319i.mo4307c() != AbstractC18209c.EnumC18211b.NONE && this.f63311a != null) {
            if (this.f63319i.mo4307c() == AbstractC18209c.EnumC18211b.LEFTRIGHT) {
                View view3 = this.f63311a;
                view3.setOnTouchListener(new View$OnTouchListenerC18189c(view3, null, new View$OnTouchListenerC18189c.AbstractC18193a() { // from class: it.gmariotti.cardslib.library.view.listener.f.5
                    @Override // it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18189c.AbstractC18193a
                    /* renamed from: a */
                    public final boolean mo4315a() {
                        return C18200f.this.f63319i.mo4307c() != AbstractC18209c.EnumC18211b.NONE;
                    }

                    @Override // it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18189c.AbstractC18193a
                    /* renamed from: b */
                    public final void mo4314b() {
                        C18200f.this.m4316a(true);
                        C18200f.this.f63315e.mo4305a(C18200f.this.f63317g);
                        C18200f.this.f63317g = null;
                    }
                }));
            } else if (this.f63319i.mo4307c() == AbstractC18209c.EnumC18211b.TOPBOTTOM) {
                View view4 = this.f63311a;
                view4.setOnTouchListener(new View$OnTouchListenerC18184b(view4, null, new View$OnTouchListenerC18184b.AbstractC18188a() { // from class: it.gmariotti.cardslib.library.view.listener.f.6
                    @Override // it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18184b.AbstractC18188a
                    /* renamed from: a */
                    public final boolean mo4313a() {
                        return C18200f.this.f63319i.mo4307c() != AbstractC18209c.EnumC18211b.NONE;
                    }

                    @Override // it.gmariotti.cardslib.library.view.listener.View$OnTouchListenerC18184b.AbstractC18188a
                    /* renamed from: b */
                    public final void mo4312b() {
                        C18200f.this.m4316a(true);
                        C18200f.this.f63315e.mo4305a(C18200f.this.f63317g);
                        C18200f.this.f63317g = null;
                    }
                }));
            }
        }
        m4316a(true);
    }

    /* renamed from: a */
    public final void m4316a(boolean z) {
        this.f63314d.removeCallbacks(this.f63320j);
        if (!z) {
            this.f63313c.cancel();
            if (this.f63319i.mo4306d() == AbstractC18209c.EnumC18210a.ALPHA) {
                this.f63313c.alpha(BitmapDescriptorFactory.HUE_RED).setDuration(this.f63311a.getResources().getInteger(17694720)).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.f.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        C18200f.this.f63311a.setVisibility(8);
                        C18200f.this.f63318h = null;
                        if (C18200f.this.f63316f != null) {
                            C18200f.this.f63316f.mo4311a(C18200f.this.f63317g == null);
                        }
                        C18200f.this.f63316f = null;
                        C18200f.this.f63317g = null;
                    }
                });
                return;
            } else if (this.f63319i.mo4306d() != AbstractC18209c.EnumC18210a.TOPBOTTOM) {
                return;
            } else {
                this.f63313c.alpha(BitmapDescriptorFactory.HUE_RED).translationY(this.f63311a.getHeight()).setDuration(this.f63311a.getResources().getInteger(17694720)).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.f.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        C18200f.this.f63311a.setVisibility(8);
                        C18200f.this.f63318h = null;
                        if (C18200f.this.f63316f != null) {
                            C18200f.this.f63316f.mo4311a(C18200f.this.f63317g == null);
                        }
                        C18200f.this.f63316f = null;
                        C18200f.this.f63317g = null;
                    }
                });
                return;
            }
        }
        this.f63311a.setVisibility(8);
        this.f63311a.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.f63318h = null;
        AbstractC18208b abstractC18208b = this.f63316f;
        if (abstractC18208b != null) {
            abstractC18208b.mo4311a(this.f63317g == null);
        }
        this.f63316f = null;
        this.f63317g = null;
    }
}
