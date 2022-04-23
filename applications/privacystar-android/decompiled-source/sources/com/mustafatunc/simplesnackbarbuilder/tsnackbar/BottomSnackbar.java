package com.mustafatunc.simplesnackbarbuilder.tsnackbar;

import android.os.Build;
import android.support.design.C0089R;
import android.support.design.widget.Snackbar;
import android.support.p001v4.view.GravityCompat;
import android.view.View;
import android.widget.TextView;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.mustafatunc.simplesnackbarbuilder.SSnackbar;
import java.util.ArrayDeque;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018�� \u001e2\u00020\u00012\u00020\u0002:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\rH\u0016J \u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\u001a\u001a\u00020\u0007H\u0016J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��¨\u0006\u001f"}, m254d2 = {"Lcom/mustafatunc/simplesnackbarbuilder/tsnackbar/BottomSnackbar;", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar;", "Lcom/mustafatunc/simplesnackbarbuilder/tsnackbar/ISnackbarTopBottom;", "()V", "snack", "Landroid/support/design/widget/Snackbar;", "backgroundColor", "", "color", "", TextModalInteraction.EVENT_NAME_DISMISS, "getDuration", "duration", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$Duration;", "isShowing", "", "make", Promotion.ACTION_VIEW, "Landroid/view/View;", "text", "", "setAction", "callback", "Landroid/view/View$OnClickListener;", "setDuration", "setTextColor", "show", "textAlignment", "alignment", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$Alignment;", "Companion", "simplesnackbarbuilder_release"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/BottomSnackbar.class */
public final class BottomSnackbar extends SSnackbar implements ISnackbarTopBottom {
    public static final Companion Companion = new Companion(null);
    private static final ArrayDeque<Snackbar> queue = new ArrayDeque<>();
    private Snackbar snack;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0006"}, m254d2 = {"Lcom/mustafatunc/simplesnackbarbuilder/tsnackbar/BottomSnackbar$Companion;", "", "()V", "queue", "Ljava/util/ArrayDeque;", "Landroid/support/design/widget/Snackbar;", "simplesnackbarbuilder_release"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/BottomSnackbar$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final int getDuration(SSnackbar.Duration duration) {
        int i;
        switch (duration) {
            case LENGTH_SHORT:
                i = -1;
                break;
            case LENGTH_LONG:
                i = 0;
                break;
            case LENGTH_INDEFINITE:
                i = -2;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return i;
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom
    public void backgroundColor(int i) {
        Snackbar snackbar = this.snack;
        if (snackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        snackbar.getView().setBackgroundColor(i);
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.SSnackbar
    public void dismiss() {
        Snackbar snackbar = this.snack;
        if (snackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        snackbar.dismiss();
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.SSnackbar
    public boolean isShowing() {
        Snackbar snackbar = this.snack;
        if (snackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        return snackbar.isShown();
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom
    public void make(@NotNull View view, @NotNull CharSequence text, @NotNull SSnackbar.Duration duration) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(text, "text");
        Intrinsics.checkParameterIsNotNull(duration, "duration");
        Snackbar make = Snackbar.make(view, text, getDuration(duration));
        Intrinsics.checkExpressionValueIsNotNull(make, "Snackbar.make(view, text, d)");
        this.snack = make;
        Snackbar snackbar = this.snack;
        if (snackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        snackbar.addCallback(new Snackbar.Callback() { // from class: com.mustafatunc.simplesnackbarbuilder.tsnackbar.BottomSnackbar$make$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.support.design.widget.Snackbar.Callback
            public void onDismissed(@Nullable Snackbar snackbar2, int i) {
                ArrayDeque arrayDeque;
                ArrayDeque arrayDeque2;
                ArrayDeque arrayDeque3;
                ArrayDeque arrayDeque4;
                super.onDismissed(snackbar2, i);
                arrayDeque = BottomSnackbar.queue;
                if (!arrayDeque.isEmpty()) {
                    arrayDeque4 = BottomSnackbar.queue;
                    arrayDeque4.pop();
                }
                arrayDeque2 = BottomSnackbar.queue;
                if (!arrayDeque2.isEmpty()) {
                    arrayDeque3 = BottomSnackbar.queue;
                    ((Snackbar) arrayDeque3.getFirst()).show();
                }
            }
        });
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom
    public void setAction(@NotNull CharSequence text, int i, @NotNull View.OnClickListener callback) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        Snackbar snackbar = this.snack;
        if (snackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        snackbar.setAction(text, callback);
        Snackbar snackbar2 = this.snack;
        if (snackbar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        snackbar2.setActionTextColor(i);
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom
    public void setDuration(@NotNull SSnackbar.Duration duration) {
        Intrinsics.checkParameterIsNotNull(duration, "duration");
        Snackbar snackbar = this.snack;
        if (snackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        snackbar.setDuration(getDuration(duration));
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom
    public void setTextColor(int i) {
        Snackbar snackbar = this.snack;
        if (snackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        ((TextView) snackbar.getView().findViewById(C0089R.C0092id.snackbar_text)).setTextColor(i);
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.SSnackbar
    public void show() {
        ArrayDeque<Snackbar> arrayDeque = queue;
        Snackbar snackbar = this.snack;
        if (snackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        arrayDeque.add(snackbar);
        Snackbar first = queue.getFirst();
        Snackbar snackbar2 = this.snack;
        if (snackbar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        if (Intrinsics.areEqual(first, snackbar2)) {
            Snackbar snackbar3 = this.snack;
            if (snackbar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("snack");
            }
            snackbar3.show();
        }
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom
    public void textAlignment(@NotNull SSnackbar.Alignment alignment) {
        Intrinsics.checkParameterIsNotNull(alignment, "alignment");
        Snackbar snackbar = this.snack;
        if (snackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        TextView tv = (TextView) snackbar.getView().findViewById(C0089R.C0092id.snackbar_text);
        if (Build.VERSION.SDK_INT >= 23) {
            Intrinsics.checkExpressionValueIsNotNull(tv, "tv");
            tv.setTextAlignment(alignment == SSnackbar.Alignment.CENTER ? 4 : 2);
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(tv, "tv");
        tv.setGravity(alignment == SSnackbar.Alignment.CENTER ? 17 : GravityCompat.START);
    }
}
