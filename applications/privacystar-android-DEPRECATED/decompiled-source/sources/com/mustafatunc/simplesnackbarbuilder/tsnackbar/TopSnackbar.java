package com.mustafatunc.simplesnackbarbuilder.tsnackbar;

import android.view.View;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.mustafatunc.simplesnackbarbuilder.SSnackbar;
import com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar;
import java.util.ArrayDeque;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018�� \u001e2\u00020\u00012\u00020\u0002:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\rH\u0016J \u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\b\u0010\u001a\u001a\u00020\u0007H\u0016J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n��¨\u0006\u001f"}, m254d2 = {"Lcom/mustafatunc/simplesnackbarbuilder/tsnackbar/TopSnackbar;", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar;", "Lcom/mustafatunc/simplesnackbarbuilder/tsnackbar/ISnackbarTopBottom;", "()V", "snack", "Lcom/mustafatunc/simplesnackbarbuilder/tsnackbar/TSnackbar;", "backgroundColor", "", "color", "", TextModalInteraction.EVENT_NAME_DISMISS, "getDuration", "duration", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$Duration;", "isShowing", "", "make", Promotion.ACTION_VIEW, "Landroid/view/View;", "text", "", "setAction", "callback", "Landroid/view/View$OnClickListener;", "setDuration", "setTextColor", "show", "textAlignment", "alignment", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$Alignment;", "Companion", "simplesnackbarbuilder_release"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/TopSnackbar.class */
public final class TopSnackbar extends SSnackbar implements ISnackbarTopBottom {
    public static final Companion Companion = new Companion(null);
    private static final ArrayDeque<TSnackbar> queue = new ArrayDeque<>();
    private TSnackbar snack;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0006"}, m254d2 = {"Lcom/mustafatunc/simplesnackbarbuilder/tsnackbar/TopSnackbar$Companion;", "", "()V", "queue", "Ljava/util/ArrayDeque;", "Lcom/mustafatunc/simplesnackbarbuilder/tsnackbar/TSnackbar;", "simplesnackbarbuilder_release"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/TopSnackbar$Companion.class */
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
        TSnackbar tSnackbar = this.snack;
        if (tSnackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        tSnackbar.getView().setBackgroundColor(i);
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.SSnackbar
    public void dismiss() {
        TSnackbar tSnackbar = this.snack;
        if (tSnackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        tSnackbar.dismiss();
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.SSnackbar
    public boolean isShowing() {
        TSnackbar tSnackbar = this.snack;
        if (tSnackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        return tSnackbar.isShown();
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom
    public void make(@NotNull View view, @NotNull CharSequence text, @NotNull SSnackbar.Duration duration) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(text, "text");
        Intrinsics.checkParameterIsNotNull(duration, "duration");
        TSnackbar make = TSnackbar.make(view, text, getDuration(duration));
        Intrinsics.checkExpressionValueIsNotNull(make, "TSnackbar.make(view, text, d)");
        this.snack = make;
        TSnackbar tSnackbar = this.snack;
        if (tSnackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        tSnackbar.setCallback(new TSnackbar.Callback() { // from class: com.mustafatunc.simplesnackbarbuilder.tsnackbar.TopSnackbar$make$1
            @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.TSnackbar.Callback
            public void onDismissed(@Nullable TSnackbar tSnackbar2, int i) {
                ArrayDeque arrayDeque;
                ArrayDeque arrayDeque2;
                ArrayDeque arrayDeque3;
                ArrayDeque arrayDeque4;
                super.onDismissed(tSnackbar2, i);
                arrayDeque = TopSnackbar.queue;
                if (!arrayDeque.isEmpty()) {
                    arrayDeque4 = TopSnackbar.queue;
                    arrayDeque4.pop();
                }
                arrayDeque2 = TopSnackbar.queue;
                if (!arrayDeque2.isEmpty()) {
                    arrayDeque3 = TopSnackbar.queue;
                    ((TSnackbar) arrayDeque3.getFirst()).show();
                }
            }
        });
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom
    public void setAction(@NotNull CharSequence text, int i, @NotNull View.OnClickListener callback) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        TSnackbar tSnackbar = this.snack;
        if (tSnackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        tSnackbar.setAction(text, callback);
        TSnackbar tSnackbar2 = this.snack;
        if (tSnackbar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        tSnackbar2.setActionTextColor(i);
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom
    public void setDuration(@NotNull SSnackbar.Duration duration) {
        Intrinsics.checkParameterIsNotNull(duration, "duration");
        TSnackbar tSnackbar = this.snack;
        if (tSnackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        tSnackbar.setDuration(getDuration(duration));
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom
    public void setTextColor(int i) {
        TSnackbar tSnackbar = this.snack;
        if (tSnackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        tSnackbar.setTextColor(i);
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.SSnackbar
    public void show() {
        ArrayDeque<TSnackbar> arrayDeque = queue;
        TSnackbar tSnackbar = this.snack;
        if (tSnackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        arrayDeque.add(tSnackbar);
        TSnackbar first = queue.getFirst();
        TSnackbar tSnackbar2 = this.snack;
        if (tSnackbar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        if (Intrinsics.areEqual(first, tSnackbar2)) {
            TSnackbar tSnackbar3 = this.snack;
            if (tSnackbar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("snack");
            }
            tSnackbar3.show();
        }
    }

    @Override // com.mustafatunc.simplesnackbarbuilder.tsnackbar.ISnackbarTopBottom
    public void textAlignment(@NotNull SSnackbar.Alignment alignment) {
        TSnackbar.Alignment alignment2;
        Intrinsics.checkParameterIsNotNull(alignment, "alignment");
        switch (alignment) {
            case LEFT:
                alignment2 = TSnackbar.Alignment.LEFT;
                break;
            case CENTER:
                alignment2 = TSnackbar.Alignment.CENTER;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        TSnackbar tSnackbar = this.snack;
        if (tSnackbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("snack");
        }
        tSnackbar.setTextAlignment(alignment2);
    }
}
