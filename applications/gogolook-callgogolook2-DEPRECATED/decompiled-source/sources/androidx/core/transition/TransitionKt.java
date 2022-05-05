package androidx.core.transition;

import android.transition.Transition;
import androidx.annotation.RequiresApi;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\u001aÆ\u0001\u0010��\u001a\u00020\u0001*\u00020\u00022#\b\u0006\u0010\u0003\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u00042#\b\u0006\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u00042#\b\u0006\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u00042#\b\u0006\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u00042#\b\u0006\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0087\b\u001a2\u0010\r\u001a\u00020\u0001*\u00020\u00022#\b\u0004\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0087\b\u001a2\u0010\u000f\u001a\u00020\u0001*\u00020\u00022#\b\u0004\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0087\b\u001a2\u0010\u0010\u001a\u00020\u0001*\u00020\u00022#\b\u0004\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0087\b\u001a2\u0010\u0011\u001a\u00020\u0001*\u00020\u00022#\b\u0004\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0087\b\u001a2\u0010\u0012\u001a\u00020\u0001*\u00020\u00022#\b\u0004\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0004H\u0087\b¨\u0006\u0013"}, m815d2 = {"addListener", "Landroid/transition/Transition$TransitionListener;", "Landroid/transition/Transition;", "onEnd", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", AnimatedStateListDrawableCompat.ELEMENT_TRANSITION, "", "onStart", "onCancel", "onResume", "onPause", "doOnCancel", "action", "doOnEnd", "doOnPause", "doOnResume", "doOnStart", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/transition/TransitionKt.class */
public final class TransitionKt {
    @RequiresApi(19)
    public static final Transition.TransitionListener addListener(Transition transition, AbstractC15118l<? super Transition, C14989s> lVar, AbstractC15118l<? super Transition, C14989s> lVar2, AbstractC15118l<? super Transition, C14989s> lVar3, AbstractC15118l<? super Transition, C14989s> lVar4, AbstractC15118l<? super Transition, C14989s> lVar5) {
        C15149k.m377b(transition, "$this$addListener");
        C15149k.m377b(lVar, "onEnd");
        C15149k.m377b(lVar2, "onStart");
        C15149k.m377b(lVar3, "onCancel");
        C15149k.m377b(lVar4, "onResume");
        C15149k.m377b(lVar5, "onPause");
        TransitionKt$addListener$listener$1 transitionKt$addListener$listener$1 = new TransitionKt$addListener$listener$1(lVar, lVar4, lVar5, lVar3, lVar2);
        transition.addListener(transitionKt$addListener$listener$1);
        return transitionKt$addListener$listener$1;
    }

    public static /* synthetic */ Transition.TransitionListener addListener$default(Transition transition, AbstractC15118l lVar, AbstractC15118l lVar2, AbstractC15118l lVar3, AbstractC15118l lVar4, AbstractC15118l lVar5, int i, Object obj) {
        if ((i & 1) != 0) {
            lVar = TransitionKt$addListener$1.INSTANCE;
        }
        if ((i & 2) != 0) {
            lVar2 = TransitionKt$addListener$2.INSTANCE;
        }
        if ((i & 4) != 0) {
            lVar3 = TransitionKt$addListener$3.INSTANCE;
        }
        if ((i & 8) != 0) {
            lVar4 = TransitionKt$addListener$4.INSTANCE;
        }
        if ((i & 16) != 0) {
            lVar5 = TransitionKt$addListener$5.INSTANCE;
        }
        C15149k.m377b(transition, "$this$addListener");
        C15149k.m377b(lVar, "onEnd");
        C15149k.m377b(lVar2, "onStart");
        C15149k.m377b(lVar3, "onCancel");
        C15149k.m377b(lVar4, "onResume");
        C15149k.m377b(lVar5, "onPause");
        TransitionKt$addListener$listener$1 transitionKt$addListener$listener$1 = new TransitionKt$addListener$listener$1(lVar, lVar4, lVar5, lVar3, lVar2);
        transition.addListener(transitionKt$addListener$listener$1);
        return transitionKt$addListener$listener$1;
    }

    @RequiresApi(19)
    public static final Transition.TransitionListener doOnCancel(Transition transition, final AbstractC15118l<? super Transition, C14989s> lVar) {
        C15149k.m377b(transition, "$this$doOnCancel");
        C15149k.m377b(lVar, "action");
        Transition.TransitionListener transitionKt$doOnCancel$$inlined$addListener$1 = new Transition.TransitionListener() { // from class: androidx.core.transition.TransitionKt$doOnCancel$$inlined$addListener$1
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
                AbstractC15118l.this.invoke(transition2);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }
        };
        transition.addListener(transitionKt$doOnCancel$$inlined$addListener$1);
        return transitionKt$doOnCancel$$inlined$addListener$1;
    }

    @RequiresApi(19)
    public static final Transition.TransitionListener doOnEnd(Transition transition, final AbstractC15118l<? super Transition, C14989s> lVar) {
        C15149k.m377b(transition, "$this$doOnEnd");
        C15149k.m377b(lVar, "action");
        Transition.TransitionListener transitionKt$doOnEnd$$inlined$addListener$1 = new Transition.TransitionListener() { // from class: androidx.core.transition.TransitionKt$doOnEnd$$inlined$addListener$1
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
                AbstractC15118l.this.invoke(transition2);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }
        };
        transition.addListener(transitionKt$doOnEnd$$inlined$addListener$1);
        return transitionKt$doOnEnd$$inlined$addListener$1;
    }

    @RequiresApi(19)
    public static final Transition.TransitionListener doOnPause(Transition transition, final AbstractC15118l<? super Transition, C14989s> lVar) {
        C15149k.m377b(transition, "$this$doOnPause");
        C15149k.m377b(lVar, "action");
        Transition.TransitionListener transitionKt$doOnPause$$inlined$addListener$1 = new Transition.TransitionListener() { // from class: androidx.core.transition.TransitionKt$doOnPause$$inlined$addListener$1
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
                AbstractC15118l.this.invoke(transition2);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }
        };
        transition.addListener(transitionKt$doOnPause$$inlined$addListener$1);
        return transitionKt$doOnPause$$inlined$addListener$1;
    }

    @RequiresApi(19)
    public static final Transition.TransitionListener doOnResume(Transition transition, final AbstractC15118l<? super Transition, C14989s> lVar) {
        C15149k.m377b(transition, "$this$doOnResume");
        C15149k.m377b(lVar, "action");
        Transition.TransitionListener transitionKt$doOnResume$$inlined$addListener$1 = new Transition.TransitionListener() { // from class: androidx.core.transition.TransitionKt$doOnResume$$inlined$addListener$1
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
                AbstractC15118l.this.invoke(transition2);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }
        };
        transition.addListener(transitionKt$doOnResume$$inlined$addListener$1);
        return transitionKt$doOnResume$$inlined$addListener$1;
    }

    @RequiresApi(19)
    public static final Transition.TransitionListener doOnStart(Transition transition, final AbstractC15118l<? super Transition, C14989s> lVar) {
        C15149k.m377b(transition, "$this$doOnStart");
        C15149k.m377b(lVar, "action");
        Transition.TransitionListener transitionKt$doOnStart$$inlined$addListener$1 = new Transition.TransitionListener() { // from class: androidx.core.transition.TransitionKt$doOnStart$$inlined$addListener$1
            @Override // android.transition.Transition.TransitionListener
            public void onTransitionCancel(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionPause(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionResume(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
            }

            @Override // android.transition.Transition.TransitionListener
            public void onTransitionStart(Transition transition2) {
                C15149k.m377b(transition2, AnimatedStateListDrawableCompat.ELEMENT_TRANSITION);
                AbstractC15118l.this.invoke(transition2);
            }
        };
        transition.addListener(transitionKt$doOnStart$$inlined$addListener$1);
        return transitionKt$doOnStart$$inlined$addListener$1;
    }
}
