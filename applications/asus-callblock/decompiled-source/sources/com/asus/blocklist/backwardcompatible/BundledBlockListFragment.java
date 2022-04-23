package com.asus.blocklist.backwardcompatible;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.CursorLoader;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.support.v4.view.p;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.CursorAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.CallLogMultiPickerActivity;
import com.android.contacts.asuscallerid.d;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.asus.a.a;
import com.asus.blocklist.BlockListService;
import com.asus.blocklist.backwardcompatible.a;
import com.asus.blocklist.c;
import com.asus.blocklist.g;
import com.asus.updatesdk.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/backwardcompatible/BundledBlockListFragment.class */
public class BundledBlockListFragment extends Fragment implements LoaderManager.LoaderCallbacks<Cursor>, AdapterView.OnItemClickListener {
    private static a e;
    private static ProgressDialog u;

    /* renamed from: b  reason: collision with root package name */
    public ListView f2474b;
    c c;
    private BundledBlockListFragment f;
    private View g;
    private Map<Integer, Integer> j = new HashMap();
    private d s = new d();
    private Messenger t = new Messenger(this.s);
    private boolean v = false;

    /* renamed from: a  reason: collision with root package name */
    public static final String f2473a = BundledBlockListFragment.class.getSimpleName();
    private static boolean d = false;
    private static Map<Integer, String> h = new HashMap();
    private static Map<Integer, Uri> i = new HashMap();
    private static String k = "0";
    private static String l = "1";
    private static String m = "3";
    private static String n = "4";
    private static int o = 0;
    private static int p = 1;
    private static int q = 2;
    private static int r = 3;

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/backwardcompatible/BundledBlockListFragment$a.class */
    public final class a extends CursorAdapter implements d.a {

        /* renamed from: b  reason: collision with root package name */
        private int f2490b = 0;

        public a(Context context, Cursor cursor) {
            super(context, cursor, 0);
        }

        @Override // com.android.contacts.asuscallerid.d.a
        public final void a(d.c cVar) {
            if ("7".equals(cVar.d)) {
                notifyDataSetChanged();
            }
        }

        @Override // android.widget.CursorAdapter
        public final void bindView(View view, Context context, Cursor cursor) {
            int i;
            int i2;
            b bVar = (b) view.getTag();
            bVar.f2492a.setOnClickListener(new View.OnClickListener() { // from class: com.asus.blocklist.backwardcompatible.BundledBlockListFragment.a.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BundledBlockListFragment.this.getActivity().openContextMenu(view2);
                }
            });
            String string = cursor.getString(cursor.getColumnIndex("displayname"));
            String string2 = cursor.getString(cursor.getColumnIndex("numbertype"));
            String str = (String) BundledBlockListFragment.h.get(Integer.valueOf(this.f2490b));
            if (((Uri) BundledBlockListFragment.i.get(Integer.valueOf(this.f2490b))) == null) {
                if (g.a(string) || !com.asus.a.a.d(context)) {
                    bVar.c.setText(BuildConfig.FLAVOR);
                    bVar.c.setVisibility(8);
                    str = string;
                } else {
                    a.c a2 = com.android.contacts.asuscallerid.d.a().a(BundledBlockListFragment.this.getActivity(), string, "7", 0, null);
                    if (a2 == null) {
                        str = string;
                    } else if (a2.d == null && a2.f2356b == null) {
                        str = string;
                    } else {
                        str = a2.f2356b != null ? string + " (" + a2.f2356b + ") " : string;
                        if (BundledBlockListFragment.this.v) {
                            if (a2.l == 0) {
                                i2 = 2131165777;
                                i = -1;
                            } else if (a2.l == 1) {
                                i2 = 2131165778;
                                i = -1;
                            } else if (a2.l == 6) {
                                i2 = 2131165776;
                                i = -1;
                            } else {
                                i = 0;
                                i2 = 0;
                            }
                            bVar.c.setVisibility(8);
                            if (a2.d != null) {
                                bVar.e.setText(a2.d);
                                bVar.e.setBackgroundResource(i2);
                                bVar.e.setTextColor(i);
                                bVar.e.setVisibility(0);
                            } else {
                                bVar.e.setVisibility(8);
                            }
                        } else {
                            if (a2.l == 0) {
                                bVar.c.setTextColor(-1299649);
                            } else if (a2.l == 1) {
                                bVar.c.setTextColor(-30208);
                            }
                            if (a2.d != null) {
                                int i3 = a2.k;
                                bVar.c.setText(i3 > 0 ? "- " + a2.d + "(" + i3 + ")" : "- " + a2.d);
                                bVar.c.setVisibility(0);
                            } else {
                                bVar.c.setVisibility(8);
                            }
                        }
                    }
                }
            }
            bVar.f2493b.setText(str);
            if (!com.asus.blocklist.a.b(BundledBlockListFragment.this.getActivity())) {
                BundledBlockListFragment.this.j.put(Integer.valueOf(this.f2490b), Integer.valueOf(BundledBlockListFragment.p));
            } else if (g.a(string)) {
                BundledBlockListFragment.this.j.put(Integer.valueOf(this.f2490b), Integer.valueOf(BundledBlockListFragment.p));
            } else {
                BundledBlockListFragment.this.j.put(Integer.valueOf(this.f2490b), Integer.valueOf(BundledBlockListFragment.o));
            }
            if (((Integer) BundledBlockListFragment.this.j.get(Integer.valueOf(this.f2490b))).equals(Integer.valueOf(BundledBlockListFragment.o))) {
                if (string2.equalsIgnoreCase(BundledBlockListFragment.m)) {
                    bVar.d.setText(BundledBlockListFragment.this.getResources().getString(2131755808));
                } else if (string2.equalsIgnoreCase(BundledBlockListFragment.n)) {
                    bVar.d.setText(BundledBlockListFragment.this.getResources().getString(2131755810));
                } else {
                    bVar.d.setText(BundledBlockListFragment.this.getResources().getString(2131755809));
                }
            } else if (((Integer) BundledBlockListFragment.this.j.get(Integer.valueOf(this.f2490b))).equals(Integer.valueOf(BundledBlockListFragment.p))) {
                bVar.d.setText(BundledBlockListFragment.this.getResources().getString(2131755808));
            } else if (((Integer) BundledBlockListFragment.this.j.get(Integer.valueOf(this.f2490b))).equals(Integer.valueOf(BundledBlockListFragment.q))) {
                bVar.d.setText(BundledBlockListFragment.this.getResources().getString(2131755810));
            } else {
                bVar.d.setText(BuildConfig.FLAVOR);
            }
            BundledBlockListFragment bundledBlockListFragment = BundledBlockListFragment.this;
            int i4 = this.f2490b;
            if (bundledBlockListFragment.c == null && bundledBlockListFragment.getActivity() != null) {
                bundledBlockListFragment.c = new c(bundledBlockListFragment.getActivity());
                bundledBlockListFragment.c.start();
            }
            bundledBlockListFragment.c.a(i4, string);
        }

        @Override // android.widget.CursorAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            this.f2490b = i;
            return super.getView(i, view, viewGroup);
        }

        @Override // android.widget.CursorAdapter
        public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
            View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427413, (ViewGroup) null);
            b bVar = new b(BundledBlockListFragment.this, (byte) 0);
            bVar.f2492a = (LinearLayout) inflate.findViewById(2131296381);
            bVar.f2493b = (TextView) inflate.findViewById(2131297183);
            bVar.c = (TextView) inflate.findViewById(2131297371);
            bVar.d = (TextView) inflate.findViewById(2131296383);
            bVar.e = (TextView) inflate.findViewById(2131296444);
            inflate.setBackgroundResource(2131034116);
            inflate.setTag(bVar);
            return inflate;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/backwardcompatible/BundledBlockListFragment$b.class */
    private final class b {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f2492a;

        /* renamed from: b  reason: collision with root package name */
        TextView f2493b;
        TextView c;
        TextView d;
        TextView e;

        private b() {
        }

        /* synthetic */ b(BundledBlockListFragment bundledBlockListFragment, byte b2) {
            this();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/backwardcompatible/BundledBlockListFragment$c.class */
    public static final class c extends HandlerThread implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        Handler f2494a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<Activity> f2495b;

        public c(Activity activity) {
            super("BlockListContactMapping");
            this.f2495b = new WeakReference<>(activity);
        }

        public final void a(int i, String str) {
            synchronized (this) {
                if (this.f2494a == null) {
                    this.f2494a = new Handler(getLooper(), this);
                }
                Message obtainMessage = this.f2494a.obtainMessage();
                Bundle bundle = new Bundle();
                bundle.putInt("position", i);
                bundle.putString(SpeedDialList.Columns.PHONENUMBER, str);
                obtainMessage.what = 0;
                obtainMessage.setData(bundle);
                this.f2494a.sendMessage(obtainMessage);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x034d  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0360  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x0383  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x0426  */
        /* JADX WARN: Removed duplicated region for block: B:137:0x0435  */
        /* JADX WARN: Removed duplicated region for block: B:151:0x04b1  */
        /* JADX WARN: Removed duplicated region for block: B:153:0x04c0  */
        /* JADX WARN: Removed duplicated region for block: B:155:0x04da  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x04ee  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0168  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x020a  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0219  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x02e0  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x031a  */
        @Override // android.os.Handler.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean handleMessage(android.os.Message r8) {
            /*
                Method dump skipped, instructions count: 1294
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.backwardcompatible.BundledBlockListFragment.c.handleMessage(android.os.Message):boolean");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/backwardcompatible/BundledBlockListFragment$d.class */
    final class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 18:
                case 19:
                    int i = message.getData().getInt("result", 0);
                    switch (i) {
                        case p.POSITION_UNCHANGED /* -1 */:
                            if (BundledBlockListFragment.this.getActivity() != null) {
                                Toast.makeText(BundledBlockListFragment.this.getActivity(), BundledBlockListFragment.this.getResources().getString(2131756483), 0).show();
                            }
                            Log.d(BundledBlockListFragment.f2473a, message.what + " result=ALREADY_EXIST");
                            break;
                        case 0:
                        default:
                            Log.d(BundledBlockListFragment.f2473a, message.what + " resultcode=" + i);
                            break;
                        case 1:
                            if (BundledBlockListFragment.this.getActivity() != null) {
                                Toast.makeText(BundledBlockListFragment.this.getActivity(), BundledBlockListFragment.this.getResources().getString(2131755219), 0).show();
                            }
                            Log.d(BundledBlockListFragment.f2473a, message.what + " result=SUCCESS");
                            break;
                    }
                case 20:
                    BundledBlockListFragment.this.b();
                    break;
                case 21:
                    BundledBlockListFragment.this.c();
                    break;
            }
            super.handleMessage(message);
        }
    }

    public static a a() {
        return e;
    }

    private void a(String str) {
        int parseInt = Integer.parseInt(str);
        String string = e.getCursor().getString(e.getCursor().getColumnIndex("numbertype"));
        String string2 = e.getCursor().getString(e.getCursor().getColumnIndex("displayname"));
        String str2 = string;
        if (string == null) {
            str2 = "0";
        }
        if ((str.equalsIgnoreCase(l) && (str2.equalsIgnoreCase(k) || str2.equalsIgnoreCase(l))) || str.equalsIgnoreCase(str2)) {
            return;
        }
        if (g.a(string2)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("block_type", Integer.valueOf(parseInt));
            getActivity().getContentResolver().update(c.b.f2507a, contentValues, "number='" + string2 + "' ", null);
            contentValues.clear();
            contentValues.put("displayname", string2);
            contentValues.put("numbertype", Integer.valueOf(parseInt));
            getActivity().getContentResolver().delete(a.AbstractC0066a.f2502a, "displayname='" + string2 + "' ", null);
            getActivity().getContentResolver().insert(a.AbstractC0066a.f2502a, contentValues);
            return;
        }
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("block_type", Integer.valueOf(parseInt));
        getActivity().getContentResolver().update(c.b.f2507a, contentValues2, "PHONE_NUMBERS_EQUAL( number, ?, 0)", new String[]{string2});
        contentValues2.clear();
        contentValues2.put("displayname", string2);
        contentValues2.put("numbertype", Integer.valueOf(parseInt));
        getActivity().getContentResolver().delete(a.AbstractC0066a.f2502a, "PHONE_NUMBERS_EQUAL( displayname, ?, 0)", new String[]{string2});
        getActivity().getContentResolver().insert(a.AbstractC0066a.f2502a, contentValues2);
    }

    private ProgressDialog l() {
        if (u == null) {
            ProgressDialog progressDialog = new ProgressDialog(getActivity());
            u = progressDialog;
            progressDialog.setCancelable(false);
            u.setMessage(getString(2131755350));
        }
        return u;
    }

    public final void a(int i2) {
        String[] stringArray;
        switch (i2) {
            case 60:
                if (PhoneCapabilityTester.isCNSku() || PhoneCapabilityTester.isCMCCSku() || PhoneCapabilityTester.isCUCCSku()) {
                    String[] strArr = new String[3];
                    System.arraycopy(getResources().getStringArray(2130837543), 0, strArr, 0, 3);
                    AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
                    builder.setTitle(getResources().getString(2131755224));
                    builder.setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.backwardcompatible.BundledBlockListFragment.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i3) {
                            if (i3 == 0) {
                                Bundle bundle = new Bundle();
                                bundle.putBoolean("bDisplayPhone", true);
                                Intent intent = new Intent();
                                intent.setAction("android.intent.action.ASUS_MULTIPLE_PICKER_ADDTOBLOCKLIST");
                                intent.putExtras(bundle);
                                BundledBlockListFragment.this.startActivityForResult(intent, 10);
                            } else if (i3 == 1) {
                                Intent intent2 = new Intent("android.intent.action.CALL_LOG_MULTI_PICKER");
                                intent2.putExtra(CallLogMultiPickerActivity.CallLogPickerModeString, 1);
                                BundledBlockListFragment.this.startActivityForResult(intent2, 11);
                            } else if (i3 == 2) {
                                BundledBlockListFragment.this.a(63);
                            }
                        }
                    });
                    builder.create().show();
                    return;
                }
                AlertDialog.Builder builder2 = new AlertDialog.Builder(getActivity());
                builder2.setTitle(getResources().getString(2131755224));
                if (PhoneCapabilityTester.IsUnbundled()) {
                    stringArray = new String[3];
                    System.arraycopy(getResources().getStringArray(2130837510), 0, stringArray, 0, 3);
                } else {
                    stringArray = getResources().getStringArray(2130837510);
                }
                builder2.setItems(stringArray, new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.backwardcompatible.BundledBlockListFragment.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        if (i3 == 0) {
                            Bundle bundle = new Bundle();
                            bundle.putBoolean("bDisplayPhone", true);
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.ASUS_MULTIPLE_PICKER_ADDTOBLOCKLIST");
                            intent.putExtras(bundle);
                            BundledBlockListFragment.this.startActivityForResult(intent, 10);
                        } else if (i3 == 1) {
                            Intent intent2 = new Intent("android.intent.action.CALL_LOG_MULTI_PICKER");
                            intent2.putExtra(CallLogMultiPickerActivity.CallLogPickerModeString, 1);
                            BundledBlockListFragment.this.startActivityForResult(intent2, 11);
                        } else if (i3 == 2) {
                            BundledBlockListFragment.this.a(63);
                        } else if (i3 == 3) {
                            BundledBlockListFragment.this.a(64);
                        }
                    }
                });
                builder2.create().show();
                return;
            case 61:
            case 62:
                return;
            case 63:
                View inflate = LayoutInflater.from(getActivity()).inflate(2131427407, (ViewGroup) null);
                final EditText editText = (EditText) inflate.findViewById(2131297128);
                AlertDialog.Builder builder3 = new AlertDialog.Builder(getActivity());
                builder3.setTitle(getActivity().getResources().getString(2131756481));
                builder3.setView(inflate);
                builder3.setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.backwardcompatible.BundledBlockListFragment.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        com.asus.blocklist.backwardcompatible.a.c(BundledBlockListFragment.this.getActivity(), editText.getText().toString().trim());
                        editText.setText(BuildConfig.FLAVOR);
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(19, BundledBlockListFragment.this.getActivity(), "Behavior - Block", "Block by BlockList from inputted number", null, null);
                        }
                    }
                });
                builder3.setNegativeButton(getActivity().getResources().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.backwardcompatible.BundledBlockListFragment.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        editText.setText(BuildConfig.FLAVOR);
                    }
                });
                builder3.create().show();
                return;
            case 64:
                View inflate2 = LayoutInflater.from(getActivity()).inflate(2131427408, (ViewGroup) null);
                final EditText editText2 = (EditText) inflate2.findViewById(2131297128);
                editText2.setText(BuildConfig.FLAVOR);
                AlertDialog.Builder builder4 = new AlertDialog.Builder(getActivity());
                builder4.setTitle(getActivity().getResources().getString(2131756482));
                builder4.setView(inflate2);
                builder4.setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.backwardcompatible.BundledBlockListFragment.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        String trim = editText2.getText().toString().trim();
                        if (g.a(trim)) {
                            com.asus.blocklist.backwardcompatible.a.c(BundledBlockListFragment.this.getActivity(), trim);
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(19, BundledBlockListFragment.this.getActivity(), "Behavior - Block", "Block by BlockList from inputted sip number", null, null);
                            }
                        } else {
                            AlertDialog.Builder builder5 = new AlertDialog.Builder(BundledBlockListFragment.this.getActivity());
                            builder5.setTitle(BundledBlockListFragment.this.getResources().getString(2131755190));
                            builder5.setMessage(BundledBlockListFragment.this.getResources().getString(2131755191));
                            builder5.setPositiveButton(BundledBlockListFragment.this.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.backwardcompatible.BundledBlockListFragment.5.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface2, int i4) {
                                }
                            });
                            builder5.create().show();
                        }
                        editText2.setText(BuildConfig.FLAVOR);
                    }
                });
                builder4.setNegativeButton(getActivity().getResources().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.backwardcompatible.BundledBlockListFragment.6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        editText2.setText(BuildConfig.FLAVOR);
                    }
                });
                builder4.create().show();
                return;
            default:
                Log.d(f2473a, "showDialog type not supported.");
                return;
        }
    }

    public final void b() {
        if (l() != null && !l().isShowing()) {
            l().show();
        }
    }

    public final void c() {
        if (u != null && u.isShowing()) {
            l().dismiss();
            u = null;
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.v = com.asus.a.a.h(getActivity());
        boolean z = false;
        if (bundle != null) {
            z = bundle.getBoolean("isDialogShowing");
        }
        if (z) {
            b();
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i2, int i3, Intent intent) {
        long j = 0;
        Log.d(f2473a, "onActivityResult");
        super.onActivityResult(i2, i3, intent);
        if (i3 == -1) {
            switch (i2) {
                case 10:
                    ArrayList<? extends Parcelable> parcelableArrayListExtra = intent.getParcelableArrayListExtra("UriData");
                    Intent intent2 = new Intent(getActivity(), BlockListService.class);
                    intent2.setAction("android.intent.action.ASUS_ADD_CONTACTS_TO_BLOCK_LIST_SERVICE");
                    intent2.putExtra("BLOCKLIST_MESSENGER_EXTRA", this.t);
                    intent2.putParcelableArrayListExtra("BLOCKLIST_LOOKUPURI_URI_ARRAY_EXTRA", parcelableArrayListExtra);
                    getActivity().startService(intent2);
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        Activity activity = getActivity();
                        if (parcelableArrayListExtra != null) {
                            j = parcelableArrayListExtra.size();
                        }
                        com.android.contacts.a.b.a(19, activity, "Behavior - Block", "Block by BlockList from Contacts", "Block by BlockList from Contacts", Long.valueOf(j));
                        return;
                    }
                    return;
                case 11:
                    ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("callsNumberList");
                    Intent intent3 = new Intent(getActivity(), BlockListService.class);
                    intent3.setAction("android.intent.action.ASUS_ADD_CALLLOGS_TO_BLOCK_LIST_SERVICE");
                    intent3.putExtra("BLOCKLIST_MESSENGER_EXTRA", this.t);
                    intent3.putStringArrayListExtra("BLOCKLIST_CALLNUMBER_STRING_ARRAY_EXTRA", stringArrayListExtra);
                    getActivity().startService(intent3);
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        Activity activity2 = getActivity();
                        if (stringArrayListExtra != null) {
                            j = stringArrayListExtra.size();
                        }
                        com.android.contacts.a.b.a(19, activity2, "Behavior - UnBlock", "Block by BlockList from Call log", "Block by BlockList from Call log", Long.valueOf(j));
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        this.f = this;
        super.onAttach(activity);
    }

    @Override // android.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z;
        AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo();
        final int i2 = adapterContextMenuInfo.position;
        switch (menuItem.getItemId()) {
            case 51:
                new AlertDialog.Builder(this.f.getActivity()).setTitle(this.f.getActivity().getResources().getString(2131755798)).setMessage(this.f.getActivity().getResources().getString(2131755015)).setPositiveButton(this.f.getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.backwardcompatible.BundledBlockListFragment.8
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        Cursor cursor = BundledBlockListFragment.a().getCursor();
                        if (cursor != null && cursor.moveToPosition(i2)) {
                            long j = cursor.getInt(cursor.getColumnIndex("_id"));
                            com.asus.blocklist.backwardcompatible.a.a(BundledBlockListFragment.this.getActivity(), Uri.withAppendedPath(a.AbstractC0066a.f2502a, String.valueOf(j)));
                            g.a(BundledBlockListFragment.this.getActivity(), Uri.withAppendedPath(c.b.f2507a, String.valueOf(j)));
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(19, BundledBlockListFragment.this.f.getActivity(), "Behavior - UnBlock", "Unblock by blocklist", null, null);
                            }
                        }
                    }
                }).setNegativeButton(this.f.getActivity().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.backwardcompatible.BundledBlockListFragment.7
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                    }
                }).show();
                z = true;
                break;
            case 52:
                e.getCursor().moveToPosition(adapterContextMenuInfo.position);
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(i.get(Integer.valueOf(adapterContextMenuInfo.position)));
                ImplicitIntentsUtil.startActivityInApp(getActivity(), intent);
                z = true;
                break;
            case 53:
            default:
                z = super.onContextItemSelected(menuItem);
                break;
            case 54:
                a(k);
                z = true;
                break;
            case 55:
                a(m);
                z = true;
                break;
            case 56:
                a(n);
                z = true;
                break;
        }
        return z;
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        int i2 = ((AdapterView.AdapterContextMenuInfo) contextMenuInfo).position;
        switch (view.getId()) {
            case 2131296382:
                Cursor cursor = e.getCursor();
                cursor.moveToPosition(i2);
                String str = h.get(Integer.valueOf(i2));
                if (com.asus.a.b.c(getActivity()) == 0) {
                    if (str != null) {
                        contextMenu.add(0, 52, 0, getResources().getString(2131756454));
                        contextMenu.add(0, 51, 1, getResources().getString(2131755798));
                        contextMenu.setHeaderTitle(str);
                        return;
                    }
                    contextMenu.setHeaderTitle(cursor.getString(cursor.getColumnIndex("displayname")));
                    contextMenu.add(0, 51, 0, getResources().getString(2131755798));
                    return;
                } else if (str != null) {
                    if (this.j.get(Integer.valueOf(i2)).equals(Integer.valueOf(o))) {
                        contextMenu.add(0, 54, 0, getResources().getString(2131755809));
                        contextMenu.add(0, 55, 1, getResources().getString(2131755808));
                        contextMenu.add(0, 56, 2, getResources().getString(2131755810));
                    }
                    contextMenu.add(0, 52, 3, getResources().getString(2131756454));
                    contextMenu.add(0, 51, 4, getResources().getString(2131755798));
                    contextMenu.setHeaderTitle(str);
                    return;
                } else {
                    contextMenu.setHeaderTitle(cursor.getString(cursor.getColumnIndex("displayname")));
                    if (this.j.get(Integer.valueOf(i2)).equals(Integer.valueOf(o))) {
                        contextMenu.add(0, 54, 0, getResources().getString(2131755809));
                        contextMenu.add(0, 55, 1, getResources().getString(2131755808));
                        contextMenu.add(0, 56, 2, getResources().getString(2131755810));
                    }
                    contextMenu.add(0, 51, 3, getResources().getString(2131755798));
                    return;
                }
            default:
                return;
        }
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public Loader<Cursor> onCreateLoader(int i2, Bundle bundle) {
        CursorLoader cursorLoader;
        switch (i2) {
            case 0:
                cursorLoader = new CursorLoader(getActivity(), a.AbstractC0066a.f2502a, null, "_id not null ) Group by (displayname", null, null);
                break;
            default:
                cursorLoader = null;
                break;
        }
        return cursorLoader;
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(2131492871, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.g = layoutInflater.inflate(2131427411, (ViewGroup) null);
        this.f2474b = (ListView) this.g.findViewById(2131296382);
        this.f2474b.setItemsCanFocus(false);
        this.f2474b.setOnItemClickListener(this);
        setHasOptionsMenu(true);
        registerForContextMenu(this.f2474b);
        getLoaderManager().initLoader(0, null, this);
        return this.g;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.c != null) {
            c cVar = this.c;
            if (cVar.f2494a != null) {
                Log.d(f2473a, "Terminate ContactMappingTask");
                cVar.f2494a.removeMessages(0);
                cVar.f2494a.getLooper().quitSafely();
            }
            this.c = null;
        }
        if (this.f != null) {
            this.f = null;
        }
        if (e != null) {
            com.android.contacts.asuscallerid.d.a().b(e);
            e = null;
        }
        if (this.f2474b != null) {
            this.f2474b.setOnItemClickListener(null);
            this.f2474b = null;
        }
        c();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        Cursor cursor2 = cursor;
        Log.d(f2473a, "onLoadFinished");
        LinearLayout linearLayout = (LinearLayout) this.g.findViewById(2131296789);
        ListView listView = (ListView) this.g.findViewById(2131296382);
        if (cursor2 == null || cursor2.getCount() <= 0) {
            if (listView != null) {
                listView.setVisibility(8);
            }
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
            }
        } else {
            if (listView != null) {
                listView.setVisibility(0);
            }
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
        }
        if (e == null) {
            e = new a(getActivity(), cursor2);
            if (com.asus.a.a.d(getActivity())) {
                com.android.contacts.asuscallerid.d.a().a(e);
            }
        } else {
            e.changeCursor(cursor2);
        }
        this.f2474b.setAdapter((ListAdapter) e);
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 2131296316:
                a(60);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        if (d) {
            Log.d(f2473a, "onPause");
        }
    }

    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem = menu.findItem(2131296316);
        if (!PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && findItem != null) {
            getActivity();
            com.asus.contacts.b.b.a();
            findItem.setVisible(false);
        }
        if (g.g(getActivity()) >= 2) {
            findItem.setVisible(false);
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (d) {
            Log.d(f2473a, "onResume");
        }
        if (e != null) {
            e.notifyDataSetChanged();
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (u != null && u.isShowing()) {
            bundle.putBoolean("isDialogShowing", true);
        }
        super.onSaveInstanceState(bundle);
    }
}
