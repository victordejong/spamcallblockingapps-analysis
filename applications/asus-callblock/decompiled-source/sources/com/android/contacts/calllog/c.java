package com.android.contacts.calllog;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.android.contacts.util.ImplicitIntentsUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/c.class */
public final class c extends DialogFragment {
    public static c a() {
        return new c();
    }

    private static List<String> a(File file) {
        ArrayList arrayList = null;
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            ArrayList arrayList2 = new ArrayList();
            int length = listFiles.length;
            int i = 0;
            while (true) {
                arrayList = arrayList2;
                if (i >= length) {
                    break;
                }
                File file2 = listFiles[i];
                if (file2.getName().endsWith(".clbu")) {
                    arrayList2.add(file2.getName());
                }
                i++;
            }
        }
        return arrayList;
    }

    public static void a(Activity activity, String str) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("application/calllog-backup");
        Uri fromFile = Uri.fromFile(new File(str));
        intent.putExtra("android.intent.extra.SUBJECT", "[CALLS BACKUP]" + str);
        intent.putExtra("android.intent.extra.STREAM", fromFile);
        ImplicitIntentsUtil.startActivityOutsideApp(activity, Intent.createChooser(intent, activity.getResources().getString(2131756090)));
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (a(new File("sdcard/ASUS/Calllog/Backup/")) == null) {
            dismiss();
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        List<String> a2 = a(new File("sdcard/ASUS/Calllog/Backup/"));
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if (a2 != null) {
            final String[] strArr = new String[a2.size()];
            a2.toArray(strArr);
            builder.setTitle(getResources().getString(2131755184));
            builder.setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.c.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    c.a(c.this.getActivity(), "sdcard/ASUS/Calllog/Backup/" + strArr[i]);
                }
            });
        }
        return builder.create();
    }
}
