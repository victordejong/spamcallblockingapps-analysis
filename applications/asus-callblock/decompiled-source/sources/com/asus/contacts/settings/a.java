package com.asus.contacts.settings;

import android.accounts.AccountManager;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Toast;
import com.android.contacts.a.b;
import com.android.contacts.util.ImplicitIntentsUtil;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/settings/a.class */
public class a extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2739a = a.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private AlertDialog f2740b;

    public static a a(Bundle bundle) {
        a aVar = new a();
        aVar.setArguments(bundle);
        return aVar;
    }

    static /* synthetic */ void a(a aVar) {
        boolean z;
        String packageName = aVar.getActivity().getPackageName();
        try {
            z = ImplicitIntentsUtil.startActivityOutsideApp(aVar.getActivity(), new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + packageName)));
        } catch (ActivityNotFoundException e) {
            z = ImplicitIntentsUtil.startActivityOutsideApp(aVar.getActivity(), new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + packageName)));
        } catch (Exception e2) {
            Log.d(f2739a, "Go to google play error: " + e2.toString());
            Toast.makeText(aVar.getActivity(), "Sorry, failed to open. Please try again later.", 0).show();
            z = true;
        }
        if (z && aVar.a()) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) aVar.getActivity().getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                if (AccountManager.get(aVar.getActivity()).getAccountsByType("com.google").length > 0) {
                    new Handler().postDelayed(new b(aVar.getActivity()), 1700L);
                }
            }
        }
    }

    private boolean a() {
        boolean z;
        try {
            getActivity().getPackageManager().getPackageInfo("com.android.vending", 128);
            z = true;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d(f2739a, "No market package detected");
            z = false;
        }
        return z;
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(2131755141);
        builder.setView(LayoutInflater.from(getActivity()).inflate(2131427500, (ViewGroup) null));
        builder.setPositiveButton(2131755144, new DialogInterface.OnClickListener() { // from class: com.asus.contacts.settings.a.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                b.a();
                b.a(6, a.this.getActivity(), "Dialog", "Dialog: Rate now", "Dialog: Rate now", null);
                a.a(a.this);
            }
        });
        builder.setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.asus.contacts.settings.a.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        this.f2740b = builder.create();
        return this.f2740b;
    }
}
