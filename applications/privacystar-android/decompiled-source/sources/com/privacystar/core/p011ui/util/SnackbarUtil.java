package com.privacystar.core.p011ui.util;

import android.content.Context;
import android.support.design.widget.Snackbar;
import android.support.p001v4.view.ViewCompat;
import android.view.ViewGroup;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.util.SnackbarUtil */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/SnackbarUtil.class */
public class SnackbarUtil {
    private static void addMargins(Snackbar snackbar) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) snackbar.getView().getLayoutParams();
        marginLayoutParams.setMargins(12, 12, 12, 12);
        snackbar.getView().setLayoutParams(marginLayoutParams);
    }

    public static void configSnackbar(Context context, Snackbar snackbar) {
        addMargins(snackbar);
        setRoundBordersBg(context, snackbar);
        ViewCompat.setElevation(snackbar.getView(), 6.0f);
    }

    private static void setRoundBordersBg(Context context, Snackbar snackbar) {
        snackbar.getView().setBackground(context.getDrawable(C1566R.C1568drawable.bg_snackbar));
    }
}
