package com.telguarder.features.postCallStatistics;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.telguarder.ApplicationObject;
import com.telguarder.C2083R;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.common.AppUtil;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSDurRowViewHolder.class */
public class CSDurRowViewHolder extends CSRowViewHolder {
    private static final int STATISTICS_ANIMATION_DURATION = 1500;
    private ValueAnimator mCurrentCallAnimator;
    private CSDurData mData;
    private TextView mDurationValueText;
    private ObjectAnimator mIncomingProgressAnimator;
    private ValueAnimator mIncomingProgressTextAnimator;
    private ProgressBar mIncomingTotalProgress;
    private TextView mIncomingTotalText;
    private ObjectAnimator mOutgoingProgressAnimator;
    private ValueAnimator mOutgoingProgressTextAnimator;
    private ProgressBar mOutgoingTotalProgress;
    private TextView mOutgoingTotalText;
    private boolean mCurrentCallDurAnimEnded = false;
    private boolean mOutgoingProgresstAnimEnded = false;
    private boolean mIncomingProgressAnimEnded = false;
    private boolean mOutgoingProgressTextAnimEnded = false;
    private boolean mIncomingProgressTextAnimEnded = false;
    private boolean isVisible = false;

    public CSDurRowViewHolder(View view) {
        super(view);
        this.mDurationValueText = (TextView) view.findViewById(C2083R.C2086id.duration_value_text);
        this.mOutgoingTotalText = (TextView) view.findViewById(C2083R.C2086id.outgoing_total_text);
        this.mIncomingTotalText = (TextView) view.findViewById(C2083R.C2086id.incoming_total_text);
        ProgressBar progressBar = (ProgressBar) view.findViewById(C2083R.C2086id.outgoing_total_progress);
        this.mOutgoingTotalProgress = progressBar;
        setProgressBarColor(progressBar, AppUtil.getColorResource(view.getContext(), C2083R.C2084color.progress_bar_outgoing_color));
        ProgressBar progressBar2 = (ProgressBar) view.findViewById(C2083R.C2086id.incoming_total_progress);
        this.mIncomingTotalProgress = progressBar2;
        setProgressBarColor(progressBar2, AppUtil.getColorResource(view.getContext(), C2083R.C2084color.progress_bar_incoming_color));
    }

    private String getTimeValueText(long j) {
        if (j > 36000) {
            int round = Math.round((float) ((j / 60) / 24));
            return round + " " + ApplicationObject.getContext().getString(C2083R.string.call_stat_day_short);
        } else if (j <= 600) {
            return j + " " + ApplicationObject.getContext().getString(C2083R.string.call_stat_minute_short);
        } else {
            int round2 = Math.round((float) (j / 60));
            return round2 + " " + ApplicationObject.getContext().getString(C2083R.string.call_stat_hour_short);
        }
    }

    private ObjectAnimator setProgressAnimate(final ProgressBar progressBar, int i) {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(progressBar, NotificationCompat.CATEGORY_PROGRESS, progressBar.getProgress(), i * 100);
        ofInt.setDuration(1500L);
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        ofInt.addListener(new Animator.AnimatorListener() { // from class: com.telguarder.features.postCallStatistics.CSDurRowViewHolder.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (progressBar == CSDurRowViewHolder.this.mOutgoingTotalProgress) {
                    CSDurRowViewHolder.this.mOutgoingProgresstAnimEnded = true;
                } else if (progressBar != CSDurRowViewHolder.this.mIncomingTotalProgress) {
                } else {
                    CSDurRowViewHolder.this.mIncomingProgressAnimEnded = true;
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        return ofInt;
    }

    private void setProgressBarColor(ProgressBar progressBar, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            progressBar.setProgressTintList(ColorStateList.valueOf(i));
        } else {
            progressBar.getProgressDrawable().setColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
    }

    private ValueAnimator setProgressTextAnimate(final TextView textView, int i) {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, i);
        ofInt.setDuration(1500L);
        ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSDurRowViewHolder$e6PIY_8237i1LR7iU11eWq1EqS4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CSDurRowViewHolder.this.lambda$setProgressTextAnimate$1$CSDurRowViewHolder(textView, valueAnimator);
            }
        });
        ofInt.addListener(new Animator.AnimatorListener() { // from class: com.telguarder.features.postCallStatistics.CSDurRowViewHolder.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (textView == CSDurRowViewHolder.this.mOutgoingTotalText) {
                    CSDurRowViewHolder.this.mOutgoingProgressTextAnimEnded = true;
                } else if (textView != CSDurRowViewHolder.this.mIncomingTotalText) {
                } else {
                    CSDurRowViewHolder.this.mIncomingProgressTextAnimEnded = true;
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        return ofInt;
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    private void showCallDurationHistory(long j, long j2) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        long max = ((i <= 0 || j2 <= 0) ? Math.max(j, j2) : j + j2) * 'd';
        if (i > 0) {
            this.mOutgoingTotalProgress.setMax((int) max);
            int i2 = (int) j;
            this.mOutgoingProgressAnimator = setProgressAnimate(this.mOutgoingTotalProgress, i2);
            this.mOutgoingProgressTextAnimator = setProgressTextAnimate(this.mOutgoingTotalText, i2);
        }
        if (j2 > 0) {
            this.mIncomingTotalProgress.setMax((int) max);
            int i3 = (int) j2;
            this.mIncomingProgressAnimator = setProgressAnimate(this.mIncomingTotalProgress, i3);
            this.mIncomingProgressTextAnimator = setProgressTextAnimate(this.mIncomingTotalText, i3);
        }
    }

    private void showCurrentCallDuration(long j) {
        int i;
        Context context;
        TextView textView = this.mDurationValueText;
        if (this.mData.mCallType == 2) {
            context = this.mDurationValueText.getContext();
            i = 2131034383;
        } else {
            context = this.mDurationValueText.getContext();
            i = 2131034382;
        }
        textView.setTextColor(AppUtil.getColorResource(context, i));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, (int) j);
        this.mCurrentCallAnimator = ofInt;
        ofInt.setDuration(1500L);
        this.mCurrentCallAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        this.mCurrentCallAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSDurRowViewHolder$kWcY_Be8e9eEw3DqZ_eQNGP_tJE
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CSDurRowViewHolder.this.lambda$showCurrentCallDuration$0$CSDurRowViewHolder(valueAnimator);
            }
        });
        this.mCurrentCallAnimator.addListener(new Animator.AnimatorListener() { // from class: com.telguarder.features.postCallStatistics.CSDurRowViewHolder.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CSDurRowViewHolder.this.mCurrentCallDurAnimEnded = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    public void bindData(CSDurData cSDurData) {
        this.mData = cSDurData;
        showCurrentCallDuration(cSDurData.mDuration);
        showCallDurationHistory(this.mData.mMinutesOut, this.mData.mMinutesIn);
        if (this.isVisible) {
            ValueAnimator valueAnimator = this.mCurrentCallAnimator;
            if (valueAnimator != null) {
                valueAnimator.start();
            }
            ObjectAnimator objectAnimator = this.mIncomingProgressAnimator;
            if (objectAnimator != null) {
                objectAnimator.start();
            }
            ValueAnimator valueAnimator2 = this.mIncomingProgressTextAnimator;
            if (valueAnimator2 != null) {
                valueAnimator2.start();
            }
            ObjectAnimator objectAnimator2 = this.mOutgoingProgressAnimator;
            if (objectAnimator2 != null) {
                objectAnimator2.start();
            }
            ValueAnimator valueAnimator3 = this.mOutgoingProgressTextAnimator;
            if (valueAnimator3 == null) {
                return;
            }
            valueAnimator3.start();
        }
    }

    public /* synthetic */ void lambda$setProgressTextAnimate$1$CSDurRowViewHolder(TextView textView, ValueAnimator valueAnimator) {
        textView.setText(getTimeValueText(((Integer) valueAnimator.getAnimatedValue()).intValue()));
    }

    public /* synthetic */ void lambda$showCurrentCallDuration$0$CSDurRowViewHolder(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        if (intValue < 3600) {
            long j = intValue;
            this.mDurationValueText.setText(String.format(Locale.getDefault(), "%02d:%02d", Long.valueOf(TimeUnit.SECONDS.toMinutes(j) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(j % TimeUnit.MINUTES.toSeconds(1L))));
            return;
        }
        this.mDurationValueText.setTextSize(22.0f);
        long j2 = intValue;
        this.mDurationValueText.setText(String.format(Locale.getDefault(), "%02d:%02d:%02d", Long.valueOf(TimeUnit.SECONDS.toHours(j2)), Long.valueOf(TimeUnit.SECONDS.toMinutes(j2) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(j2 % TimeUnit.MINUTES.toSeconds(1L))));
    }

    @Override // com.telguarder.features.postCallStatistics.CSRowViewHolder
    public void onAttachToWindow() {
        this.isVisible = true;
        ValueAnimator valueAnimator = this.mCurrentCallAnimator;
        if (valueAnimator != null && !this.mCurrentCallDurAnimEnded) {
            valueAnimator.start();
        }
        ObjectAnimator objectAnimator = this.mIncomingProgressAnimator;
        if (objectAnimator != null && !this.mIncomingProgressAnimEnded) {
            objectAnimator.start();
        }
        ValueAnimator valueAnimator2 = this.mIncomingProgressTextAnimator;
        if (valueAnimator2 != null && !this.mIncomingProgressTextAnimEnded) {
            valueAnimator2.start();
        }
        ObjectAnimator objectAnimator2 = this.mOutgoingProgressAnimator;
        if (objectAnimator2 != null && !this.mOutgoingProgresstAnimEnded) {
            objectAnimator2.start();
        }
        ValueAnimator valueAnimator3 = this.mOutgoingProgressTextAnimator;
        if (valueAnimator3 != null && !this.mOutgoingProgressTextAnimEnded) {
            valueAnimator3.start();
        }
        super.onAttachToWindow();
        AnalyticsManager.getInstance().sendCallStatisticsDurationAction();
    }

    @Override // com.telguarder.features.postCallStatistics.CSRowViewHolder
    public void onDetachFromWindow() {
        this.isVisible = false;
        super.onDetachFromWindow();
    }
}
