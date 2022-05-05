package com.rey.material.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/rey/material/app/DialogFragment.class */
public class DialogFragment extends android.support.p001v4.app.DialogFragment {
    protected static final String ARG_BUILDER = "arg_builder";
    private View.OnClickListener mActionListener = new View.OnClickListener() { // from class: com.rey.material.app.DialogFragment.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DialogFragment.this.mBuilder != null) {
                if (view.getId() == Dialog.ACTION_POSITIVE) {
                    DialogFragment.this.mBuilder.onPositiveActionClicked(DialogFragment.this);
                } else if (view.getId() == Dialog.ACTION_NEGATIVE) {
                    DialogFragment.this.mBuilder.onNegativeActionClicked(DialogFragment.this);
                } else if (view.getId() == Dialog.ACTION_NEUTRAL) {
                    DialogFragment.this.mBuilder.onNeutralActionClicked(DialogFragment.this);
                }
            }
        }
    };
    protected Builder mBuilder;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/app/DialogFragment$Builder.class */
    public interface Builder {
        Dialog build(Context context);

        void onCancel(DialogInterface dialogInterface);

        void onDismiss(DialogInterface dialogInterface);

        void onNegativeActionClicked(DialogFragment dialogFragment);

        void onNeutralActionClicked(DialogFragment dialogFragment);

        void onPositiveActionClicked(DialogFragment dialogFragment);
    }

    public static DialogFragment newInstance(Builder builder) {
        DialogFragment dialogFragment = new DialogFragment();
        dialogFragment.mBuilder = builder;
        return dialogFragment;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        this.mBuilder.onCancel(dialogInterface);
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null && this.mBuilder == null) {
            this.mBuilder = (Builder) bundle.getParcelable(ARG_BUILDER);
        }
    }

    @Override // android.support.p001v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.mBuilder == null ? new Dialog(getActivity()) : this.mBuilder.build(getActivity());
        dialog.positiveActionClickListener(this.mActionListener).negativeActionClickListener(this.mActionListener).neutralActionClickListener(this.mActionListener);
        return dialog;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && (dialog instanceof Dialog)) {
            ((Dialog) dialog).dismissImmediately();
        }
        super.onDestroyView();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        this.mBuilder.onDismiss(dialogInterface);
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.mBuilder != null && (this.mBuilder instanceof Parcelable)) {
            bundle.putParcelable(ARG_BUILDER, (Parcelable) this.mBuilder);
        }
    }
}
