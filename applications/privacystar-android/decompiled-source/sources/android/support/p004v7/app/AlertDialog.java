package android.support.p004v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.ArrayRes;
import android.support.annotation.AttrRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import android.support.p004v7.app.AlertController;
import android.support.p004v7.appcompat.C0479R;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
/* renamed from: android.support.v7.app.AlertDialog */
/* loaded from: classes-dex2jar.jar:android/support/v7/app/AlertDialog.class */
public class AlertDialog extends AppCompatDialog implements DialogInterface {
    static final int LAYOUT_HINT_NONE = 0;
    static final int LAYOUT_HINT_SIDE = 1;
    final AlertController mAlert;

    /* renamed from: android.support.v7.app.AlertDialog$Builder */
    /* loaded from: classes-dex2jar.jar:android/support/v7/app/AlertDialog$Builder.class */
    public static class Builder {

        /* renamed from: P */
        private final AlertController.AlertParams f31P;
        private final int mTheme;

        public Builder(@NonNull Context context) {
            this(context, AlertDialog.resolveDialogTheme(context, 0));
        }

        public Builder(@NonNull Context context, @StyleRes int i) {
            this.f31P = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.resolveDialogTheme(context, i)));
            this.mTheme = i;
        }

        public AlertDialog create() {
            AlertDialog alertDialog = new AlertDialog(this.f31P.mContext, this.mTheme);
            this.f31P.apply(alertDialog.mAlert);
            alertDialog.setCancelable(this.f31P.mCancelable);
            if (this.f31P.mCancelable) {
                alertDialog.setCanceledOnTouchOutside(true);
            }
            alertDialog.setOnCancelListener(this.f31P.mOnCancelListener);
            alertDialog.setOnDismissListener(this.f31P.mOnDismissListener);
            if (this.f31P.mOnKeyListener != null) {
                alertDialog.setOnKeyListener(this.f31P.mOnKeyListener);
            }
            return alertDialog;
        }

        @NonNull
        public Context getContext() {
            return this.f31P.mContext;
        }

        public Builder setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mAdapter = listAdapter;
            this.f31P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setCancelable(boolean z) {
            this.f31P.mCancelable = z;
            return this;
        }

        public Builder setCursor(Cursor cursor, DialogInterface.OnClickListener onClickListener, String str) {
            this.f31P.mCursor = cursor;
            this.f31P.mLabelColumn = str;
            this.f31P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setCustomTitle(@Nullable View view) {
            this.f31P.mCustomTitleView = view;
            return this;
        }

        public Builder setIcon(@DrawableRes int i) {
            this.f31P.mIconId = i;
            return this;
        }

        public Builder setIcon(@Nullable Drawable drawable) {
            this.f31P.mIcon = drawable;
            return this;
        }

        public Builder setIconAttribute(@AttrRes int i) {
            TypedValue typedValue = new TypedValue();
            this.f31P.mContext.getTheme().resolveAttribute(i, typedValue, true);
            this.f31P.mIconId = typedValue.resourceId;
            return this;
        }

        @Deprecated
        public Builder setInverseBackgroundForced(boolean z) {
            this.f31P.mForceInverseBackground = z;
            return this;
        }

        public Builder setItems(@ArrayRes int i, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mItems = this.f31P.mContext.getResources().getTextArray(i);
            this.f31P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mItems = charSequenceArr;
            this.f31P.mOnClickListener = onClickListener;
            return this;
        }

        public Builder setMessage(@StringRes int i) {
            this.f31P.mMessage = this.f31P.mContext.getText(i);
            return this;
        }

        public Builder setMessage(@Nullable CharSequence charSequence) {
            this.f31P.mMessage = charSequence;
            return this;
        }

        public Builder setMultiChoiceItems(@ArrayRes int i, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.f31P.mItems = this.f31P.mContext.getResources().getTextArray(i);
            this.f31P.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.f31P.mCheckedItems = zArr;
            this.f31P.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.f31P.mCursor = cursor;
            this.f31P.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.f31P.mIsCheckedColumn = str;
            this.f31P.mLabelColumn = str2;
            this.f31P.mIsMultiChoice = true;
            return this;
        }

        public Builder setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.f31P.mItems = charSequenceArr;
            this.f31P.mOnCheckboxClickListener = onMultiChoiceClickListener;
            this.f31P.mCheckedItems = zArr;
            this.f31P.mIsMultiChoice = true;
            return this;
        }

        public Builder setNegativeButton(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mNegativeButtonText = this.f31P.mContext.getText(i);
            this.f31P.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mNegativeButtonText = charSequence;
            this.f31P.mNegativeButtonListener = onClickListener;
            return this;
        }

        public Builder setNegativeButtonIcon(Drawable drawable) {
            this.f31P.mNegativeButtonIcon = drawable;
            return this;
        }

        public Builder setNeutralButton(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mNeutralButtonText = this.f31P.mContext.getText(i);
            this.f31P.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mNeutralButtonText = charSequence;
            this.f31P.mNeutralButtonListener = onClickListener;
            return this;
        }

        public Builder setNeutralButtonIcon(Drawable drawable) {
            this.f31P.mNeutralButtonIcon = drawable;
            return this;
        }

        public Builder setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.f31P.mOnCancelListener = onCancelListener;
            return this;
        }

        public Builder setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.f31P.mOnDismissListener = onDismissListener;
            return this;
        }

        public Builder setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.f31P.mOnItemSelectedListener = onItemSelectedListener;
            return this;
        }

        public Builder setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
            this.f31P.mOnKeyListener = onKeyListener;
            return this;
        }

        public Builder setPositiveButton(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mPositiveButtonText = this.f31P.mContext.getText(i);
            this.f31P.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mPositiveButtonText = charSequence;
            this.f31P.mPositiveButtonListener = onClickListener;
            return this;
        }

        public Builder setPositiveButtonIcon(Drawable drawable) {
            this.f31P.mPositiveButtonIcon = drawable;
            return this;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setRecycleOnMeasureEnabled(boolean z) {
            this.f31P.mRecycleOnMeasure = z;
            return this;
        }

        public Builder setSingleChoiceItems(@ArrayRes int i, int i2, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mItems = this.f31P.mContext.getResources().getTextArray(i);
            this.f31P.mOnClickListener = onClickListener;
            this.f31P.mCheckedItem = i2;
            this.f31P.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(Cursor cursor, int i, String str, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mCursor = cursor;
            this.f31P.mOnClickListener = onClickListener;
            this.f31P.mCheckedItem = i;
            this.f31P.mLabelColumn = str;
            this.f31P.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mAdapter = listAdapter;
            this.f31P.mOnClickListener = onClickListener;
            this.f31P.mCheckedItem = i;
            this.f31P.mIsSingleChoice = true;
            return this;
        }

        public Builder setSingleChoiceItems(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
            this.f31P.mItems = charSequenceArr;
            this.f31P.mOnClickListener = onClickListener;
            this.f31P.mCheckedItem = i;
            this.f31P.mIsSingleChoice = true;
            return this;
        }

        public Builder setTitle(@StringRes int i) {
            this.f31P.mTitle = this.f31P.mContext.getText(i);
            return this;
        }

        public Builder setTitle(@Nullable CharSequence charSequence) {
            this.f31P.mTitle = charSequence;
            return this;
        }

        public Builder setView(int i) {
            this.f31P.mView = null;
            this.f31P.mViewLayoutResId = i;
            this.f31P.mViewSpacingSpecified = false;
            return this;
        }

        public Builder setView(View view) {
            this.f31P.mView = view;
            this.f31P.mViewLayoutResId = 0;
            this.f31P.mViewSpacingSpecified = false;
            return this;
        }

        @Deprecated
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Builder setView(View view, int i, int i2, int i3, int i4) {
            this.f31P.mView = view;
            this.f31P.mViewLayoutResId = 0;
            this.f31P.mViewSpacingSpecified = true;
            this.f31P.mViewSpacingLeft = i;
            this.f31P.mViewSpacingTop = i2;
            this.f31P.mViewSpacingRight = i3;
            this.f31P.mViewSpacingBottom = i4;
            return this;
        }

        public AlertDialog show() {
            AlertDialog create = create();
            create.show();
            return create;
        }
    }

    protected AlertDialog(@NonNull Context context) {
        this(context, 0);
    }

    protected AlertDialog(@NonNull Context context, @StyleRes int i) {
        super(context, resolveDialogTheme(context, i));
        this.mAlert = new AlertController(getContext(), this, getWindow());
    }

    protected AlertDialog(@NonNull Context context, boolean z, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        this(context, 0);
        setCancelable(z);
        setOnCancelListener(onCancelListener);
    }

    static int resolveDialogTheme(@NonNull Context context, @StyleRes int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0479R.C0480attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button getButton(int i) {
        return this.mAlert.getButton(i);
    }

    public ListView getListView() {
        return this.mAlert.getListView();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mAlert.installContent();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.mAlert.onKeyDown(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.mAlert.onKeyUp(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    public void setButton(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.setButton(i, charSequence, onClickListener, null, null);
    }

    public void setButton(int i, CharSequence charSequence, Drawable drawable, DialogInterface.OnClickListener onClickListener) {
        this.mAlert.setButton(i, charSequence, onClickListener, null, drawable);
    }

    public void setButton(int i, CharSequence charSequence, Message message) {
        this.mAlert.setButton(i, charSequence, null, message, null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    void setButtonPanelLayoutHint(int i) {
        this.mAlert.setButtonPanelLayoutHint(i);
    }

    public void setCustomTitle(View view) {
        this.mAlert.setCustomTitle(view);
    }

    public void setIcon(int i) {
        this.mAlert.setIcon(i);
    }

    public void setIcon(Drawable drawable) {
        this.mAlert.setIcon(drawable);
    }

    public void setIconAttribute(int i) {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(i, typedValue, true);
        this.mAlert.setIcon(typedValue.resourceId);
    }

    public void setMessage(CharSequence charSequence) {
        this.mAlert.setMessage(charSequence);
    }

    @Override // android.support.p004v7.app.AppCompatDialog, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.mAlert.setTitle(charSequence);
    }

    public void setView(View view) {
        this.mAlert.setView(view);
    }

    public void setView(View view, int i, int i2, int i3, int i4) {
        this.mAlert.setView(view, i, i2, i3, i4);
    }
}
