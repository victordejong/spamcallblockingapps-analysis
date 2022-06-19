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
    public static final int MAX_ALLOWED_DIALOG_WIDTH_PX = (int) Activities.m27699a(392.0f);
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

    /* renamed from: com.callapp.contacts.manager.popup.DialogPopup$8 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/DialogPopup$8.class */
    public static /* synthetic */ class C75308 {

        /* renamed from: a */
        static final /* synthetic */ int[] f26167a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Popup.DialogType.values().length];
            f26167a = iArr;
            try {
                iArr[Popup.DialogType.legacyDialogs.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f26167a[Popup.DialogType.withInset.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f26167a[Popup.DialogType.rounded.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f26167a[Popup.DialogType.roundedCenter.ordinal()] = 4;
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
        /* renamed from: a */
        void mo26209a(DialogPopup dialogPopup);

        /* renamed from: b */
        void mo26208b(DialogPopup dialogPopup);

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

    public static void addDialogWindowLockScreenFlagsIfNeeded(Activity activity, Dialog dialog) {
        int i;
        int i2 = activity.getWindow().getAttributes().flags;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= 2) {
                break;
            }
            int i5 = new int[]{524288, 4194304}[i3];
            int i6 = i;
            if (isWindowFlagOn(i2, i5)) {
                i6 = i | i5;
            }
            i3++;
            i4 = i6;
        }
        if (i != 0) {
            dialog.getWindow().addFlags(i);
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

    public static void setDialogSizeAndBackground(Dialog dialog, Popup.DialogType dialogType) {
        Window window = dialog.getWindow();
        int i = C75308.f26167a[dialogType.ordinal()];
        if (i == 2) {
            if (window == null) {
                return;
            }
            setWindowWidthToMaxIfNeeded(window);
            window.setBackgroundDrawable(ThemeUtils.getDialogInsetBackgroundDrawable());
            window.setGravity(17);
        } else if (i == 3) {
            if (window == null) {
                return;
            }
            window.setBackgroundDrawable(ThemeUtils.getDialogRoundedBackgroundDrawable());
            window.setGravity(53);
        } else if (i != 4 || window == null) {
        } else {
            setWindowWidthToMaxIfNeeded(window);
            window.setBackgroundDrawable(ThemeUtils.getDialogRoundedCenterBackgroundDrawable());
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

    public BaseDialogFragment createDialogFragment(Activity activity, final boolean z) {
        this.cancelListener = new DialogInterface.OnCancelListener() { // from class: com.callapp.contacts.manager.popup.DialogPopup.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                DialogPopup.this.onDialogCancelled(dialogInterface);
                if (DialogPopup.this.dialogCustomListener != null) {
                    DialogPopup.this.dialogCustomListener.mo26208b(DialogPopup.this);
                }
            }
        };
        this.dismissListener = new PopupManager.DialogFragmentDismissListener() { // from class: com.callapp.contacts.manager.popup.DialogPopup.2
            @Override // com.callapp.contacts.manager.popup.PopupManager.DialogFragmentDismissListener
            /* renamed from: a */
            public final void mo28196a(BaseDialogFragment baseDialogFragment) {
                DialogPopup.this.onDialogDismissed(baseDialogFragment.getDialog());
                if (DialogPopup.this.dialogCustomListener != null) {
                    DialogPopup.this.dialogCustomListener.mo26209a(DialogPopup.this);
                }
            }
        };
        BaseDialogFragment baseDialogFragment = new BaseDialogFragment();
        this.dialogFragment = baseDialogFragment;
        baseDialogFragment.setActivityName(activity.getClass().getName());
        this.dialogFragment.setCreateDialogInterface(new BaseDialogFragment.CreateDialogInterface() { // from class: com.callapp.contacts.manager.popup.DialogPopup.3
            @Override // com.callapp.contacts.manager.popup.BaseDialogFragment.CreateDialogInterface
            /* renamed from: a */
            public final Dialog mo28214a(Activity activity2, Dialog dialog) {
                DialogPopup.this.dialogFragment.setCancelable(DialogPopup.this.cancelable);
                DialogPopup.this.dialogFragment.m28215a(DialogPopup.this.dismissListener);
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
            /* renamed from: a */
            public final View mo28213a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
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
                baseDialogFragment.mo11078b();
            } catch (Exception e) {
                CLog.m27609a(DialogPopup.class, e);
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
        if (this.requestCode == null || !(getActivity() instanceof BaseActivity)) {
            return;
        }
        ((BaseActivity) getActivity()).onPopupResult(this.requestCode.intValue(), this.resultCode, null);
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

    public View setupButton(View view, IDialogOnClickListener iDialogOnClickListener, int i, String str) {
        return setupButton(view, iDialogOnClickListener, i, str, false);
    }

    public View setupButton(View view, IDialogOnClickListener iDialogOnClickListener, int i, String str, int i2) {
        TextView textView = (TextView) setupButton(view, iDialogOnClickListener, i, str);
        if (i2 != 0) {
            textView.setTextColor(i2);
        }
        return textView;
    }

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
                    AndroidUtils.m27630a(view2, 1);
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

    public TextView setupTextViewMember(View view, CharSequence charSequence, int i) {
        return setupTextViewMember(view, charSequence, i, 2131100140);
    }

    public TextView setupTextViewMember(View view, CharSequence charSequence, int i, int i2) {
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            if (StringUtils.m26045b(charSequence)) {
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

    public boolean shouldCanceledOnTouchOutside() {
        return true;
    }

    public void showBottomBarCheckBox(boolean z) {
        final CallAppCheckBox bottomCB = getBottomCB();
        if (bottomCB != null) {
            bottomCB.setVisibility(z ? 0 : 8);
            bottomCB.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.manager.popup.DialogPopup.5
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view) {
                    bottomCB.toggle();
                }
            });
            TextView bottomBarCheckBoxText = getBottomBarCheckBoxText();
            if (bottomBarCheckBoxText != null) {
                bottomBarCheckBoxText.setVisibility(z ? 0 : 8);
            }
        }
        this.showBottomCb = z;
    }
}
