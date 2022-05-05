package com.mustafatunc.simplesnackbarbuilder.tsnackbar;

import android.view.View;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.mustafatunc.simplesnackbarbuilder.SSnackbar;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&J \u0010\r\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H&¨\u0006\u0015"}, m254d2 = {"Lcom/mustafatunc/simplesnackbarbuilder/tsnackbar/ISnackbarTopBottom;", "", "backgroundColor", "", "color", "", "make", Promotion.ACTION_VIEW, "Landroid/view/View;", "text", "", "duration", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$Duration;", "setAction", "callback", "Landroid/view/View$OnClickListener;", "setDuration", "setTextColor", "textAlignment", "alignment", "Lcom/mustafatunc/simplesnackbarbuilder/SSnackbar$Alignment;", "simplesnackbarbuilder_release"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes-dex2jar.jar:com/mustafatunc/simplesnackbarbuilder/tsnackbar/ISnackbarTopBottom.class */
public interface ISnackbarTopBottom {
    void backgroundColor(int i);

    void make(@NotNull View view, @NotNull CharSequence charSequence, @NotNull SSnackbar.Duration duration);

    void setAction(@NotNull CharSequence charSequence, int i, @NotNull View.OnClickListener onClickListener);

    void setDuration(@NotNull SSnackbar.Duration duration);

    void setTextColor(int i);

    void textAlignment(@NotNull SSnackbar.Alignment alignment);
}
