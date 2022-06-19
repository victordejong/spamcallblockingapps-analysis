package com.huawei.hms.p095ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import com.huawei.hms.support.log.HMSLog;
/* renamed from: com.huawei.hms.ui.AbstractDialog */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/ui/AbstractDialog.class */
public abstract class AbstractDialog {

    /* renamed from: a */
    public Activity f7817a;

    /* renamed from: b */
    public AlertDialog f7818b;

    /* renamed from: c */
    public Callback f7819c;

    /* renamed from: com.huawei.hms.ui.AbstractDialog$Callback */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/ui/AbstractDialog$Callback.class */
    public interface Callback {
        void onCancel(AbstractDialog abstractDialog);

        void onDoWork(AbstractDialog abstractDialog);
    }

    /* renamed from: com.huawei.hms.ui.AbstractDialog$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/ui/AbstractDialog$a.class */
    public class DialogInterface$OnClickListenerC2463a implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC2463a() {
            AbstractDialog.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AbstractDialog.this.fireDoWork();
        }
    }

    /* renamed from: com.huawei.hms.ui.AbstractDialog$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/ui/AbstractDialog$b.class */
    public class DialogInterface$OnClickListenerC2464b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC2464b() {
            AbstractDialog.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AbstractDialog.this.cancel();
        }
    }

    /* renamed from: com.huawei.hms.ui.AbstractDialog$c */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/ui/AbstractDialog$c.class */
    public class DialogInterface$OnCancelListenerC2465c implements DialogInterface.OnCancelListener {
        public DialogInterface$OnCancelListenerC2465c() {
            AbstractDialog.this = r4;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            AbstractDialog.this.fireCancel();
        }
    }

    /* renamed from: com.huawei.hms.ui.AbstractDialog$d */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/ui/AbstractDialog$d.class */
    public class DialogInterface$OnKeyListenerC2466d implements DialogInterface.OnKeyListener {
        public DialogInterface$OnKeyListenerC2466d() {
            AbstractDialog.this = r4;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (4 == i && keyEvent.getAction() == 1) {
                AbstractDialog.this.cancel();
                return true;
            }
            return false;
        }
    }

    /* renamed from: a */
    public static int m37190a(Context context) {
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier("androidhwext:style/Theme.Emui", null, null);
    }

    public void cancel() {
        AlertDialog alertDialog = this.f7818b;
        if (alertDialog != null) {
            alertDialog.cancel();
        }
    }

    public void dismiss() {
        AlertDialog alertDialog = this.f7818b;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    public void fireCancel() {
        Callback callback = this.f7819c;
        if (callback != null) {
            callback.onCancel(this);
        }
    }

    public void fireDoWork() {
        Callback callback = this.f7819c;
        if (callback != null) {
            callback.onDoWork(this);
        }
    }

    public Activity getActivity() {
        return this.f7817a;
    }

    public int getDialogThemeId() {
        return m37190a(this.f7817a) != 0 ? 0 : 3;
    }

    public AlertDialog onCreateDialog(Activity activity) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity(), getDialogThemeId());
        String onGetTitleString = onGetTitleString(activity);
        if (onGetTitleString != null) {
            builder.setTitle(onGetTitleString);
        }
        String onGetMessageString = onGetMessageString(activity);
        if (onGetMessageString != null) {
            builder.setMessage(onGetMessageString);
        }
        String onGetPositiveButtonString = onGetPositiveButtonString(activity);
        if (onGetPositiveButtonString != null) {
            builder.setPositiveButton(onGetPositiveButtonString, new DialogInterface$OnClickListenerC2463a());
        }
        String onGetNegativeButtonString = onGetNegativeButtonString(activity);
        if (onGetNegativeButtonString != null) {
            builder.setNegativeButton(onGetNegativeButtonString, new DialogInterface$OnClickListenerC2464b());
        }
        return builder.create();
    }

    public abstract String onGetMessageString(Context context);

    public abstract String onGetNegativeButtonString(Context context);

    public abstract String onGetPositiveButtonString(Context context);

    public abstract String onGetTitleString(Context context);

    public void setMessage(CharSequence charSequence) {
        AlertDialog alertDialog = this.f7818b;
        if (alertDialog != null) {
            alertDialog.setMessage(charSequence);
        }
    }

    public void setTitle(CharSequence charSequence) {
        AlertDialog alertDialog = this.f7818b;
        if (alertDialog != null) {
            alertDialog.setTitle(charSequence);
        }
    }

    public void show(Activity activity, Callback callback) {
        this.f7817a = activity;
        this.f7819c = callback;
        if (activity == null || activity.isFinishing()) {
            HMSLog.m37195e("AbstractDialog", "In show, The activity is null or finishing.");
            return;
        }
        AlertDialog onCreateDialog = onCreateDialog(this.f7817a);
        this.f7818b = onCreateDialog;
        onCreateDialog.setCanceledOnTouchOutside(false);
        this.f7818b.setOnCancelListener(new DialogInterface$OnCancelListenerC2465c());
        this.f7818b.setOnKeyListener(new DialogInterface$OnKeyListenerC2466d());
        this.f7818b.show();
    }
}
