package zendesk.commonui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.p001v4.app.NotificationCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ProgressBar;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/AlmostRealProgressBar.class */
public class AlmostRealProgressBar extends ProgressBar {
    public static final long ALPHA_FADE_DURATION = 100;
    public static final long START_DEBOUNCE_TIME = 100;
    public static final long STOP_ANIMATION_DURATION = 300;
    public static final long STOP_DEBOUNCE_TIME = 200;
    private StateAwareAnimator finishAnimator;
    private Handler handler = new Handler(Looper.getMainLooper());
    private StateAwareAnimator progressAnimator;
    private Runnable startDebounceRunnable;
    private List<Step> steps;
    private Runnable stopDebounceRunnable;
    public static final List<Step> SIMPLE_PROGRESSBAR = Collections.singletonList(new Step(60, 4000));
    public static final List<Step> DONT_STOP_MOVING = Arrays.asList(new Step(60, 4000), new Step(90, 15000));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/commonui/AlmostRealProgressBar$State.class */
    public static class State extends View.BaseSavedState {
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: zendesk.commonui.AlmostRealProgressBar.State.1
            @Override // android.os.Parcelable.Creator
            public State createFromParcel(Parcel parcel) {
                return new State(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public State[] newArray(int i) {
                return new State[i];
            }
        };
        private final int progress;
        private final List<Step> steps;

        private State(Parcel parcel) {
            super(parcel);
            this.progress = parcel.readInt();
            this.steps = new ArrayList();
            parcel.readTypedList(this.steps, Step.CREATOR);
        }

        public State(Parcelable parcelable, int i, List<Step> list) {
            super(parcelable);
            this.progress = i;
            this.steps = list;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.progress);
            parcel.writeTypedList(this.steps);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/commonui/AlmostRealProgressBar$StateAwareAnimator.class */
    public static class StateAwareAnimator extends AnimatorListenerAdapter {
        private final Animator animatorSet;
        private boolean started = false;
        private boolean ended = false;

        StateAwareAnimator(Animator animator) {
            this.animatorSet = animator;
            this.animatorSet.addListener(this);
        }

        Animator get() {
            return this.animatorSet;
        }

        boolean isEnded() {
            return this.ended;
        }

        boolean isStarted() {
            return this.started;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.started = false;
            this.ended = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.started = false;
            this.ended = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            this.started = true;
            this.ended = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.started = true;
            this.ended = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/commonui/AlmostRealProgressBar$Step.class */
    public static class Step implements Parcelable, Comparable<Step> {
        public static final Parcelable.Creator<Step> CREATOR = new Parcelable.Creator<Step>() { // from class: zendesk.commonui.AlmostRealProgressBar.Step.1
            @Override // android.os.Parcelable.Creator
            public Step createFromParcel(Parcel parcel) {
                return new Step(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public Step[] newArray(int i) {
                return new Step[i];
            }
        };
        private final int target;
        private final long time;

        Step(int i, long j) {
            this.target = i;
            this.time = j;
        }

        Step(Parcel parcel) {
            this.target = parcel.readInt();
            this.time = parcel.readLong();
        }

        public int compareTo(@NonNull Step step) {
            return this.target - step.target;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.target);
            parcel.writeLong(this.time);
        }
    }

    public AlmostRealProgressBar(Context context) {
        super(context);
    }

    public AlmostRealProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AlmostRealProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private Step adjustTime(int i, int i2, Step step) {
        float f = step.target - i2;
        float f2 = i - i2;
        return new Step(step.target, ((float) step.time) * (1.0f - (f2 / f)));
    }

    private StateAwareAnimator endAnimation(long j) {
        Animator progressAnimator = progressAnimator(getProgress(), 100, j);
        Animator progressBarAlphaAnimator = progressBarAlphaAnimator(1.0f, 0.0f, 100L);
        Animator progressAnimator2 = progressAnimator(100, 0, 0L);
        Animator progressBarAlphaAnimator2 = progressBarAlphaAnimator(0.0f, 1.0f, 0L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(progressAnimator).before(progressBarAlphaAnimator);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.play(progressAnimator2).before(progressBarAlphaAnimator2);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.setDuration(j);
        animatorSet3.play(animatorSet).before(animatorSet2);
        return new StateAwareAnimator(animatorSet3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishAnimation(long j) {
        if (this.progressAnimator != null) {
            this.progressAnimator.get().cancel();
            this.progressAnimator = null;
            this.finishAnimator = endAnimation(j);
            this.finishAnimator.get().start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [zendesk.commonui.AlmostRealProgressBar] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void kickOffAnimation(java.util.List<zendesk.commonui.AlmostRealProgressBar.Step> r8, int r9) {
        /*
            r7 = this;
            r0 = r7
            zendesk.commonui.AlmostRealProgressBar$StateAwareAnimator r0 = r0.progressAnimator
            if (r0 != 0) goto L_0x0054
            r0 = 0
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r7
            zendesk.commonui.AlmostRealProgressBar$StateAwareAnimator r0 = r0.finishAnimator
            if (r0 == 0) goto L_0x0039
            r0 = r10
            r12 = r0
            r0 = r7
            zendesk.commonui.AlmostRealProgressBar$StateAwareAnimator r0 = r0.finishAnimator
            boolean r0 = r0.isStarted()
            if (r0 == 0) goto L_0x0039
            r0 = r10
            r12 = r0
            r0 = r7
            zendesk.commonui.AlmostRealProgressBar$StateAwareAnimator r0 = r0.finishAnimator
            boolean r0 = r0.isEnded()
            if (r0 != 0) goto L_0x0039
            r0 = r7
            zendesk.commonui.AlmostRealProgressBar$StateAwareAnimator r0 = r0.finishAnimator
            android.animation.Animator r0 = r0.get()
            long r0 = r0.getDuration()
            r12 = r0
        L_0x0039:
            r0 = r7
            r1 = 0
            r0.finishAnimator = r1
            r0 = r7
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r12
            zendesk.commonui.AlmostRealProgressBar$StateAwareAnimator r1 = r1.startAnimation(r2, r3, r4)
            r0.progressAnimator = r1
            r0 = r7
            zendesk.commonui.AlmostRealProgressBar$StateAwareAnimator r0 = r0.progressAnimator
            android.animation.Animator r0 = r0.get()
            r0.start()
        L_0x0054:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.commonui.AlmostRealProgressBar.kickOffAnimation(java.util.List, int):void");
    }

    private Animator progressAnimator(int i, int i2, long j) {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this, NotificationCompat.CATEGORY_PROGRESS, i, i2);
        ofInt.setInterpolator(new DecelerateInterpolator());
        ofInt.setDuration(j);
        return ofInt;
    }

    private Animator progressBarAlphaAnimator(float f, float f2, long j) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "alpha", f, f2);
        ofFloat.setDuration(j);
        return ofFloat;
    }

    private void restoreProgress(State state) {
        if (state.progress > 0) {
            ArrayList arrayList = new ArrayList(state.steps);
            ArrayList arrayList2 = new ArrayList();
            int i = 0;
            for (Step step : state.steps) {
                if (state.progress < step.target) {
                    arrayList2.add(step);
                } else {
                    i = step.target;
                }
            }
            if (CollectionUtils.isNotEmpty(arrayList2)) {
                arrayList2.add(0, adjustTime(state.progress, i, arrayList2.remove(0)));
            }
            kickOffAnimation(arrayList2, state.progress);
            this.steps = arrayList;
            return;
        }
        setProgress(0);
    }

    private StateAwareAnimator startAnimation(List<Step> list, int i, long j) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Step step : list) {
            Animator progressAnimator = progressAnimator(i, step.target, step.time);
            i = step.target;
            arrayList.add(progressAnimator);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(arrayList);
        animatorSet.setStartDelay(j);
        return new StateAwareAnimator(animatorSet);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2 = parcelable;
        if (parcelable instanceof State) {
            State state = (State) parcelable;
            restoreProgress(state);
            parcelable2 = state.getSuperState();
        }
        super.onRestoreInstanceState(parcelable2);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public Parcelable onSaveInstanceState() {
        if (this.progressAnimator != null && this.stopDebounceRunnable == null) {
            return new State(super.onSaveInstanceState(), getProgress(), this.steps);
        }
        setProgress(0);
        return super.onSaveInstanceState();
    }

    public void start(final List<Step> list) {
        if (this.stopDebounceRunnable != null) {
            this.handler.removeCallbacks(this.stopDebounceRunnable);
            this.stopDebounceRunnable = null;
        } else if (this.startDebounceRunnable == null) {
            this.startDebounceRunnable = new Runnable() { // from class: zendesk.commonui.AlmostRealProgressBar.1
                @Override // java.lang.Runnable
                public void run() {
                    AlmostRealProgressBar.this.startDebounceRunnable = null;
                    List copyOf = CollectionUtils.copyOf(list);
                    Collections.sort(copyOf);
                    AlmostRealProgressBar.this.steps = copyOf;
                    AlmostRealProgressBar.this.kickOffAnimation(AlmostRealProgressBar.this.steps, 0);
                }
            };
            this.handler.postDelayed(this.startDebounceRunnable, 100L);
        }
    }

    public void stop(final long j) {
        if (this.startDebounceRunnable != null) {
            this.handler.removeCallbacks(this.startDebounceRunnable);
            this.startDebounceRunnable = null;
        } else if (this.stopDebounceRunnable == null) {
            this.stopDebounceRunnable = new Runnable() { // from class: zendesk.commonui.AlmostRealProgressBar.2
                @Override // java.lang.Runnable
                public void run() {
                    AlmostRealProgressBar.this.stopDebounceRunnable = null;
                    AlmostRealProgressBar.this.finishAnimation(j);
                }
            };
            this.handler.postDelayed(this.stopDebounceRunnable, 200L);
        }
    }
}
