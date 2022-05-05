package com.asus.contacts.yellowpage;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/m.class */
public final class m extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private static String f2837a;

    public static m a(String str) {
        f2837a = str;
        return new m();
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if (f2837a.equals("event_location_service_unavailable")) {
            builder.setTitle(2131755612);
            builder.setMessage(2131755611);
            builder.setPositiveButton(getResources().getString(2131755613), new DialogInterface.OnClickListener() { // from class: com.asus.contacts.yellowpage.m.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    m.this.getActivity().startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
                }
            });
            builder.setNegativeButton(getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.asus.contacts.yellowpage.m.2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                    Toast.makeText(m.this.getActivity(), m.this.getActivity().getString(2131755610), 0).show();
                }
            });
        }
        if (f2837a.equals("event_position_unknown")) {
            builder.setMessage(2131755956);
            builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.contacts.yellowpage.m.3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    m.this.getActivity().startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
                }
            });
            builder.setNegativeButton(getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.asus.contacts.yellowpage.m.4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                }
            });
        }
        if (f2837a.equals("event_no_data_nearby")) {
            builder.setMessage(2131755907);
            builder.setPositiveButton(getResources().getString(2131755363), new DialogInterface.OnClickListener() { // from class: com.asus.contacts.yellowpage.m.5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                    m.this.getActivity().startActivity(new Intent("android.intent.action.DISTANCE_FILTER"));
                }
            });
            builder.setNegativeButton(getResources().getString(2131755362), new DialogInterface.OnClickListener() { // from class: com.asus.contacts.yellowpage.m.6
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.cancel();
                }
            });
        }
        return builder.create();
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
    }
}
