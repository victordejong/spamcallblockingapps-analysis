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
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController.class */
public class SlideAnsweringMethodViewController extends BaseAnsweringMethodViewController {

    /* renamed from: a */
    private float f21969a;

    /* renamed from: b */
    private float f21970b;

    /* renamed from: c */
    private int f21971c;

    /* renamed from: d */
    private int f21972d;

    /* renamed from: e */
    private float f21973e;

    /* renamed from: f */
    private int f21974f;

    /* renamed from: g */
    private final Animation f21975g;

    /* renamed from: h */
    private ImageView f21976h;

    /* renamed from: i */
    private ImageView f21977i;

    /* renamed from: j */
    private RelativeLayout f21978j;

    /* renamed from: k */
    private CallIncomingIndicatorView f21979k;

    /* renamed from: l */
    private CallIncomingIndicatorView f21980l;

    /* renamed from: m */
    private boolean f21981m;

    public SlideAnsweringMethodViewController(ViewGroup viewGroup, ButtonSet buttonSet, InCallActionFragment.InCallActionFragmentInterface inCallActionFragmentInterface) {
        super(viewGroup, inCallActionFragmentInterface);
        float f;
        float f2;
        boolean booleanValue = Prefs.f26493fE.get().booleanValue();
        getRootView().setOnTouchListener(booleanValue ? new SingleAndMultiOnTouchListener() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.SlideAnsweringMethodViewController.1
            @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
            /* renamed from: a */
            public final boolean mo26614a(View view, MotionEvent motionEvent, boolean z) {
                float f3;
                int i;
                if (z) {
                    return true;
                }
                int width = SlideAnsweringMethodViewController.this.f21978j.getWidth();
                int height = SlideAnsweringMethodViewController.this.f21978j.getHeight();
                int action = motionEvent.getAction();
                if (action == 0) {
                    SlideAnsweringMethodViewController slideAnsweringMethodViewController = SlideAnsweringMethodViewController.this;
                    slideAnsweringMethodViewController.f21969a = slideAnsweringMethodViewController.f21978j.getX() - motionEvent.getRawX();
                    SlideAnsweringMethodViewController.this.f21978j.clearAnimation();
                    return true;
                }
                boolean z2 = false;
                if (action != 1) {
                    if (action != 2) {
                        return false;
                    }
                    float rawX = motionEvent.getRawX() + SlideAnsweringMethodViewController.this.f21969a;
                    if (width != SlideAnsweringMethodViewController.this.f21971c || height != SlideAnsweringMethodViewController.this.f21972d) {
                        float f4 = rawX;
                        if (rawX > SlideAnsweringMethodViewController.this.f21973e) {
                            f4 = SlideAnsweringMethodViewController.this.f21973e;
                        }
                        float f5 = f4;
                        if (f4 < SlideAnsweringMethodViewController.this.f21970b) {
                            f5 = SlideAnsweringMethodViewController.this.f21970b;
                        }
                        SlideAnsweringMethodViewController.this.f21978j.animate().x(f5).setDuration(0L).start();
                        float f6 = (SlideAnsweringMethodViewController.this.f21971c - width) / 2;
                        if (f5 > f6) {
                            z2 = true;
                        }
                        if (z2) {
                            i = -16711936;
                            f3 = (f5 - f6) / (SlideAnsweringMethodViewController.this.f21973e - f6);
                        } else {
                            i = -65536;
                            f3 = (f6 - f5) / (f6 - SlideAnsweringMethodViewController.this.f21970b);
                        }
                        int intValue = ((Integer) new ArgbEvaluator().evaluate(f3, -1, Integer.valueOf(i))).intValue();
                        if (f3 > 0.2d) {
                            SlideAnsweringMethodViewController.this.f21974f = intValue;
                            SlideAnsweringMethodViewController.this.f21976h.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
                            if (SlideAnsweringMethodViewController.this.f21977i.getVisibility() == 0) {
                                SlideAnsweringMethodViewController.this.f21977i.setColorFilter(new PorterDuffColorFilter(intValue, PorterDuff.Mode.SRC_ATOP));
                            } else {
                                SlideAnsweringMethodViewController.this.f21976h.setColorFilter(new PorterDuffColorFilter(intValue, PorterDuff.Mode.SRC_ATOP));
                            }
                        }
                        SlideAnsweringMethodViewController.this.f21976h.invalidate();
                        SlideAnsweringMethodViewController.this.f21977i.invalidate();
                        return true;
                    }
                }
                if (SlideAnsweringMethodViewController.this.f21978j.getX() == SlideAnsweringMethodViewController.this.f21973e) {
                    InCallActionFragment.InCallActionFragmentInterface callback = SlideAnsweringMethodViewController.this.getCallback();
                    if (callback != null) {
                        callback.onActionSelected(1);
                    }
                } else if (SlideAnsweringMethodViewController.this.f21978j.getX() == SlideAnsweringMethodViewController.this.f21970b) {
                    InCallActionFragment.InCallActionFragmentInterface callback2 = SlideAnsweringMethodViewController.this.getCallback();
                    if (callback2 != null) {
                        callback2.onActionSelected(0);
                    }
                } else {
                    SlideAnsweringMethodViewController.this.f21978j.animate().x((SlideAnsweringMethodViewController.this.f21971c - SlideAnsweringMethodViewController.this.f21978j.getWidth()) / 2).y((SlideAnsweringMethodViewController.this.f21972d - SlideAnsweringMethodViewController.this.f21978j.getHeight()) / 2).setDuration(200L).start();
                    if (!SlideAnsweringMethodViewController.this.f21981m) {
                        SlideAnsweringMethodViewController.this.f21978j.startAnimation(SlideAnsweringMethodViewController.this.f21975g);
                    }
                }
                SlideAnsweringMethodViewController.m30874f(SlideAnsweringMethodViewController.this);
                return false;
            }

            @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
            /* renamed from: a */
            public final boolean mo26613a(boolean z) {
                if (!z) {
                    SlideAnsweringMethodViewController.this.f21978j.animate().x((SlideAnsweringMethodViewController.this.f21971c - SlideAnsweringMethodViewController.this.f21978j.getWidth()) / 2).y((SlideAnsweringMethodViewController.this.f21972d - SlideAnsweringMethodViewController.this.f21978j.getHeight()) / 2).setDuration(200L).start();
                    if (!SlideAnsweringMethodViewController.this.f21981m) {
                        SlideAnsweringMethodViewController.this.f21978j.startAnimation(SlideAnsweringMethodViewController.this.f21975g);
                    }
                    SlideAnsweringMethodViewController.m30874f(SlideAnsweringMethodViewController.this);
                    return true;
                }
                return true;
            }
        } : new SingleAndMultiOnTouchListener() { // from class: com.callapp.contacts.activity.contact.details.incallfragment.SlideAnsweringMethodViewController.2
            @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
            /* renamed from: a */
            public final boolean mo26614a(View view, MotionEvent motionEvent, boolean z) {
                float f3;
                int i;
                if (z) {
                    return true;
                }
                int width = SlideAnsweringMethodViewController.this.f21978j.getWidth();
                int height = SlideAnsweringMethodViewController.this.f21978j.getHeight();
                int action = motionEvent.getAction();
                if (action == 0) {
                    SlideAnsweringMethodViewController slideAnsweringMethodViewController = SlideAnsweringMethodViewController.this;
                    slideAnsweringMethodViewController.f21969a = slideAnsweringMethodViewController.f21978j.getY() - motionEvent.getRawY();
                    SlideAnsweringMethodViewController.this.f21978j.clearAnimation();
                    return true;
                }
                boolean z2 = false;
                if (action != 1) {
                    if (action != 2) {
                        return false;
                    }
                    float rawY = motionEvent.getRawY() + SlideAnsweringMethodViewController.this.f21969a;
                    if (width != SlideAnsweringMethodViewController.this.f21971c || height != SlideAnsweringMethodViewController.this.f21972d) {
                        float f4 = rawY;
                        if (rawY > SlideAnsweringMethodViewController.this.f21973e) {
                            f4 = SlideAnsweringMethodViewController.this.f21973e;
                        }
                        float f5 = f4;
                        if (f4 < SlideAnsweringMethodViewController.this.f21970b) {
                            f5 = SlideAnsweringMethodViewController.this.f21970b;
                        }
                        SlideAnsweringMethodViewController.this.f21978j.animate().y(f5).setDuration(0L).start();
                        float f6 = SlideAnsweringMethodViewController.this.f21972d / 3;
                        if (f5 > f6) {
                            z2 = true;
                        }
                        if (z2) {
                            i = -16711936;
                            f3 = (f5 - f6) / (SlideAnsweringMethodViewController.this.f21973e - f6);
                        } else {
                            i = -65536;
                            f3 = (f6 - f5) / (f6 - SlideAnsweringMethodViewController.this.f21970b);
                        }
                        int intValue = ((Integer) new ArgbEvaluator().evaluate(f3, -1, Integer.valueOf(i))).intValue();
                        if (f3 > 0.2d) {
                            SlideAnsweringMethodViewController.this.f21974f = intValue;
                            SlideAnsweringMethodViewController.this.f21976h.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
                            if (SlideAnsweringMethodViewController.this.f21977i.getVisibility() == 0) {
                                SlideAnsweringMethodViewController.this.f21977i.setColorFilter(new PorterDuffColorFilter(intValue, PorterDuff.Mode.SRC_ATOP));
                            } else {
                                SlideAnsweringMethodViewController.this.f21976h.setColorFilter(new PorterDuffColorFilter(intValue, PorterDuff.Mode.SRC_ATOP));
                            }
                        }
                        CLog.m27611a(InCallActionFragment.class, "percentage ".concat(String.valueOf(f3)));
                        SlideAnsweringMethodViewController.this.f21976h.invalidate();
                        SlideAnsweringMethodViewController.this.f21977i.invalidate();
                        return true;
                    }
                }
                if (SlideAnsweringMethodViewController.this.f21978j.getY() == SlideAnsweringMethodViewController.this.f21973e) {
                    InCallActionFragment.InCallActionFragmentInterface callback = SlideAnsweringMethodViewController.this.getCallback();
                    if (callback != null) {
                        callback.onActionSelected(1);
                    }
                } else if (SlideAnsweringMethodViewController.this.f21978j.getY() == SlideAnsweringMethodViewController.this.f21970b) {
                    InCallActionFragment.InCallActionFragmentInterface callback2 = SlideAnsweringMethodViewController.this.getCallback();
                    if (callback2 != null) {
                        callback2.onActionSelected(0);
                    }
                } else {
                    SlideAnsweringMethodViewController.this.f21978j.animate().x((SlideAnsweringMethodViewController.this.f21971c - SlideAnsweringMethodViewController.this.f21978j.getWidth()) / 2).y((SlideAnsweringMethodViewController.this.f21972d - SlideAnsweringMethodViewController.this.f21978j.getHeight()) / 2).setDuration(200L).start();
                    if (!SlideAnsweringMethodViewController.this.f21981m) {
                        SlideAnsweringMethodViewController.this.f21978j.startAnimation(SlideAnsweringMethodViewController.this.f21975g);
                    }
                }
                SlideAnsweringMethodViewController.m30874f(SlideAnsweringMethodViewController.this);
                return false;
            }

            @Override // com.callapp.contacts.widget.SingleAndMultiOnTouchListener
            /* renamed from: a */
            public final boolean mo26613a(boolean z) {
                if (!z) {
                    SlideAnsweringMethodViewController.this.f21978j.animate().x((SlideAnsweringMethodViewController.this.f21971c - SlideAnsweringMethodViewController.this.f21978j.getWidth()) / 2).y((SlideAnsweringMethodViewController.this.f21972d - SlideAnsweringMethodViewController.this.f21978j.getHeight()) / 2).setDuration(200L).start();
                    if (!SlideAnsweringMethodViewController.this.f21981m) {
                        SlideAnsweringMethodViewController.this.f21978j.startAnimation(SlideAnsweringMethodViewController.this.f21975g);
                    }
                    SlideAnsweringMethodViewController.m30874f(SlideAnsweringMethodViewController.this);
                    return true;
                }
                return true;
            }
        });
        this.f21971c = getResources().getDisplayMetrics().widthPixels;
        this.f21972d = getResources().getDimensionPixelOffset(2131165710);
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), 2130772005);
        this.f21975g = loadAnimation;
        this.f21976h = (ImageView) mo26540a(2131362193);
        this.f21977i = (ImageView) mo26540a(2131362192);
        this.f21978j = (RelativeLayout) mo26540a(2131362191);
        boolean isGif = buttonSet.isGif();
        this.f21981m = isGif;
        if (!isGif) {
            this.f21978j.startAnimation(loadAnimation);
        }
        this.f21979k = (CallIncomingIndicatorView) mo26540a(2131362023);
        this.f21980l = (CallIncomingIndicatorView) mo26540a(2131362025);
        this.f21979k.startAnimation();
        this.f21980l.startAnimation();
        this.f21970b = booleanValue ? this.f21971c * 0.2f : 0.0f;
        if (booleanValue) {
            f2 = this.f21971c;
            f = 0.6f;
        } else {
            f2 = this.f21972d;
            f = 0.66f;
        }
        this.f21973e = f2 * f;
        if (this.f21981m) {
            this.f21977i.setVisibility(8);
            this.f21976h.setColorFilter((ColorFilter) null);
            this.f21976h.setLayoutParams(this.f21977i.getLayoutParams());
            new GlideUtils.GifPlayer(this.f21976h.getContext(), this.f21976h, buttonSet.getAnswerResourceUrl(), buttonSet.getAnswerCallDrawableRes(), -1, true);
        } else if (buttonSet.getAnswerCallDrawableRes() == 2131231504 || !buttonSet.shouldHideBackground()) {
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f21977i, buttonSet.getAnswerCallDrawableRes(), viewGroup.getContext());
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
            this.f21976h.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099917), PorterDuff.Mode.SRC_IN));
            this.f21977i.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_ATOP));
        } else {
            this.f21977i.setVisibility(8);
            GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(this.f21976h, buttonSet.getAnswerCallDrawableRes(), viewGroup.getContext());
            glideRequestBuilder2.f28251q = true;
            glideRequestBuilder2.m27013d();
            this.f21976h.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131100228), PorterDuff.Mode.SRC_ATOP));
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m30883a(ValueAnimator valueAnimator) {
        if (this.f21981m) {
            this.f21976h.setColorFilter((ColorFilter) null);
        } else {
            this.f21976h.setColorFilter(new PorterDuffColorFilter(((Integer) valueAnimator.getAnimatedValue()).intValue(), PorterDuff.Mode.SRC_ATOP));
        }
        this.f21976h.invalidate();
    }

    /* renamed from: b */
    public /* synthetic */ void m30879b(ValueAnimator valueAnimator) {
        this.f21977i.setColorFilter(new PorterDuffColorFilter(((Integer) valueAnimator.getAnimatedValue()).intValue(), PorterDuff.Mode.SRC_ATOP));
        this.f21977i.invalidate();
    }

    /* renamed from: f */
    static /* synthetic */ void m30874f(SlideAnsweringMethodViewController slideAnsweringMethodViewController) {
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(new ColorDrawable(slideAnsweringMethodViewController.f21974f).getColor()), -1);
        ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$SlideAnsweringMethodViewController$Lme_BZW5ZBugSeWy8rVnUPE5uXs
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SlideAnsweringMethodViewController.this.m30879b(valueAnimator);
            }
        });
        ValueAnimator ofObject2 = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(new ColorDrawable(-1).getColor()), Integer.valueOf(ThemeUtils.getColor(slideAnsweringMethodViewController.f21977i.getVisibility() == 0 ? 2131099917 : 2131100228)));
        ofObject2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.activity.contact.details.incallfragment._$$Lambda$SlideAnsweringMethodViewController$il_FWnPuxmK4YzeyaueA0Mb5sjE
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SlideAnsweringMethodViewController.this.m30883a(valueAnimator);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofObject, ofObject2);
        animatorSet.setDuration(500L);
        animatorSet.start();
    }

    @Override // com.callapp.contacts.activity.contact.details.incallfragment.BaseAnsweringMethodViewController
    /* renamed from: a */
    public final void mo30868a() {
        this.f21979k.stopAnimation();
        this.f21980l.stopAnimation();
        this.f21978j.clearAnimation();
        this.f21975g.cancel();
        super.mo30868a();
    }

    @Override // com.callapp.contacts.activity.contact.details.incallfragment.BaseAnsweringMethodViewController
    protected int getLayoutResource() {
        return Prefs.f26493fE.get().booleanValue() ? 2131558785 : 2131558787;
    }
}
