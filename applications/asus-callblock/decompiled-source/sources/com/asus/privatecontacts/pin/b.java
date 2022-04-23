package com.asus.privatecontacts.pin;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.asus.privatecontacts.PrivateContactsActivity;
import com.asus.privatecontacts.provider.c;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/pin/b.class */
public class b extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3045a = b.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private Uri f3046b;
    private TextView c;
    private EditText d;
    private ImageView e;
    private Intent f;

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/pin/b$a.class */
    final class a extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        Context f3049a;

        /* renamed from: b  reason: collision with root package name */
        Uri f3050b;
        String c;
        ProgressDialog d;

        public a(Context context, Uri uri) {
            this.f3049a = context;
            this.f3050b = uri;
        }

        private Boolean a() {
            boolean valueOf;
            if (this.f3050b != null) {
                try {
                    File a2 = com.asus.privatecontacts.b.b.a();
                    this.c = a2.toString() + File.separator + ("Private_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + ".jpg");
                    com.asus.privatecontacts.b.b.a(this.f3049a.getContentResolver(), this.f3050b, this.c);
                    boolean delete = new File(this.f3050b.getPath()).delete();
                    if (delete) {
                        c.a(b.this.getActivity(), (Uri) null);
                    }
                    valueOf = Boolean.valueOf(delete);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return valueOf;
            }
            valueOf = false;
            return valueOf;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            if (this.d != null) {
                this.d.cancel();
                this.d.dismiss();
            }
            if (bool2.booleanValue()) {
                try {
                    Toast.makeText(this.f3049a, this.f3049a.getResources().getString(2131755992), 0).show();
                    this.f3049a.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(new File(this.c))));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            this.d = new ProgressDialog(this.f3049a);
            this.d.setCancelable(false);
            this.d.setMessage(b.this.getString(2131755350));
            this.d.show();
        }
    }

    public static b a(Uri uri, Intent intent) {
        b bVar = new b();
        bVar.setCancelable(false);
        Bundle bundle = new Bundle();
        bundle.putString("key_photo_uri", uri.toString());
        bundle.putParcelable("extra_callback_intent", intent);
        bVar.setArguments(bundle);
        return bVar;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        if (bundle != null) {
            String string = bundle.getString("key_photo_uri");
            if (string != null) {
                this.f3046b = Uri.parse(string);
            }
            Intent intent = (Intent) bundle.getParcelable("extra_callback_intent");
            if (intent != null) {
                this.f = intent;
            }
        } else {
            Bundle arguments = getArguments();
            if (arguments != null) {
                String string2 = arguments.getString("key_photo_uri");
                if (string2 != null) {
                    this.f3046b = Uri.parse(string2);
                }
                Intent intent2 = (Intent) arguments.getParcelable("extra_callback_intent");
                if (intent2 != null) {
                    this.f = intent2;
                }
            } else {
                this.f3046b = null;
                this.f = null;
                Log.e(f3045a, "mTakenPhotoUri is null !");
            }
        }
        View inflate = getActivity().getLayoutInflater().inflate(2131427632, (ViewGroup) null);
        this.c = (TextView) inflate.findViewById(2131297085);
        this.d = (EditText) inflate.findViewById(2131296779);
        this.e = (ImageView) inflate.findViewById(2131297386);
        this.c.setText(getResources().getString(2131755980));
        this.d.setVisibility(8);
        this.e.setVisibility(0);
        if (this.f3046b != null) {
            com.asus.privatecontacts.b.b.a(this.e, this.f3046b, 0);
        } else {
            Log.e(f3045a, "mTakenPhotoUri is null!");
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setTitle(2131755990);
        builder.setView(inflate);
        builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.privatecontacts.pin.b.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                try {
                    new a(b.this.getActivity(), c.j(b.this.getActivity())).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (b.this.f != null) {
                    ImplicitIntentsUtil.startActivityInAppIfPossible(b.this.getActivity(), b.this.f);
                } else {
                    ImplicitIntentsUtil.startActivityInApp(b.this.getActivity(), new Intent(b.this.getActivity(), PrivateContactsActivity.class));
                }
                dialogInterface.cancel();
                b.this.getActivity().finish();
            }
        });
        builder.setNegativeButton(getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.asus.privatecontacts.pin.b.2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                try {
                    if (new File(c.j(b.this.getActivity()).getPath()).delete()) {
                        c.a(b.this.getActivity(), (Uri) null);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (b.this.f != null) {
                    ImplicitIntentsUtil.startActivityInAppIfPossible(b.this.getActivity(), b.this.f);
                } else {
                    ImplicitIntentsUtil.startActivityInApp(b.this.getActivity(), new Intent(b.this.getActivity(), PrivateContactsActivity.class));
                }
                dialogInterface.cancel();
                b.this.getActivity().finish();
            }
        });
        return builder.create();
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            if (this.f3046b != null) {
                bundle.putString("key_photo_uri", this.f3046b.toString());
            }
            if (this.f != null) {
                bundle.putParcelable("extra_callback_intent", this.f);
            }
        }
    }
}
