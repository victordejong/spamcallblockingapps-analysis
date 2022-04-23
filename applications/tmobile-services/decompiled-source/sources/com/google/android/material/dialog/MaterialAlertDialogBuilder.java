package com.google.android.material.dialog;

import android.content.DialogInterface;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.Window;
import android.widget.ListAdapter;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.app.AlertDialog;
import androidx.core.view.ViewCompat;
import com.google.android.material.shape.MaterialShapeDrawable;
/* loaded from: classes-dex2jar.jar:com/google/android/material/dialog/MaterialAlertDialogBuilder.class */
public class MaterialAlertDialogBuilder extends AlertDialog.Builder {
    @Nullable

    /* renamed from: c */
    private Drawable f10637c;
    @NonNull
    @Dimension

    /* renamed from: d */
    private final Rect f10638d;

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: a */
    public AlertDialog mo9823a() {
        AlertDialog a = super.mo9823a();
        Window window = a.getWindow();
        View decorView = window.getDecorView();
        Drawable drawable = this.f10637c;
        if (drawable instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) drawable).m9329V(ViewCompat.m19168v(decorView));
        }
        window.setBackgroundDrawable(MaterialDialogs.m9798a(this.f10637c, this.f10638d));
        decorView.setOnTouchListener(new InsetDialogOnTouchListener(a, this.f10638d));
        return a;
    }

    @NonNull
    /* renamed from: o */
    public MaterialAlertDialogBuilder mo9822c(@Nullable ListAdapter listAdapter, @Nullable DialogInterface.OnClickListener onClickListener) {
        super.mo9822c(listAdapter, onClickListener);
        return this;
    }

    @NonNull
    /* renamed from: p */
    public MaterialAlertDialogBuilder mo9821d(@Nullable View view) {
        super.mo9821d(view);
        return this;
    }

    @NonNull
    /* renamed from: q */
    public MaterialAlertDialogBuilder mo9820e(@Nullable Drawable drawable) {
        super.mo9820e(drawable);
        return this;
    }

    @NonNull
    /* renamed from: r */
    public MaterialAlertDialogBuilder mo9819f(@Nullable CharSequence[] charSequenceArr, @Nullable boolean[] zArr, @Nullable DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        super.mo9819f(charSequenceArr, zArr, onMultiChoiceClickListener);
        return this;
    }

    @NonNull
    /* renamed from: s */
    public MaterialAlertDialogBuilder mo9818g(@StringRes int i, @Nullable DialogInterface.OnClickListener onClickListener) {
        super.mo9818g(i, onClickListener);
        return this;
    }

    @NonNull
    /* renamed from: t */
    public MaterialAlertDialogBuilder mo9817h(@StringRes int i, @Nullable DialogInterface.OnClickListener onClickListener) {
        super.mo9817h(i, onClickListener);
        return this;
    }

    @NonNull
    /* renamed from: u */
    public MaterialAlertDialogBuilder mo9816i(@Nullable DialogInterface.OnKeyListener onKeyListener) {
        super.mo9816i(onKeyListener);
        return this;
    }

    @NonNull
    /* renamed from: v */
    public MaterialAlertDialogBuilder mo9815j(@StringRes int i, @Nullable DialogInterface.OnClickListener onClickListener) {
        super.mo9815j(i, onClickListener);
        return this;
    }

    @NonNull
    /* renamed from: w */
    public MaterialAlertDialogBuilder mo9814k(@Nullable ListAdapter listAdapter, int i, @Nullable DialogInterface.OnClickListener onClickListener) {
        super.mo9814k(listAdapter, i, onClickListener);
        return this;
    }

    @NonNull
    /* renamed from: x */
    public MaterialAlertDialogBuilder mo9813l(@StringRes int i) {
        super.mo9813l(i);
        return this;
    }

    @NonNull
    /* renamed from: y */
    public MaterialAlertDialogBuilder mo9812m(@Nullable CharSequence charSequence) {
        super.mo9812m(charSequence);
        return this;
    }

    @NonNull
    /* renamed from: z */
    public MaterialAlertDialogBuilder mo9811n(@Nullable View view) {
        super.mo9811n(view);
        return this;
    }
}
