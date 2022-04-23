package com.callapp.contacts.activity.contact.details.incallfragment;

import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment;
import com.callapp.contacts.activity.marketplace.ButtonSet;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.widget.CallIncomingIndicatorView;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.SingleAndMultiOnTouchListener;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController.class */
public class SlideAnsweringMethodViewController extends BaseAnsweringMethodViewController {

    /* renamed from: a  reason: collision with root package name */
    private float f12204a;

    /* renamed from: b  reason: collision with root package name */
    private float f12205b;

    /* renamed from: c  reason: collision with root package name */
    private int f12206c;

    /* renamed from: d  reason: collision with root package name */
    private int f12207d;
    private float e;
    private int f;
    private final Animation g;
    private ImageView h;
    private ImageView i;
    private RelativeLayout j;
    private CallIncomingIndicatorView k;
    private CallIncomingIndicatorView l;
    private boolean m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SlideAnsweringMethodViewController(ViewGroup viewGroup, ButtonSet buttonSet, InCallActionFragment.InCallActionFragmentInterface inCallActionFragmentInterface) {
        super(viewGroup, inCallActionFragmentInterface);
        float f;
        float f2;
        boolean booleanValue = Prefs.fE.get().booleanValue();
        getRootView().setOnTouchListener(booleanValue ? new SingleAndMultiOnTouchListener() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.SlideAnsweringMethodViewController.1
            @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
            public final boolean a(View view, MotionEvent motionEvent, boolean z) {
                float f3;
                int i;
                if (z) {
                    return true;
                }
                int width = SlideAnsweringMethodViewController.this.j.getWidth();
                int height = SlideAnsweringMethodViewController.this.j.getHeight();
                int action = motionEvent.getAction();
                if (action != 0) {
                    boolean z2 = false;
                    if (action != 1) {
                        if (action != 2) {
                            return false;
                        }
                        float rawX = motionEvent.getRawX() + SlideAnsweringMethodViewController.this.f12204a;
                        if (!(width == SlideAnsweringMethodViewController.this.f12206c && height == SlideAnsweringMethodViewController.this.f12207d)) {
                            float f4 = rawX;
                            if (rawX > SlideAnsweringMethodViewController.this.e) {
                                f4 = SlideAnsweringMethodViewController.this.e;
                            }
                            float f5 = f4;
                            if (f4 < SlideAnsweringMethodViewController.this.f12205b) {
                                f5 = SlideAnsweringMethodViewController.this.f12205b;
                            }
                            SlideAnsweringMethodViewController.this.j.animate().x(f5).setDuration(0L).start();
                            float f6 = (SlideAnsweringMethodViewController.this.f12206c - width) / 2;
                            if (f5 > f6) {
                                z2 = true;
                            }
                            if (z2) {
                                i = -16711936;
                                f3 = (f5 - f6) / (SlideAnsweringMethodViewController.this.e - f6);
                            } else {
                                i = -65536;
                                f3 = (f6 - f5) / (f6 - SlideAnsweringMethodViewController.this.f12205b);
                            }
                            int intValue = ((Integer) new ArgbEvaluator().evaluate(f3, -1, Integer.valueOf(i))).intValue();
                            if (f3 > 0.2d) {
                                SlideAnsweringMethodViewController.this.f = intValue;
                                SlideAnsweringMethodViewController.this.h.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
                                if (SlideAnsweringMethodViewController.this.i.getVisibility() == 0) {
                                    SlideAnsweringMethodViewController.this.i.setColorFilter(new PorterDuffColorFilter(intValue, PorterDuff.Mode.SRC_ATOP));
                                } else {
                                    SlideAnsweringMethodViewController.this.h.setColorFilter(new PorterDuffColorFilter(intValue, PorterDuff.Mode.SRC_ATOP));
                                }
                            }
                            SlideAnsweringMethodViewController.this.h.invalidate();
                            SlideAnsweringMethodViewController.this.i.invalidate();
                            return true;
                        }
                    }
                    if (SlideAnsweringMethodViewController.this.j.getX() == SlideAnsweringMethodViewController.this.e) {
                        InCallActionFragment.InCallActionFragmentInterface callback = SlideAnsweringMethodViewController.this.getCallback();
                        if (callback != null) {
                            callback.onActionSelected(1);
                        }
                    } else if (SlideAnsweringMethodViewController.this.j.getX() == SlideAnsweringMethodViewController.this.f12205b) {
                        InCallActionFragment.InCallActionFragmentInterface callback2 = SlideAnsweringMethodViewController.this.getCallback();
                        if (callback2 != null) {
                            callback2.onActionSelected(0);
                        }
                    } else {
                        SlideAnsweringMethodViewController.this.j.animate().x((SlideAnsweringMethodViewController.this.f12206c - SlideAnsweringMethodViewController.this.j.getWidth()) / 2).y((SlideAnsweringMethodViewController.this.f12207d - SlideAnsweringMethodViewController.this.j.getHeight()) / 2).setDuration(200L).start();
                        if (!SlideAnsweringMethodViewController.this.m) {
                            SlideAnsweringMethodViewController.this.j.startAnimation(SlideAnsweringMethodViewController.this.g);
                        }
                    }
                    SlideAnsweringMethodViewController.f(SlideAnsweringMethodViewController.this);
                    return false;
                }
                SlideAnsweringMethodViewController slideAnsweringMethodViewController = SlideAnsweringMethodViewController.this;
                slideAnsweringMethodViewController.f12204a = slideAnsweringMethodViewController.j.getX() - motionEvent.getRawX();
                SlideAnsweringMethodViewController.this.j.clearAnimation();
                return true;
            }

            @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
            public final boolean a(boolean z) {
                if (z) {
                    return true;
                }
                SlideAnsweringMethodViewController.this.j.animate().x((SlideAnsweringMethodViewController.this.f12206c - SlideAnsweringMethodViewController.this.j.getWidth()) / 2).y((SlideAnsweringMethodViewController.this.f12207d - SlideAnsweringMethodViewController.this.j.getHeight()) / 2).setDuration(200L).start();
                if (!SlideAnsweringMethodViewController.this.m) {
                    SlideAnsweringMethodViewController.this.j.startAnimation(SlideAnsweringMethodViewController.this.g);
                }
                SlideAnsweringMethodViewController.f(SlideAnsweringMethodViewController.this);
                return true;
            }
        } : new SingleAndMultiOnTouchListener() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.SlideAnsweringMethodViewController.2
            @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
            public final boolean a(View view, MotionEvent motionEvent, boolean z) {
                float f3;
                int i;
                if (z) {
                    return true;
                }
                int width = SlideAnsweringMethodViewController.this.j.getWidth();
                int height = SlideAnsweringMethodViewController.this.j.getHeight();
                int action = motionEvent.getAction();
                if (action != 0) {
                    boolean z2 = false;
                    if (action != 1) {
                        if (action != 2) {
                            return false;
                        }
                        float rawY = motionEvent.getRawY() + SlideAnsweringMethodViewController.this.f12204a;
                        if (!(width == SlideAnsweringMethodViewController.this.f12206c && height == SlideAnsweringMethodViewController.this.f12207d)) {
                            float f4 = rawY;
                            if (rawY > SlideAnsweringMethodViewController.this.e) {
                                f4 = SlideAnsweringMethodViewController.this.e;
                            }
                            float f5 = f4;
                            if (f4 < SlideAnsweringMethodViewController.this.f12205b) {
                                f5 = SlideAnsweringMethodViewController.this.f12205b;
                            }
                            SlideAnsweringMethodViewController.this.j.animate().y(f5).setDuration(0L).start();
                            float f6 = SlideAnsweringMethodViewController.this.f12207d / 3;
                            if (f5 > f6) {
                                z2 = true;
                            }
                            if (z2) {
                                i = -16711936;
                                f3 = (f5 - f6) / (SlideAnsweringMethodViewController.this.e - f6);
                            } else {
                                i = -65536;
                                f3 = (f6 - f5) / (f6 - SlideAnsweringMethodViewController.this.f12205b);
                            }
                            int intValue = ((Integer) new ArgbEvaluator().evaluate(f3, -1, Integer.valueOf(i))).intValue();
                            if (f3 > 0.2d) {
                                SlideAnsweringMethodViewController.this.f = intValue;
                                SlideAnsweringMethodViewController.this.h.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
                                if (SlideAnsweringMethodViewController.this.i.getVisibility() == 0) {
                                    SlideAnsweringMethodViewController.this.i.setColorFilter(new PorterDuffColorFilter(intValue, PorterDuff.Mode.SRC_ATOP));
                                } else {
                                    SlideAnsweringMethodViewController.this.h.setColorFilter(new PorterDuffColorFilter(intValue, PorterDuff.Mode.SRC_ATOP));
                                }
                            }
                            CLog.a(InCallActionFragment.class, "percentage ".concat(String.valueOf(f3)));
                            SlideAnsweringMethodViewController.this.h.invalidate();
                            SlideAnsweringMethodViewController.this.i.invalidate();
                            return true;
                        }
                    }
                    if (SlideAnsweringMethodViewController.this.j.getY() == SlideAnsweringMethodViewController.this.e) {
                        InCallActionFragment.InCallActionFragmentInterface callback = SlideAnsweringMethodViewController.this.getCallback();
                        if (callback != null) {
                            callback.onActionSelected(1);
                        }
                    } else if (SlideAnsweringMethodViewController.this.j.getY() == SlideAnsweringMethodViewController.this.f12205b) {
                        InCallActionFragment.InCallActionFragmentInterface callback2 = SlideAnsweringMethodViewController.this.getCallback();
                        if (callback2 != null) {
                            callback2.onActionSelected(0);
                        }
                    } else {
                        SlideAnsweringMethodViewController.this.j.animate().x((SlideAnsweringMethodViewController.this.f12206c - SlideAnsweringMethodViewController.this.j.getWidth()) / 2).y((SlideAnsweringMethodViewController.this.f12207d - SlideAnsweringMethodViewController.this.j.getHeight()) / 2).setDuration(200L).start();
                        if (!SlideAnsweringMethodViewController.this.m) {
                            SlideAnsweringMethodViewController.this.j.startAnimation(SlideAnsweringMethodViewController.this.g);
                        }
                    }
                    SlideAnsweringMethodViewController.f(SlideAnsweringMethodViewController.this);
                    return false;
                }
                SlideAnsweringMethodViewController slideAnsweringMethodViewController = SlideAnsweringMethodViewController.this;
                slideAnsweringMethodViewController.f12204a = slideAnsweringMethodViewController.j.getY() - motionEvent.getRawY();
                SlideAnsweringMethodViewController.this.j.clearAnimation();
                return true;
            }

            @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
            public final boolean a(boolean z) {
                if (z) {
                    return true;
                }
                SlideAnsweringMethodViewController.this.j.animate().x((SlideAnsweringMethodViewController.this.f12206c - SlideAnsweringMethodViewController.this.j.getWidth()) / 2).y((SlideAnsweringMethodViewController.this.f12207d - SlideAnsweringMethodViewController.this.j.getHeight()) / 2).setDuration(200L).start();
                if (!SlideAnsweringMethodViewController.this.m) {
                    SlideAnsweringMethodViewController.this.j.startAnimation(SlideAnsweringMethodViewController.this.g);
                }
                SlideAnsweringMethodViewController.f(SlideAnsweringMethodViewController.this);
                return true;
            }
        });
        this.f12206c = getResources().getDisplayMetrics().widthPixels;
        this.f12207d = getResources().getDimensionPixelOffset(2131165710);
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), 2130772005);
        this.g = loadAnimation;
        this.h = (ImageView) a(2131362193);
        this.i = (ImageView) a(2131362192);
        this.j = (RelativeLayout) a(2131362191);
        boolean isGif = buttonSet.isGif();
        this.m = isGif;
        if (!isGif) {
            this.j.startAnimation(loadAnimation);
        }
        this.k = (CallIncomingIndicatorView) a(2131362023);
        this.l = (CallIncomingIndicatorView) a(2131362025);
        this.k.startAnimation();
        this.l.startAnimation();
        this.f12205b = booleanValue ? this.f12206c * 0.2f : BitmapDescriptorFactory.HUE_RED;
        if (booleanValue) {
            f2 = this.f12206c;
            f = 0.6f;
        } else {
            f2 = this.f12207d;
            f = 0.66f;
        }
        this.e = f2 * f;
        if (this.m) {
            this.i.setVisibility(8);
            this.h.setColorFilter((ColorFilter) null);
            this.h.setLayoutParams(this.i.getLayoutParams());
            new GlideUtils.GifPlayer(this.h.getContext(), this.h, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
        } else if (buttonSet.getAnswerCallDrawableRes() == 2131231504 || !buttonSet.shouldHideBackground()) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.i, buttonSet.getAnswerCallDrawableRes(), viewGroup.getContext());
            glideRequestBuilder.q = true;
            glideRequestBuilder.d();
            this.h.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099917), PorterDuff.Mode.SRC_IN));
            this.i.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_ATOP));
        } else {
            this.i.setVisibility(8);
            GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(this.h, buttonSet.getAnswerCallDrawableRes(), viewGroup.getContext());
            glideRequestBuilder2.q = true;
            glideRequestBuilder2.d();
            this.h.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_ATOP));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        if (this.m) {
            this.h.setColorFilter((ColorFilter) null);
        } else {
            this.h.setColorFilter(new PorterDuffColorFilter(((Integer) valueAnimator.getAnimatedValue()).intValue(), PorterDuff.Mode.SRC_ATOP));
        }
        this.h.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        this.i.setColorFilter(new PorterDuffColorFilter(((Integer) valueAnimator.getAnimatedValue()).intValue(), PorterDuff.Mode.SRC_ATOP));
        this.i.invalidate();
    }

    static /* synthetic */ void f(final SlideAnsweringMethodViewController slideAnsweringMethodViewController) {
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(new ColorDrawable(slideAnsweringMethodViewController.f).getColor()), -1);
        ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$SlideAnsweringMethodViewController$Lme_BZW5ZBugSeWy8rVnUPE5uXs
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SlideAnsweringMethodViewController.this.b(valueAnimator);
            }
        });
        ValueAnimator ofObject2 = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(new ColorDrawable(-1).getColor()), Integer.valueOf(ThemeUtils.getColor(slideAnsweringMethodViewController.i.getVisibility() == 0 ? 2131099917 : 2131100228)));
        ofObject2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$SlideAnsweringMethodViewController$il_FWnPuxmK4YzeyaueA0Mb5sjE
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SlideAnsweringMethodViewController.this.a(valueAnimator);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofObject, ofObject2);
        animatorSet.setDuration(500L);
        animatorSet.start();
    }

    @Override // com.callapp.contacts.activity.contact.details.incallfragment.BaseAnsweringMethodViewController
    public final void a() {
        this.k.stopAnimation();
        this.l.stopAnimation();
        this.j.clearAnimation();
        this.g.cancel();
        super.a();
    }

    @Override // com.callapp.contacts.activity.contact.details.incallfragment.BaseAnsweringMethodViewController
    protected int getLayoutResource() {
        return Prefs.fE.get().booleanValue() ? 2131558785 : 2131558787;
    }
}
