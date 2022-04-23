package com.callapp.contacts.manager.popup;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.manager.popup.BaseDialogFragment;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.CallAppCheckBox;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/DialogPopup.class */
public abstract class DialogPopup implements Popup {
    public static final int MAX_ALLOWED_DIALOG_WIDTH_PX = (int) Activities.a(392.0f);
    private CallAppCheckBox bottomBarCheckBox;
    private TextView bottomBarCheckBoxText;
    private DialogInterface.OnCancelListener cancelListener;
    private boolean cancelable;
    private IDialogSimpleListener dialogCustomListener;
    private BaseDialogFragment dialogFragment;
    private PopupManager.DialogFragmentDismissListener dismissListener;
    private final Integer requestCode;
    private int resultCode;
    private boolean showBottomCb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.manager.popup.DialogPopup$8  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/DialogPopup$8.class */
    public static /* synthetic */ class AnonymousClass8 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15208a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Popup.DialogType.values().length];
            f15208a = iArr;
            try {
                iArr[Popup.DialogType.legacyDialogs.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f15208a[Popup.DialogType.withInset.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f15208a[Popup.DialogType.rounded.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f15208a[Popup.DialogType.roundedCenter.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/DialogPopup$BACKGROUND_DARKNESS.class */
    public enum BACKGROUND_DARKNESS {
        LIGHT(0.3f),
        NORMAL(0.5f),
        DARK(0.7f),
        DARKEST(0.9f),
        TRANSPARENT(BitmapDescriptorFactory.HUE_RED);
        
        private final float value;

        BACKGROUND_DARKNESS(float f) {
            this.value = f;
        }

        public final float getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener.class */
    public interface IDialogOnClickListener {
        void onClickListener(Activity activity);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener.class */
    public interface IDialogSimpleListener extends DialogInterface.OnShowListener {
        void a(DialogPopup dialogPopup);

        void b(DialogPopup dialogPopup);

        @Override // android.content.DialogInterface.OnShowListener
        void onShow(DialogInterface dialogInterface);
    }

    public DialogPopup() {
        this.cancelable = true;
        this.resultCode = 0;
        this.showBottomCb = false;
        this.requestCode = null;
    }

    public DialogPopup(int i) {
        this.cancelable = true;
        this.resultCode = 0;
        this.showBottomCb = false;
        this.requestCode = Integer.valueOf(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addDialogWindowLockScreenFlagsIfNeeded(Activity activity, Dialog dialog) {
        int i = activity.getWindow().getAttributes().flags;
        int i2 = 0;
        for (int i3 = 0; i3 < 2; i3++) {
            int i4 = new int[]{524288, 4194304}[i3];
            i2 = i2;
            if (isWindowFlagOn(i, i4)) {
                i2 |= i4;
            }
        }
        if (i2 != 0) {
            dialog.getWindow().addFlags(i2);
        }
    }

    private TextView getBottomBarCheckBoxText() {
        return this.bottomBarCheckBoxText;
    }

    private CallAppCheckBox getBottomCB() {
        return this.bottomBarCheckBox;
    }

    private IDialogSimpleListener getDialogCustomListener() {
        return this.dialogCustomListener;
    }

    private static boolean isWindowFlagOn(int i, int i2) {
        return (i & i2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setDialogSizeAndBackground(Dialog dialog, Popup.DialogType dialogType) {
        Window window = dialog.getWindow();
        int i = AnonymousClass8.f15208a[dialogType.ordinal()];
        if (i != 2) {
            if (i != 3) {
                if (i == 4 && window != null) {
                    setWindowWidthToMaxIfNeeded(window);
                    window.setBackgroundDrawable(ThemeUtils.getDialogRoundedCenterBackgroundDrawable());
                    window.setGravity(17);
                }
            } else if (window != null) {
                window.setBackgroundDrawable(ThemeUtils.getDialogRoundedBackgroundDrawable());
                window.setGravity(53);
            }
        } else if (window != null) {
            setWindowWidthToMaxIfNeeded(window);
            window.setBackgroundDrawable(ThemeUtils.getDialogInsetBackgroundDrawable());
            window.setGravity(17);
        }
    }

    private static void setWindowWidthToMaxIfNeeded(Window window) {
        int screenWidth = Activities.getScreenWidth(Activities.getScreenOrientation());
        int i = MAX_ALLOWED_DIALOG_WIDTH_PX;
        if (screenWidth <= i) {
            window.setLayout(-1, -2);
        } else {
            window.setLayout(i, -2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseDialogFragment createDialogFragment(Activity activity, final boolean z) {
        this.cancelListener = new DialogInterface.OnCancelListener() { // from class: com.callapp.contacts.manager.popup.DialogPopup.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                DialogPopup.this.onDialogCancelled(dialogInterface);
                if (DialogPopup.this.dialogCustomListener != null) {
                    DialogPopup.this.dialogCustomListener.b(DialogPopup.this);
                }
            }
        };
        this.dismissListener = new PopupManager.DialogFragmentDismissListener() { // from class: com.callapp.contacts.manager.popup.DialogPopup.2
            @Override // com.callapp.contacts.manager.popup.PopupManager.DialogFragmentDismissListener
            public final void a(BaseDialogFragment baseDialogFragment) {
                DialogPopup.this.onDialogDismissed(baseDialogFragment.getDialog());
                if (DialogPopup.this.dialogCustomListener != null) {
                    DialogPopup.this.dialogCustomListener.a(DialogPopup.this);
                }
            }
        };
        BaseDialogFragment baseDialogFragment = new BaseDialogFragment();
        this.dialogFragment = baseDialogFragment;
        baseDialogFragment.setActivityName(activity.getClass().getName());
        this.dialogFragment.setCreateDialogInterface(new BaseDialogFragment.CreateDialogInterface() { // from class: com.callapp.contacts.manager.popup.DialogPopup.3
            @Override // com.callapp.contacts.manager.popup.BaseDialogFragment.CreateDialogInterface
            public final Dialog a(Activity activity2, Dialog dialog) {
                DialogPopup.this.dialogFragment.setCancelable(DialogPopup.this.cancelable);
                DialogPopup.this.dialogFragment.a(DialogPopup.this.dismissListener);
                DialogPopup.this.dialogFragment.setOnCancelListener(DialogPopup.this.cancelListener);
                dialog.setCanceledOnTouchOutside(z);
                dialog.setOnShowListener(DialogPopup.this.getShowListener());
                DialogPopup.addDialogWindowLockScreenFlagsIfNeeded(activity2, dialog);
                DialogPopup.setDialogSizeAndBackground(dialog, DialogPopup.this.getPopupType());
                dialog.requestWindowFeature(1);
                dialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.callapp.contacts.manager.popup.DialogPopup.3.1
                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                        if (i == 4 && keyEvent.getAction() == 1) {
                            return DialogPopup.this.onDialogBackPressed();
                        }
                        return false;
                    }
                });
                return dialog;
            }

            @Override // com.callapp.contacts.manager.popup.BaseDialogFragment.CreateDialogInterface
            public DialogPopup getDialogPopup() {
                return DialogPopup.this;
            }
        });
        this.dialogFragment.setOnCreateViewListener(new BaseDialogFragment.onCreateViewListener() { // from class: com.callapp.contacts.manager.popup.DialogPopup.4
            @Override // com.callapp.contacts.manager.popup.BaseDialogFragment.onCreateViewListener
            public final View a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
                View ovViewCreated = DialogPopup.this.ovViewCreated(layoutInflater, viewGroup);
                if (ovViewCreated != null) {
                    DialogPopup.this.bottomBarCheckBoxText = (TextView) ovViewCreated.findViewById(2131362341);
                    if (DialogPopup.this.bottomBarCheckBoxText != null) {
                        DialogPopup.this.bottomBarCheckBoxText.setTextColor(ThemeUtils.getColor(2131100108));
                        DialogPopup.this.bottomBarCheckBoxText.setText(DialogPopup.this.getCheckBoxText());
                    }
                    DialogPopup.this.bottomBarCheckBox = (CallAppCheckBox) ovViewCreated.findViewById(2131362304);
                    if (DialogPopup.this.bottomBarCheckBox != null) {
                        DialogPopup.this.bottomBarCheckBox.setTextColor(ThemeUtils.getColor(2131100108));
                        DialogPopup dialogPopup = DialogPopup.this;
                        dialogPopup.showBottomBarCheckBox(dialogPopup.showBottomCb);
                    }
                }
                return ovViewCreated;
            }

            @Override // com.callapp.contacts.manager.popup.BaseDialogFragment.onCreateViewListener
            public void setDialogWindowSize(Window window) {
                DialogPopup.this.setDialogWindowSize(window);
            }
        });
        return this.dialogFragment;
    }

    public void dismiss() {
        BaseDialogFragment baseDialogFragment = this.dialogFragment;
        if (baseDialogFragment != null) {
            try {
                baseDialogFragment.b();
            } catch (Exception e) {
                CLog.a(DialogPopup.class, e);
            }
        }
    }

    protected boolean dismissOnBtnClicked() {
        return true;
    }

    public Activity getActivity() {
        return this.dialogFragment.getActivity();
    }

    protected String getCheckBoxText() {
        return "";
    }

    public Dialog getDialog() {
        return this.dialogFragment.getDialog();
    }

    public Popup.DialogType getPopupType() {
        return Popup.DialogType.legacyDialogs;
    }

    protected DialogInterface.OnShowListener getShowListener() {
        final IDialogSimpleListener dialogCustomListener = getDialogCustomListener();
        if (dialogCustomListener != null) {
            return new DialogInterface.OnShowListener() { // from class: com.callapp.contacts.manager.popup.DialogPopup.6
                @Override // android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    dialogCustomListener.onShow(dialogInterface);
                }
            };
        }
        return null;
    }

    public boolean isBottomBarCheckBoxChecked() {
        CallAppCheckBox bottomCB = getBottomCB();
        return bottomCB != null && bottomCB.getVisibility() == 0 && bottomCB.isChecked();
    }

    public boolean onDialogBackPressed() {
        return false;
    }

    public void onDialogCancelled(DialogInterface dialogInterface) {
    }

    public void onDialogDismissed(DialogInterface dialogInterface) {
        if (this.requestCode != null && (getActivity() instanceof BaseActivity)) {
            ((BaseActivity) getActivity()).onPopupResult(this.requestCode.intValue(), this.resultCode, null);
        }
    }

    public abstract View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup);

    public void setCancelable(boolean z) {
        this.cancelable = z;
    }

    public void setDialogCustomListener(IDialogSimpleListener iDialogSimpleListener) {
        this.dialogCustomListener = iDialogSimpleListener;
    }

    public void setDialogWindowSize(Window window) {
    }

    public void setResultCode(int i) {
        this.resultCode = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View setupButton(View view, IDialogOnClickListener iDialogOnClickListener, int i, String str) {
        return setupButton(view, iDialogOnClickListener, i, str, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View setupButton(View view, IDialogOnClickListener iDialogOnClickListener, int i, String str, int i2) {
        TextView textView = (TextView) setupButton(view, iDialogOnClickListener, i, str);
        if (i2 != 0) {
            textView.setTextColor(i2);
        }
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View setupButton(View view, final IDialogOnClickListener iDialogOnClickListener, int i, String str, boolean z) {
        TextView textView = (TextView) view.findViewById(i);
        if (iDialogOnClickListener != null) {
            if (str == null) {
                str = "";
            }
            textView.setText(str);
            if (z) {
                textView.setTypeface(textView.getTypeface(), 1);
            }
            textView.setTextColor(ThemeUtils.getColor(2131099784));
            textView.setVisibility(0);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.manager.popup.DialogPopup.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.a(view2, 1);
                    iDialogOnClickListener.onClickListener(DialogPopup.this.getActivity());
                    if (DialogPopup.this.dismissOnBtnClicked()) {
                        DialogPopup.this.dismiss();
                    }
                }
            });
        } else {
            textView.setVisibility(8);
        }
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TextView setupTextViewMember(View view, CharSequence charSequence, int i) {
        return setupTextViewMember(view, charSequence, i, 2131100140);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TextView setupTextViewMember(View view, CharSequence charSequence, int i, int i2) {
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            if (StringUtils.b(charSequence)) {
                textView.setText(charSequence);
                textView.setTextColor(ThemeUtils.getColor(i2));
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        }
        view.setBackgroundColor(0);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean shouldCanceledOnTouchOutside() {
        return true;
    }

    public void showBottomBarCheckBox(boolean z) {
        final CallAppCheckBox bottomCB = getBottomCB();
        if (bottomCB != null) {
            int i = 0;
            bottomCB.setVisibility(z ? 0 : 8);
            bottomCB.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.manager.popup.DialogPopup.5
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view) {
                    bottomCB.toggle();
                }
            });
            TextView bottomBarCheckBoxText = getBottomBarCheckBoxText();
            if (bottomBarCheckBoxText != null) {
                if (!z) {
                    i = 8;
                }
                bottomBarCheckBoxText.setVisibility(i);
            }
        }
        this.showBottomCb = z;
    }
}
