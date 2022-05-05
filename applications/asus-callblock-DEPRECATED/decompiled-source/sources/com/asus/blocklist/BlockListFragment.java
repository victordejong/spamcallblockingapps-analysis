package com.asus.blocklist;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
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
import android.os.UserHandle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.CursorAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.CallLogMultiPickerActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.asuscallerid.d;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.util.TelecomUtil;
import com.android.vcard.VCardConfig;
import com.asus.a.a;
import com.asus.blocklist.a;
import com.asus.blocklist.c;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListFragment.class */
public class BlockListFragment extends Fragment implements LoaderManager.LoaderCallbacks<Cursor>, View.OnClickListener, AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2386a = BlockListFragment.class.getSimpleName();
    private static boolean g = false;
    private static String m = "0";
    private static String n = "1";
    private static String o = "3";
    private static String p = "4";
    private static int q = 0;
    private static int r = 1;
    private static int s = 2;
    private static int t = 3;
    private static ProgressDialog x;

    /* renamed from: b  reason: collision with root package name */
    b f2387b;
    ListView c;
    d d;
    ViewStub e;
    View f;
    private BlockListFragment h;
    private View i;
    private Map<Integer, String> j = new HashMap();
    private Map<Integer, Uri> k = new HashMap();
    private Map<Integer, Integer> l = new HashMap();
    private boolean u = false;
    private e v = new e();
    private Messenger w = new Messenger(this.v);
    private Map<String, a.C0064a> y = new HashMap();
    private HashSet<String> z = new HashSet<>();

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListFragment$a.class */
    private final class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(BlockListFragment blockListFragment, byte b2) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle resultExtras = getResultExtras(true);
            char c = 65535;
            switch (action.hashCode()) {
                case -1319420822:
                    if (action.equals("com.asus.blocklist.reEnable")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1468657472:
                    if (action.equals("com.asus.blocklist.getSuppressionState")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    boolean z = resultExtras.getBoolean("isSuppression");
                    Log.d(BlockListFragment.f2386a, "[AsusSupressionCheckReceiver] Receive isSupression = " + z);
                    BlockListFragment blockListFragment = BlockListFragment.this;
                    if (z) {
                        if (blockListFragment.f == null) {
                            blockListFragment.f = blockListFragment.e.inflate();
                        }
                        ((TextView) blockListFragment.f.findViewById(2131297227)).setOnClickListener(blockListFragment);
                        return;
                    } else if (blockListFragment.f != null) {
                        blockListFragment.f.setVisibility(8);
                        return;
                    } else {
                        return;
                    }
                case 1:
                    Log.d(BlockListFragment.f2386a, "[AsusSupressionCheckReceiver] Receive isEnabled = " + resultExtras.getBoolean("isEnabled"));
                    Toast.makeText(BlockListFragment.this.getActivity(), 2131756044, 0).show();
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListFragment$b.class */
    public final class b extends CursorAdapter implements d.a {

        /* renamed from: b  reason: collision with root package name */
        private int f2414b = 0;

        public b(Context context, Cursor cursor) {
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
            String str;
            c cVar = (c) view.getTag();
            cVar.f2416a.setOnClickListener(new View.OnClickListener() { // from class: com.asus.blocklist.BlockListFragment.b.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    if (BlockListFragment.this.getActivity() != null) {
                        BlockListFragment.this.getActivity().openContextMenu(view2);
                    }
                }
            });
            String string = cursor.getString(cursor.getColumnIndex("number"));
            String string2 = cursor.getString(cursor.getColumnIndex("block_type"));
            String string3 = cursor.getString(cursor.getColumnIndex("contact_name"));
            long j = cursor.getLong(cursor.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID));
            String string4 = cursor.getString(cursor.getColumnIndex("contact_lookupkey"));
            if (j > 0) {
                str = !TextUtils.isEmpty(string3) ? string + " (" + string3 + ") " : string;
                BlockListFragment.this.j.put(Integer.valueOf(this.f2414b), str);
                BlockListFragment.this.k.put(Integer.valueOf(this.f2414b), ContactsContract.Contacts.getLookupUri(j, string4));
            } else if (g.a(string) || !com.asus.a.a.d(context)) {
                cVar.c.setText(BuildConfig.FLAVOR);
                cVar.c.setVisibility(8);
                str = string;
            } else {
                a.c a2 = com.android.contacts.asuscallerid.d.a().a(BlockListFragment.this.getActivity(), string, "7", 0, null);
                if (a2 == null) {
                    str = string;
                } else if (a2.d == null && a2.f2356b == null) {
                    str = string;
                } else {
                    str = a2.f2356b != null ? string + " (" + a2.f2356b + ") " : string;
                    if (BlockListFragment.this.u) {
                        int i = 0;
                        if (a2.l == 0) {
                            i = 2131165777;
                        } else if (a2.l == 1) {
                            i = 2131165778;
                        } else if (a2.l == 6) {
                            i = 2131165776;
                        }
                        if (a2.d != null) {
                            int i2 = a2.k;
                            cVar.c.setText(i2 > 0 ? "- " + a2.d + "(" + i2 + ")" : "- " + a2.d);
                            cVar.c.setBackgroundResource(i);
                            cVar.c.setVisibility(0);
                        } else {
                            cVar.c.setVisibility(8);
                        }
                    } else {
                        if (a2.l == 0) {
                            cVar.c.setTextColor(-1299649);
                        } else if (a2.l == 1) {
                            cVar.c.setTextColor(-30208);
                        }
                        if (a2.d != null) {
                            int i3 = a2.k;
                            cVar.c.setText(i3 > 0 ? "- " + a2.d + "(" + i3 + ")" : "- " + a2.d);
                            cVar.c.setVisibility(0);
                        } else {
                            cVar.c.setVisibility(8);
                        }
                    }
                }
            }
            cVar.f2417b.setText(str);
            if (!com.asus.blocklist.a.b(BlockListFragment.this.getActivity()) && !CompatUtils.isNCompatible()) {
                BlockListFragment.this.l.put(Integer.valueOf(this.f2414b), Integer.valueOf(BlockListFragment.r));
            } else if (CallUtil.isUriNumber(string)) {
                BlockListFragment.this.l.put(Integer.valueOf(this.f2414b), Integer.valueOf(BlockListFragment.r));
            } else {
                BlockListFragment.this.l.put(Integer.valueOf(this.f2414b), Integer.valueOf(BlockListFragment.q));
            }
            if (((Integer) BlockListFragment.this.l.get(Integer.valueOf(this.f2414b))).equals(Integer.valueOf(BlockListFragment.q))) {
                if (string2.equalsIgnoreCase(BlockListFragment.o)) {
                    cVar.d.setText(BlockListFragment.this.getResources().getString(2131755808));
                } else if (string2.equalsIgnoreCase(BlockListFragment.p)) {
                    cVar.d.setText(BlockListFragment.this.getResources().getString(2131755810));
                } else {
                    cVar.d.setText(BlockListFragment.this.getResources().getString(2131755809));
                }
            } else if (((Integer) BlockListFragment.this.l.get(Integer.valueOf(this.f2414b))).equals(Integer.valueOf(BlockListFragment.r))) {
                cVar.d.setText(BlockListFragment.this.getResources().getString(2131755808));
            } else if (((Integer) BlockListFragment.this.l.get(Integer.valueOf(this.f2414b))).equals(Integer.valueOf(BlockListFragment.s))) {
                cVar.d.setText(BlockListFragment.this.getResources().getString(2131755810));
            } else {
                cVar.d.setText(BuildConfig.FLAVOR);
            }
            if (!BlockListFragment.this.z.contains(string)) {
                BlockListFragment.this.z.add(string);
                BlockListFragment blockListFragment = BlockListFragment.this;
                int i4 = this.f2414b;
                if (blockListFragment.d == null) {
                    blockListFragment.d = new d(blockListFragment.getActivity());
                    blockListFragment.d.start();
                }
                blockListFragment.d.a(i4, string);
            }
        }

        @Override // android.widget.CursorAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            this.f2414b = i;
            return super.getView(i, view, viewGroup);
        }

        @Override // android.widget.CursorAdapter
        public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
            View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427413, (ViewGroup) null);
            c cVar = new c(BlockListFragment.this, (byte) 0);
            cVar.f2416a = (LinearLayout) inflate.findViewById(2131296381);
            cVar.f2417b = (TextView) inflate.findViewById(2131297183);
            cVar.c = (TextView) inflate.findViewById(2131297371);
            cVar.d = (TextView) inflate.findViewById(2131296383);
            inflate.setBackgroundResource(2131034116);
            inflate.setTag(cVar);
            return inflate;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListFragment$c.class */
    private final class c {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f2416a;

        /* renamed from: b  reason: collision with root package name */
        TextView f2417b;
        TextView c;
        TextView d;

        private c() {
        }

        /* synthetic */ c(BlockListFragment blockListFragment, byte b2) {
            this();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListFragment$d.class */
    public final class d extends HandlerThread implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        Handler f2418a;
        private Context c;

        public d(Context context) {
            super("BlockListContactMapping");
            this.c = context;
        }

        public final void a(int i, String str) {
            synchronized (this) {
                if (this.f2418a == null) {
                    this.f2418a = new Handler(getLooper(), this);
                }
                Message obtainMessage = this.f2418a.obtainMessage();
                Bundle bundle = new Bundle();
                bundle.putInt("position", i);
                bundle.putString(SpeedDialList.Columns.PHONENUMBER, str);
                obtainMessage.what = 0;
                obtainMessage.setData(bundle);
                this.f2418a.sendMessage(obtainMessage);
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(17:202|88|(4:90|186|91|(17:93|94|95|96|97|(1:99)|208|100|(3:204|102|(6:104|105|106|(1:108)|109|(2:150|(3:156|180|157))(3:115|191|116)))|173|105|106|(0)|109|(1:111)|150|(5:152|154|156|180|157)))|175|97|(0)|208|100|(0)|173|105|106|(0)|109|(0)|150|(0)) */
        /* JADX WARN: Code restructure failed: missing block: B:138:0x0514, code lost:
            r15 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:139:0x0516, code lost:
            r13 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:143:0x0550, code lost:
            r10 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:144:0x0551, code lost:
            r13 = null;
         */
        /* JADX WARN: Removed duplicated region for block: B:108:0x0412  */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0422  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x050a  */
        /* JADX WARN: Removed duplicated region for block: B:147:0x0559  */
        /* JADX WARN: Removed duplicated region for block: B:152:0x0567  */
        /* JADX WARN: Removed duplicated region for block: B:204:0x03ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0133  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0143  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x022b  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x027a  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x02a7  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0386  */
        @Override // android.os.Handler.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean handleMessage(android.os.Message r10) {
            /*
                Method dump skipped, instructions count: 1621
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.BlockListFragment.d.handleMessage(android.os.Message):boolean");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListFragment$e.class */
    final class e extends Handler {
        e() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:13:0x008f  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void handleMessage(android.os.Message r5) {
            /*
                r4 = this;
                r0 = r5
                int r0 = r0.what
                switch(r0) {
                    case 18: goto L_0x003e;
                    case 19: goto L_0x003e;
                    case 20: goto L_0x002e;
                    case 21: goto L_0x0038;
                    case 22: goto L_0x0085;
                    default: goto L_0x0028;
                }
            L_0x0028:
                r0 = r4
                r1 = r5
                super.handleMessage(r1)
                return
            L_0x002e:
                r0 = r4
                com.asus.blocklist.BlockListFragment r0 = com.asus.blocklist.BlockListFragment.this
                r0.a()
                goto L_0x0028
            L_0x0038:
                com.asus.blocklist.BlockListFragment.b()
                goto L_0x0028
            L_0x003e:
                r0 = r5
                android.os.Bundle r0 = r0.getData()
                java.lang.String r1 = "result"
                r2 = 0
                int r0 = r0.getInt(r1, r2)
                r6 = r0
                r0 = r6
                switch(r0) {
                    case -1: goto L_0x00e0;
                    case 0: goto L_0x0064;
                    case 1: goto L_0x009c;
                    default: goto L_0x0064;
                }
            L_0x0064:
                java.lang.String r0 = com.asus.blocklist.BlockListFragment.f2386a
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r2 = r1
                r2.<init>()
                r2 = r5
                int r2 = r2.what
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = " resultcode="
                java.lang.StringBuilder r1 = r1.append(r2)
                r2 = r6
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                int r0 = android.util.Log.d(r0, r1)
            L_0x0085:
                r0 = r4
                com.asus.blocklist.BlockListFragment r0 = com.asus.blocklist.BlockListFragment.this
                com.asus.blocklist.BlockListFragment$b r0 = com.asus.blocklist.BlockListFragment.g(r0)
                if (r0 == 0) goto L_0x0028
                r0 = r4
                com.asus.blocklist.BlockListFragment r0 = com.asus.blocklist.BlockListFragment.this
                com.asus.blocklist.BlockListFragment$b r0 = com.asus.blocklist.BlockListFragment.g(r0)
                r0.notifyDataSetChanged()
                goto L_0x0028
            L_0x009c:
                r0 = r4
                com.asus.blocklist.BlockListFragment r0 = com.asus.blocklist.BlockListFragment.this
                android.app.Activity r0 = r0.getActivity()
                if (r0 == 0) goto L_0x00c0
                r0 = r4
                com.asus.blocklist.BlockListFragment r0 = com.asus.blocklist.BlockListFragment.this
                android.app.Activity r0 = r0.getActivity()
                r1 = r4
                com.asus.blocklist.BlockListFragment r1 = com.asus.blocklist.BlockListFragment.this
                android.content.res.Resources r1 = r1.getResources()
                r2 = 2131755219(0x7f1000d3, float:1.9141311E38)
                java.lang.String r1 = r1.getString(r2)
                r2 = 0
                android.widget.Toast r0 = android.widget.Toast.makeText(r0, r1, r2)
                r0.show()
            L_0x00c0:
                java.lang.String r0 = com.asus.blocklist.BlockListFragment.f2386a
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r2 = r1
                r2.<init>()
                r2 = r5
                int r2 = r2.what
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = " result=SUCCESS"
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                int r0 = android.util.Log.d(r0, r1)
                goto L_0x0085
            L_0x00e0:
                r0 = r4
                com.asus.blocklist.BlockListFragment r0 = com.asus.blocklist.BlockListFragment.this
                android.app.Activity r0 = r0.getActivity()
                if (r0 == 0) goto L_0x0104
                r0 = r4
                com.asus.blocklist.BlockListFragment r0 = com.asus.blocklist.BlockListFragment.this
                android.app.Activity r0 = r0.getActivity()
                r1 = r4
                com.asus.blocklist.BlockListFragment r1 = com.asus.blocklist.BlockListFragment.this
                android.content.res.Resources r1 = r1.getResources()
                r2 = 2131756483(0x7f1005c3, float:1.9143875E38)
                java.lang.String r1 = r1.getString(r2)
                r2 = 0
                android.widget.Toast r0 = android.widget.Toast.makeText(r0, r1, r2)
                r0.show()
            L_0x0104:
                java.lang.String r0 = com.asus.blocklist.BlockListFragment.f2386a
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r2 = r1
                r2.<init>()
                r2 = r5
                int r2 = r2.what
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = " result=ALREADY_EXIST"
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                int r0 = android.util.Log.d(r0, r1)
                goto L_0x0085
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.BlockListFragment.e.handleMessage(android.os.Message):void");
        }
    }

    public static a.C0064a a(Cursor cursor) {
        return new a.C0064a(cursor.getInt(cursor.getColumnIndex("_id")), cursor.getString(cursor.getColumnIndex("number")), cursor.getInt(cursor.getColumnIndex("block_type")), cursor.getString(cursor.getColumnIndex("contact_name")), cursor.getLong(cursor.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID)), cursor.getString(cursor.getColumnIndex("contact_lookupkey")));
    }

    public static void a(View view) {
        if (view != null) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0103 -> B:20:0x00da). Please submit an issue!!! */
    private void a(String str) {
        int parseInt = Integer.parseInt(str);
        String string = this.f2387b.getCursor().getString(this.f2387b.getCursor().getColumnIndex("_id"));
        String string2 = this.f2387b.getCursor().getString(this.f2387b.getCursor().getColumnIndex("block_type"));
        String string3 = this.f2387b.getCursor().getString(this.f2387b.getCursor().getColumnIndex("number"));
        String str2 = string2;
        if (string2 == null) {
            str2 = "0";
        }
        if ((!str.equalsIgnoreCase(n) || (!str2.equalsIgnoreCase(m) && !str2.equalsIgnoreCase(n))) && !str.equalsIgnoreCase(str2)) {
            if (CompatUtils.isNCompatible()) {
                String a2 = g.a(getActivity(), string3);
                if (str.equalsIgnoreCase(m)) {
                    try {
                        Uri l = g.l(getActivity(), a2);
                        if (PhoneCapabilityTester.isDebug()) {
                            Log.d(f2386a, "update blockType for BlockedNumberProvider, uri:" + l);
                        }
                    } catch (Exception e2) {
                        Log.w(f2386a, "fail to update blockType for BlockedNumberProvider due to: " + e2.toString());
                    }
                } else {
                    int m2 = g.m(getActivity(), a2);
                    if (PhoneCapabilityTester.isDebug()) {
                        Log.d(f2386a, "update blockType for BlockedNumberProvider, delete count:" + m2);
                    }
                }
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("block_type", Integer.valueOf(parseInt));
            getActivity().getContentResolver().update(Uri.withAppendedPath(c.b.f2507a, string), contentValues, null, null);
        }
    }

    public static void b() {
        if (x != null && x.isShowing()) {
            x.dismiss();
            x = null;
        }
    }

    private ProgressDialog h() {
        if (x == null) {
            ProgressDialog progressDialog = new ProgressDialog(getActivity());
            x = progressDialog;
            progressDialog.setCancelable(false);
            x.setMessage(getString(2131755350));
        }
        return x;
    }

    public final void a() {
        if (h() != null && !h().isShowing()) {
            h().show();
        }
    }

    public final void a(int i) {
        String[] stringArray;
        switch (i) {
            case 0:
                if (PhoneCapabilityTester.isCNSku() || PhoneCapabilityTester.isCMCCSku() || PhoneCapabilityTester.isCUCCSku()) {
                    String[] strArr = new String[3];
                    System.arraycopy(getResources().getStringArray(2130837543), 0, strArr, 0, 3);
                    AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
                    builder.setTitle(getResources().getString(2131755224));
                    builder.setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.BlockListFragment.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            if (i2 == 0) {
                                Bundle bundle = new Bundle();
                                bundle.putBoolean("bDisplayPhone", true);
                                Intent intent = new Intent();
                                intent.setAction("android.intent.action.ASUS_MULTIPLE_PICKER_ADDTOBLOCKLIST");
                                intent.putExtras(bundle);
                                BlockListFragment.this.startActivityForResult(intent, 10);
                            } else if (i2 == 1) {
                                Intent intent2 = new Intent("android.intent.action.CALL_LOG_MULTI_PICKER");
                                intent2.putExtra(CallLogMultiPickerActivity.CallLogPickerModeString, 1);
                                BlockListFragment.this.startActivityForResult(intent2, 11);
                            } else if (i2 == 2) {
                                BlockListFragment.this.a(3);
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
                builder2.setItems(stringArray, new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.BlockListFragment.6
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        if (i2 == 0) {
                            Bundle bundle = new Bundle();
                            bundle.putBoolean("bDisplayPhone", true);
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.ASUS_MULTIPLE_PICKER_ADDTOBLOCKLIST");
                            intent.putExtras(bundle);
                            BlockListFragment.this.startActivityForResult(intent, 10);
                        } else if (i2 == 1) {
                            Intent intent2 = new Intent("android.intent.action.CALL_LOG_MULTI_PICKER");
                            intent2.putExtra(CallLogMultiPickerActivity.CallLogPickerModeString, 1);
                            BlockListFragment.this.startActivityForResult(intent2, 11);
                        } else if (i2 == 2) {
                            BlockListFragment.this.a(3);
                        } else if (i2 == 3) {
                            BlockListFragment.this.a(4);
                        }
                    }
                });
                builder2.create().show();
                return;
            case 1:
            case 2:
                return;
            case 3:
                View inflate = LayoutInflater.from(getActivity()).inflate(2131427407, (ViewGroup) null);
                final EditText editText = (EditText) inflate.findViewById(2131297128);
                editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.asus.blocklist.BlockListFragment.7
                    @Override // android.view.View.OnFocusChangeListener
                    public final void onFocusChange(View view, boolean z) {
                        if (z) {
                            BlockListFragment.this.b(editText);
                        }
                    }
                });
                editText.requestFocus();
                AlertDialog.Builder builder3 = new AlertDialog.Builder(getActivity());
                builder3.setTitle(getActivity().getResources().getString(2131756481));
                builder3.setView(inflate);
                builder3.setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.BlockListFragment.8
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        g.e(BlockListFragment.this.getActivity(), editText.getText().toString().trim());
                        editText.setText(BuildConfig.FLAVOR);
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(19, BlockListFragment.this.getActivity(), "Behavior - Block", "Block by BlockList from inputted number", null, null);
                        }
                    }
                });
                builder3.setNegativeButton(getActivity().getResources().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.BlockListFragment.9
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        editText.setText(BuildConfig.FLAVOR);
                    }
                });
                AlertDialog create = builder3.create();
                create.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.asus.blocklist.BlockListFragment.10
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        BlockListFragment.a(editText);
                    }
                });
                create.show();
                return;
            case 4:
                View inflate2 = LayoutInflater.from(getActivity()).inflate(2131427408, (ViewGroup) null);
                final EditText editText2 = (EditText) inflate2.findViewById(2131297128);
                editText2.setText(BuildConfig.FLAVOR);
                editText2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.asus.blocklist.BlockListFragment.11
                    @Override // android.view.View.OnFocusChangeListener
                    public final void onFocusChange(View view, boolean z) {
                        if (z) {
                            BlockListFragment.this.b(editText2);
                        }
                    }
                });
                editText2.requestFocus();
                AlertDialog.Builder builder4 = new AlertDialog.Builder(getActivity());
                builder4.setTitle(getActivity().getResources().getString(2131756482));
                builder4.setView(inflate2);
                builder4.setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.BlockListFragment.12
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        String trim = editText2.getText().toString().trim();
                        if (g.a(trim)) {
                            g.e(BlockListFragment.this.getActivity(), trim);
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(19, BlockListFragment.this.getActivity(), "Behavior - Block", "Block by BlockList from inputted sip number", null, null);
                            }
                        } else {
                            AlertDialog.Builder builder5 = new AlertDialog.Builder(BlockListFragment.this.getActivity());
                            builder5.setTitle(BlockListFragment.this.getResources().getString(2131755190));
                            builder5.setMessage(BlockListFragment.this.getResources().getString(2131755191));
                            builder5.setPositiveButton(BlockListFragment.this.getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.BlockListFragment.12.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface2, int i3) {
                                }
                            });
                            builder5.create().show();
                        }
                        editText2.setText(BuildConfig.FLAVOR);
                    }
                });
                builder4.setNegativeButton(getActivity().getResources().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.BlockListFragment.13
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        editText2.setText(BuildConfig.FLAVOR);
                    }
                });
                AlertDialog create2 = builder4.create();
                create2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.asus.blocklist.BlockListFragment.2
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        BlockListFragment.a(editText2);
                    }
                });
                create2.show();
                return;
            default:
                Log.d(f2386a, "showDialog type not supported.");
                return;
        }
    }

    public final void b(final View view) {
        if (view != null) {
            view.postDelayed(new Runnable() { // from class: com.asus.blocklist.BlockListFragment.3
                @Override // java.lang.Runnable
                public final void run() {
                    ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
                }
            }, 300L);
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.u = com.asus.a.a.h(getActivity());
        boolean z = false;
        if (bundle != null) {
            z = bundle.getBoolean("isDialogShowing");
        }
        if (z) {
            a();
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        long j = 0;
        Log.d(f2386a, "onActivityResult");
        super.onActivityResult(i, i2, intent);
        if (i2 == -1) {
            switch (i) {
                case 10:
                    ArrayList<? extends Parcelable> parcelableArrayListExtra = intent.getParcelableArrayListExtra("UriData");
                    Intent intent2 = new Intent(getActivity(), BlockListService.class);
                    intent2.setAction("android.intent.action.ASUS_ADD_CONTACTS_TO_BLOCK_LIST_SERVICE");
                    intent2.putExtra("BLOCKLIST_MESSENGER_EXTRA", this.w);
                    intent2.putParcelableArrayListExtra("BLOCKLIST_LOOKUPURI_URI_ARRAY_EXTRA", parcelableArrayListExtra);
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        Activity activity = getActivity();
                        if (parcelableArrayListExtra != null) {
                            j = parcelableArrayListExtra.size();
                        }
                        com.android.contacts.a.b.a(19, activity, "Behavior - Block", "Block by BlockList from Contacts", "Block by BlockList from Contacts", Long.valueOf(j));
                    }
                    getActivity().startService(intent2);
                    return;
                case 11:
                    ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("callsNumberList");
                    Intent intent3 = new Intent(getActivity(), BlockListService.class);
                    intent3.setAction("android.intent.action.ASUS_ADD_CALLLOGS_TO_BLOCK_LIST_SERVICE");
                    intent3.putExtra("BLOCKLIST_MESSENGER_EXTRA", this.w);
                    intent3.putStringArrayListExtra("BLOCKLIST_CALLNUMBER_STRING_ARRAY_EXTRA", stringArrayListExtra);
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        Activity activity2 = getActivity();
                        if (stringArrayListExtra != null) {
                            j = stringArrayListExtra.size();
                        }
                        com.android.contacts.a.b.a(19, activity2, "Behavior - UnBlock", "Block by BlockList from Call log", "Block by BlockList from Call log", Long.valueOf(j));
                    }
                    getActivity().startService(intent3);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        this.h = this;
        super.onAttach(activity);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent("com.asus.blocklist.reEnable");
        intent.setFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
        getActivity().sendOrderedBroadcastAsUser(intent, UserHandle.CURRENT, null, new a(this, (byte) 0), null, -1, null, null);
        if (this.f != null) {
            this.f.setVisibility(8);
        }
    }

    @Override // android.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z;
        AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo();
        final int i = adapterContextMenuInfo.position;
        switch (menuItem.getItemId()) {
            case 1:
                new AlertDialog.Builder(this.h.getActivity()).setTitle(this.h.getActivity().getResources().getString(2131755798)).setMessage(this.h.getActivity().getResources().getString(2131755015)).setPositiveButton(this.h.getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.BlockListFragment.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        Cursor cursor = BlockListFragment.this.f2387b.getCursor();
                        if (cursor != null && cursor.moveToPosition(i)) {
                            if (CompatUtils.isNCompatible()) {
                                g.f(BlockListFragment.this.getActivity(), cursor.getString(cursor.getColumnIndex("number")));
                            } else {
                                g.a(BlockListFragment.this.getActivity(), Uri.withAppendedPath(c.b.f2507a, String.valueOf(cursor.getInt(cursor.getColumnIndex("_id")))));
                            }
                            if (PhoneCapabilityTester.IsSystemApp()) {
                                com.android.contacts.a.b.a();
                                com.android.contacts.a.b.a(19, BlockListFragment.this.h.getActivity(), "Behavior - UnBlock", "Unblock by blocklist", null, null);
                            }
                        }
                    }
                }).setNegativeButton(this.h.getActivity().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.BlockListFragment.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                    }
                }).show();
                z = true;
                break;
            case 2:
                this.f2387b.getCursor().moveToPosition(adapterContextMenuInfo.position);
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(this.k.get(Integer.valueOf(adapterContextMenuInfo.position)));
                ImplicitIntentsUtil.startActivityInApp(getActivity(), intent);
                z = true;
                break;
            case 3:
            default:
                z = super.onContextItemSelected(menuItem);
                break;
            case 4:
                a(m);
                z = true;
                break;
            case 5:
                a(o);
                z = true;
                break;
            case 6:
                a(p);
                z = true;
                break;
        }
        return z;
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        int i = ((AdapterView.AdapterContextMenuInfo) contextMenuInfo).position;
        switch (view.getId()) {
            case 2131296382:
                Cursor cursor = this.f2387b.getCursor();
                cursor.moveToPosition(i);
                String str = this.j.get(Integer.valueOf(i));
                if (com.asus.a.a.g(getActivity()) == 0) {
                    if (str != null) {
                        contextMenu.add(0, 2, 0, getResources().getString(2131756454));
                        contextMenu.add(0, 1, 1, getResources().getString(2131755798));
                        contextMenu.setHeaderTitle(str);
                        return;
                    }
                    String string = cursor.getString(cursor.getColumnIndex("number"));
                    contextMenu.add(0, 1, 0, getResources().getString(2131755798));
                    contextMenu.setHeaderTitle(string);
                    return;
                } else if (str != null) {
                    if (this.l.get(Integer.valueOf(i)).equals(Integer.valueOf(q))) {
                        if (!CompatUtils.isNCompatible()) {
                            contextMenu.add(0, 6, 2, getResources().getString(2131755810));
                            contextMenu.add(0, 4, 0, getResources().getString(2131755809));
                            contextMenu.add(0, 5, 1, getResources().getString(2131755808));
                        } else if (TelecomUtil.isDefaultDialer(getActivity())) {
                            contextMenu.add(0, 4, 0, getResources().getString(2131755809));
                            contextMenu.add(0, 5, 1, getResources().getString(2131755808));
                        }
                    }
                    contextMenu.add(0, 2, 3, getResources().getString(2131756454));
                    contextMenu.add(0, 1, 4, getResources().getString(2131755798));
                    contextMenu.setHeaderTitle(str);
                    return;
                } else {
                    contextMenu.setHeaderTitle(cursor.getString(cursor.getColumnIndex("number")));
                    if (this.l.get(Integer.valueOf(i)).equals(Integer.valueOf(q))) {
                        if (!CompatUtils.isNCompatible()) {
                            contextMenu.add(0, 6, 2, getResources().getString(2131755810));
                            contextMenu.add(0, 4, 0, getResources().getString(2131755809));
                            contextMenu.add(0, 5, 1, getResources().getString(2131755808));
                        } else if (TelecomUtil.isDefaultDialer(getActivity())) {
                            contextMenu.add(0, 4, 0, getResources().getString(2131755809));
                            contextMenu.add(0, 5, 1, getResources().getString(2131755808));
                        }
                    }
                    contextMenu.add(0, 1, 3, getResources().getString(2131755798));
                    return;
                }
            default:
                return;
        }
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        CursorLoader cursorLoader;
        switch (i) {
            case 0:
                cursorLoader = new CursorLoader(getActivity(), c.b.f2507a, null, ((!CompatUtils.isNCompatible() || TelecomUtil.isDefaultDialer(getActivity())) ? BuildConfig.FLAVOR : "block_type = 0 AND ") + "_id not null ) Group by (number", null, null);
                break;
            default:
                cursorLoader = null;
                break;
        }
        return cursorLoader;
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(2131492870, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.i = layoutInflater.inflate(2131427411, (ViewGroup) null);
        this.c = (ListView) this.i.findViewById(2131296382);
        this.c.setItemsCanFocus(false);
        this.c.setOnItemClickListener(this);
        this.e = (ViewStub) this.i.findViewById(2131296414);
        setHasOptionsMenu(true);
        registerForContextMenu(this.c);
        getLoaderManager().initLoader(0, null, this);
        return this.i;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.d != null) {
            d dVar = this.d;
            if (dVar.f2418a != null) {
                Log.d(f2386a, "Terminate ContactMappingTask");
                dVar.f2418a.removeMessages(0);
                dVar.f2418a.getLooper().quitSafely();
            }
            this.d = null;
        }
        if (this.h != null) {
            this.h = null;
        }
        if (this.f2387b != null) {
            com.android.contacts.asuscallerid.d.a().b(this.f2387b);
            this.f2387b = null;
        }
        if (this.c != null) {
            this.c.setOnItemClickListener(null);
            this.c = null;
        }
        b();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        Cursor cursor2 = cursor;
        Log.d(f2386a, "onLoadFinished");
        LinearLayout linearLayout = (LinearLayout) this.i.findViewById(2131296789);
        ListView listView = (ListView) this.i.findViewById(2131296382);
        this.j.clear();
        this.k.clear();
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
        if (this.f2387b == null) {
            this.f2387b = new b(getActivity(), cursor2);
            this.c.setAdapter((ListAdapter) this.f2387b);
            if (com.asus.a.a.d(getActivity())) {
                com.android.contacts.asuscallerid.d.a().a(this.f2387b);
                return;
            }
            return;
        }
        this.f2387b.changeCursor(cursor2);
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = false;
        switch (menuItem.getItemId()) {
            case 2131296315:
                a(0);
                z = true;
                break;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        if (g) {
            Log.d(f2386a, "onPause");
        }
    }

    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem = menu.findItem(2131296315);
        if (!PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && findItem != null) {
            getActivity();
            com.asus.contacts.b.b.a();
            findItem.setVisible(false);
        }
        if (g.g(getActivity()) < 2) {
            findItem.setVisible(false);
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (g) {
            Log.d(f2386a, "onResume");
        }
        if (this.f2387b != null) {
            this.f2387b.notifyDataSetChanged();
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (x != null && x.isShowing()) {
            bundle.putBoolean("isDialogShowing", true);
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        if (CompatUtils.isNCompatible() && PhoneCapabilityTester.IsSystemApp()) {
            Intent intent = new Intent("com.asus.blocklist.getSuppressionState");
            intent.setFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
            getActivity().sendOrderedBroadcastAsUser(intent, UserHandle.CURRENT, null, new a(this, (byte) 0), null, -1, null, null);
        }
    }
}
