package com.pubmatic.sdk.common.utility;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBAlertDialog.class */
public class POBAlertDialog {

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBAlertDialog$POBDialogListener.class */
    public interface POBDialogListener {
        void onCancel(DialogInterface dialogInterface, int i);

        void onSuccess(DialogInterface dialogInterface, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.common.utility.POBAlertDialog$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBAlertDialog$a.class */
    public static final class DialogInterface$OnCancelListenerC1884a implements DialogInterface.OnCancelListener {

        /* renamed from: a */
        final /* synthetic */ POBDialogListener f555a;

        DialogInterface$OnCancelListenerC1884a(POBDialogListener pOBDialogListener) {
            this.f555a = pOBDialogListener;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            this.f555a.onCancel(dialogInterface, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.common.utility.POBAlertDialog$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBAlertDialog$b.class */
    public static final class DialogInterface$OnClickListenerC1885b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ POBDialogListener f556a;

        DialogInterface$OnClickListenerC1885b(POBDialogListener pOBDialogListener) {
            this.f556a = pOBDialogListener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f556a.onCancel(dialogInterface, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.common.utility.POBAlertDialog$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBAlertDialog$c.class */
    public static final class DialogInterface$OnClickListenerC1886c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ POBDialogListener f557a;

        DialogInterface$OnClickListenerC1886c(POBDialogListener pOBDialogListener) {
            this.f557a = pOBDialogListener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f557a.onSuccess(dialogInterface, i);
        }
    }

    public static AlertDialog.Builder build(Context context, String str, String str2, POBDialogListener pOBDialogListener) {
        boolean z;
        AlertDialog.Builder builder;
        try {
            z = !((Activity) context).isFinishing();
        } catch (Exception e) {
            z = true;
        }
        if (context == null || !z) {
            builder = null;
        } else {
            builder = Build.VERSION.SDK_INT >= 21 ? new AlertDialog.Builder(context, 16974374) : new AlertDialog.Builder(context);
            builder.setTitle(str).setMessage(str2).setCancelable(true).setPositiveButton("YES", new DialogInterface$OnClickListenerC1886c(pOBDialogListener)).setNegativeButton("NO", new DialogInterface$OnClickListenerC1885b(pOBDialogListener)).setOnCancelListener(new DialogInterface$OnCancelListenerC1884a(pOBDialogListener)).create();
        }
        return builder;
    }
}
