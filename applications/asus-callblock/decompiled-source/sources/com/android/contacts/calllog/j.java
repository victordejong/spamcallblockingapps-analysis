package com.android.contacts.calllog;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DialogFragment;
import android.app.KeyguardManager;
import android.app.ListFragment;
import android.app.ProgressDialog;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.ListView;
import android.widget.TextView;
import com.android.contacts.activities.CallLogMultiPickerActivity;
import com.android.contacts.asuscallerid.d;
import com.android.contacts.calllog.i;
import com.android.contacts.calllog.m;
import com.android.contacts.dialpad.CallDetailFragment;
import com.android.contacts.k.a;
import com.android.contacts.q;
import com.android.contacts.util.EmptyLoader;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/j.class */
public final class j extends ListFragment implements i.a, i.f, m.b {
    private boolean B;
    private CallDetailFragment E;
    private int G;
    private MenuItem H;
    private String I;
    public i e;
    private MenuItem j;
    private m k;
    private boolean l;
    private com.android.contacts.k.a o;
    private View p;
    private TextView q;
    private TextView r;
    private KeyguardManager s;
    private boolean t;
    private boolean u;
    private boolean v;
    private static boolean i = false;
    private static int F = 0;

    /* renamed from: a  reason: collision with root package name */
    ArrayList<String> f716a = null;

    /* renamed from: b  reason: collision with root package name */
    public Bundle f717b = null;
    public boolean c = false;
    private SimpleDateFormat g = new SimpleDateFormat("M/dd,E");
    private int h = 0;
    public ProgressDialog d = null;
    private boolean m = false;
    private boolean n = false;
    private final Handler w = new Handler();
    private final ContentObserver x = new a();
    private final ContentObserver y = new a();
    private boolean z = true;
    private boolean A = true;
    private boolean C = false;
    private Uri[] D = null;
    public boolean f = true;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/j$a.class */
    private final class a extends ContentObserver {
        public a() {
            super(j.this.w);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            j.this.z = true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/j$b.class */
    private final class b extends AsyncTask<String[], Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private ContentResolver f728b;
        private Activity c;

        b(Activity activity) {
            this.f728b = null;
            this.c = null;
            this.c = activity;
            this.f728b = activity.getContentResolver();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Void doInBackground(String[]... strArr) {
            String[] strArr2 = strArr[0];
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            for (String str : strArr2) {
                ContentProviderOperation.Builder newDelete = ContentProviderOperation.newDelete(CallLog.Calls.CONTENT_URI);
                newDelete.withSelection("_id=" + str, null);
                arrayList.add(newDelete.build());
            }
            try {
                this.f728b.applyBatch("call_log", arrayList);
                return null;
            } catch (OperationApplicationException e) {
                Log.e("CallLogFragment", String.format("%s: %s", e.toString(), e.getMessage()));
                return null;
            } catch (RemoteException e2) {
                Log.e("CallLogFragment", String.format("%s: %s", e2.toString(), e2.getMessage()));
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            Void r0 = r4;
            boolean unused = j.i = false;
            if (j.this.d != null) {
                j.this.d.cancel();
                j.this.d.dismiss();
                j.this.d = null;
            }
            if (this.c != null) {
                this.c.finish();
            }
            this.f728b = null;
            this.c = null;
            super.onPostExecute(r0);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            boolean unused = j.i = true;
        }
    }

    private void c(boolean z) {
        if (this.s != null && !this.s.inKeyguardRestrictedInputMode()) {
            this.k.b();
            if (!z) {
                this.k.c();
            }
            if (PhoneCapabilityTester.isPhone(getActivity())) {
                TelecomUtil.cancelMissedCallsNotification(getActivity());
                Intent intent = new Intent(getActivity(), CallLogNotificationsService.class);
                intent.setAction("com.android.contacts.calllog.UPDATE_NOTIFICATIONS");
                getActivity().startService(intent);
            }
        }
    }

    public static boolean c() {
        return i;
    }

    private void e() {
        if (this.u && this.v && this.t) {
            this.t = false;
            getLoaderManager().destroyLoader(0);
        }
    }

    private void f() {
        if (this.z) {
            i iVar = this.e;
            iVar.j.expireAll();
            iVar.b();
            iVar.c();
            this.e.k = true;
            this.k.a(this.h);
            if (this.n) {
                this.n = false;
                getActivity().invalidateOptionsMenu();
            }
            this.k.a();
            c(true);
            this.z = false;
        }
    }

    @Override // com.android.contacts.calllog.i.a
    public final void a() {
        this.k.a(this.h);
    }

    @Override // com.android.contacts.calllog.m.b
    public final void a(Cursor cursor) {
        if (!(getActivity() == null || getActivity().isFinishing())) {
            this.e.k = false;
            if (!this.e.i && this.e.getCount() > 0 && cursor.getCount() != this.e.getCount()) {
                ArrayList<Integer> arrayList = new ArrayList<>();
                for (Map.Entry<Integer, Integer> entry : this.e.d.entrySet()) {
                    if (entry.getValue().intValue() == 1) {
                        int intValue = entry.getKey().intValue();
                        Cursor cursor2 = (Cursor) this.e.getItem(intValue);
                        if (cursor2 != null && cursor2.getCount() > 0) {
                            int b2 = this.e.a(intValue) ? this.e.b(intValue) : 1;
                            if (b2 > 1) {
                                for (int i2 = 0; i2 < b2; i2++) {
                                    arrayList.add(Integer.valueOf(cursor2.getInt(0)));
                                    cursor2.moveToNext();
                                }
                            } else {
                                arrayList.add(Integer.valueOf(cursor2.getInt(0)));
                            }
                        }
                    }
                }
                i iVar = this.e;
                iVar.h = arrayList;
                iVar.i = true;
                iVar.d.clear();
            }
            this.e.b(cursor);
            if (this.B) {
                this.e.c(F);
            }
            getActivity().invalidateOptionsMenu();
            if (this.l) {
                final ListView listView = getListView();
                if (listView.getFirstVisiblePosition() > 5) {
                    listView.setSelection(5);
                }
                this.w.post(new Runnable() { // from class: com.android.contacts.calllog.j.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (j.this.getActivity() != null && !j.this.getActivity().isFinishing()) {
                            listView.smoothScrollToPosition(0);
                        }
                    }
                });
                this.l = false;
            }
            this.u = true;
            e();
        }
    }

    public final void a(boolean z) {
        CheckedTextView checkedTextView = (CheckedTextView) getActivity().findViewById(2131296966);
        if (checkedTextView != null) {
            checkedTextView.setChecked(z);
            this.c = z;
        }
    }

    @Override // com.android.contacts.calllog.i.f
    public final void b() {
        CheckedTextView checkedTextView = (CheckedTextView) getActivity().findViewById(2131296966);
        int count = this.e.getCount();
        int i2 = 0;
        for (int i3 = 0; i3 < count; i3++) {
            if (this.e.d.get(Integer.valueOf(i3)) != null && this.e.d.get(Integer.valueOf(i3)).intValue() == 1) {
                i2++;
            }
        }
        if (i2 == 0) {
            checkedTextView.setChecked(false);
            this.c = false;
            if (this.j != null) {
                this.j.setEnabled(false);
                com.android.contacts.skin.a.a(getActivity(), this.j);
            }
            if (this.H != null) {
                this.H.setEnabled(false);
                com.android.contacts.skin.a.a(getActivity(), this.H);
            }
        } else if (i2 == count) {
            checkedTextView.setChecked(true);
            this.c = true;
            if (this.j != null) {
                this.j.setEnabled(true);
                com.android.contacts.skin.a.a(getActivity(), this.j);
            }
            if (this.H != null) {
                this.H.setEnabled(true);
                com.android.contacts.skin.a.a(getActivity(), this.H);
            }
        } else {
            checkedTextView.setChecked(false);
            this.c = false;
            if (this.j != null) {
                this.j.setEnabled(true);
                com.android.contacts.skin.a.a(getActivity(), this.j);
            }
            if (this.H != null) {
                this.H.setEnabled(true);
                com.android.contacts.skin.a.a(getActivity(), this.H);
            }
        }
    }

    @Override // com.android.contacts.calllog.m.b
    public final void b(Cursor cursor) {
        if (getActivity() != null && !getActivity().isFinishing()) {
            List<a.C0045a> a2 = this.o.a(cursor);
            if (a2.size() == 0) {
                this.p.setVisibility(8);
            } else {
                this.p.setVisibility(0);
                final a.C0045a aVar = a2.get(0);
                if (aVar.a()) {
                    this.q.setText(aVar.f1581b);
                }
                if (aVar.d != -1) {
                    this.r.setText(aVar.d);
                }
                if (aVar.e != null) {
                    this.r.setVisibility(0);
                    this.r.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.calllog.j.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            ImplicitIntentsUtil.startActivityOutsideApp(j.this.getActivity(), new Intent("android.intent.action.VIEW", aVar.e));
                        }
                    });
                } else {
                    this.r.setVisibility(8);
                }
            }
            boolean z = this.o.b(cursor) != 0;
            if (this.m != z) {
                this.m = z;
                Activity activity = getActivity();
                if (activity != null) {
                    activity.invalidateOptionsMenu();
                }
            }
            com.android.a.a.a.a(cursor);
            this.v = true;
            e();
        } else if (cursor != null) {
            cursor.close();
        }
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        CheckedTextView checkedTextView = (CheckedTextView) getActivity().findViewById(2131296966);
        checkedTextView.setVisibility(this.f ? 0 : 8);
        if (checkedTextView != null) {
            checkedTextView.setText(getResources().getString(2131755839));
            checkedTextView.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.calllog.j.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (((CheckedTextView) view).isChecked()) {
                        i iVar = j.this.e;
                        int count = iVar.getCount();
                        for (int i2 = 0; i2 < count; i2++) {
                            iVar.d.put(Integer.valueOf(i2), 0);
                        }
                        j.this.a(false);
                        j.this.e.notifyDataSetChanged();
                        return;
                    }
                    i iVar2 = j.this.e;
                    int count2 = iVar2.getCount();
                    for (int i3 = 0; i3 < count2; i3++) {
                        iVar2.d.put(Integer.valueOf(i3), 1);
                    }
                    j.this.a(true);
                    j.this.e.notifyDataSetChanged();
                }
            });
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.G = ((CallLogMultiPickerActivity) getActivity()).getCallLogPickerMode();
        if (this.G == 1) {
            this.k = new m(getActivity(), getActivity().getContentResolver(), this);
            this.k.a("CALLS_FILTER_OUT_BLOCKED_NUMBERS");
            this.k.a("CALLS_FILTER_OUT_PRIVATE_CALLS");
        } else {
            this.k = new m(getActivity(), getActivity().getContentResolver(), this);
        }
        this.s = (KeyguardManager) getActivity().getSystemService("keyguard");
        getActivity().getContentResolver().registerContentObserver(CallLog.CONTENT_URI, true, this.x);
        getActivity().getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, this.y);
        setHasOptionsMenu(true);
    }

    @Override // android.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menuInflater.inflate(2131492877, menu);
    }

    @Override // android.app.ListFragment, android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        boolean z = false;
        Log.d("CallLogFragment", "onCreateView");
        View inflate = layoutInflater.inflate(2131427427, viewGroup, false);
        if (inflate.findViewById(2131296442) != null) {
            z = true;
        }
        this.B = z;
        this.o = new com.android.contacts.k.b();
        this.p = inflate.findViewById(2131297542);
        this.q = (TextView) inflate.findViewById(2131297544);
        this.r = (TextView) inflate.findViewById(2131297543);
        this.E = (CallDetailFragment) getFragmentManager().findFragmentById(2131296441);
        if (this.E != null) {
            this.E.f = new CallDetailFragment.e() { // from class: com.android.contacts.calllog.j.2
                @Override // com.android.contacts.dialpad.CallDetailFragment.e
                public final void a_() {
                    int unused = j.F = 0;
                }

                @Override // com.android.contacts.dialpad.CallDetailFragment.e
                public final void b_() {
                    j.F--;
                    if (j.F < 0) {
                        int unused = j.F = 0;
                    }
                }
            };
        }
        this.G = ((CallLogMultiPickerActivity) getActivity()).getCallLogPickerMode();
        switch (this.G) {
            case 0:
                this.I = getActivity().getResources().getString(2131755080);
                break;
            case 1:
                this.I = getActivity().getResources().getString(2131755050);
                break;
        }
        return inflate;
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        Log.d("CallLogFragment", "onDestroy()");
        super.onDestroy();
        this.e.b();
        this.e.b((Cursor) null);
        d.a().b(this.e);
        getActivity().getContentResolver().unregisterContentObserver(this.x);
        getActivity().getContentResolver().unregisterContentObserver(this.y);
    }

    @Override // android.app.ListFragment, android.app.Fragment
    public final void onDestroyView() {
        Log.d("CallLogFragment", "onDestroyView()");
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        Cursor cursor;
        boolean z = false;
        switch (menuItem.getItemId()) {
            case 2131296469:
                int count = this.e.getCount();
                ArrayList<String> arrayList = new ArrayList<>();
                for (int i2 = 0; i2 < count; i2++) {
                    if (this.e.d.get(Integer.valueOf(i2)) != null && this.e.d.get(Integer.valueOf(i2)).intValue() == 1 && (cursor = (Cursor) this.e.getItem(i2)) != null && cursor.getCount() > 0) {
                        if (this.e.a(i2)) {
                            this.e.b(i2);
                        }
                        arrayList.add(cursor.getString(1));
                    }
                }
                Intent intent = new Intent();
                intent.putStringArrayListExtra("callsNumberList", arrayList);
                getActivity().setResult(-1, intent);
                getActivity().finish();
                z = true;
                break;
            case 2131296470:
                getActivity().finish();
                z = true;
                break;
            case 2131296471:
                new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755080)).setMessage(getActivity().getResources().getString(2131756058)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.j.6
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        Cursor cursor2;
                        int count2 = j.this.e.getCount();
                        ArrayList arrayList2 = new ArrayList();
                        for (int i4 = 0; i4 < count2; i4++) {
                            if (j.this.e.d.get(Integer.valueOf(i4)) != null && j.this.e.d.get(Integer.valueOf(i4)).intValue() == 1 && (cursor2 = (Cursor) j.this.e.getItem(i4)) != null && cursor2.getCount() > 0) {
                                int b2 = j.this.e.a(i4) ? j.this.e.b(i4) : 1;
                                if (b2 > 1) {
                                    long[] jArr = new long[b2];
                                    for (int i5 = 0; i5 < b2; i5++) {
                                        jArr[i5] = cursor2.getLong(0);
                                        cursor2.moveToNext();
                                        arrayList2.add(String.valueOf(jArr[i5]));
                                    }
                                } else {
                                    arrayList2.add(String.valueOf(cursor2.getLong(0)));
                                }
                            }
                        }
                        if (arrayList2.size() > 0) {
                            DialogFragment a2 = com.android.contacts.interactions.a.a();
                            a2.show(j.this.getFragmentManager(), (String) null);
                            a2.setCancelable(false);
                            Object[] array = arrayList2.toArray();
                            new b(j.this.getActivity()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (String[]) Arrays.copyOf(array, array.length, String[].class));
                            return;
                        }
                        j.this.getActivity().finish();
                    }
                }).setNegativeButton(getActivity().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.android.contacts.calllog.j.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        Log.d("AlertDialog", "Negative");
                    }
                }).show();
                z = true;
                break;
        }
        return z;
    }

    @Override // android.app.Fragment
    public final void onPause() {
        Log.d("CallLogFragment", "onPause()");
        super.onPause();
        this.e.b();
    }

    @Override // android.app.Fragment
    public final void onPrepareOptionsMenu(Menu menu) {
        MenuItem findItem = menu.findItem(2131296471);
        if (findItem != null) {
            findItem.setVisible(this.e != null && !this.e.isEmpty());
            com.android.contacts.skin.a.a(getActivity(), findItem);
            this.j = findItem;
        }
        MenuItem findItem2 = menu.findItem(2131296469);
        if (findItem2 != null) {
            findItem2.setVisible(this.e != null && !this.e.isEmpty());
            com.android.contacts.skin.a.a(getActivity(), findItem2);
            this.H = findItem2;
        }
        MenuItem findItem3 = menu.findItem(2131296470);
        if (findItem3 != null) {
            com.android.contacts.skin.a.a(getActivity(), findItem3);
        }
        switch (this.G) {
            case 0:
                this.H.setVisible(false);
                this.j.setVisible(true);
                if (this.e.isEmpty()) {
                    this.j.setEnabled(false);
                    if (this.j != null) {
                        com.android.contacts.skin.a.a(getActivity(), this.j);
                        return;
                    }
                    return;
                }
                return;
            case 1:
                this.H.setVisible(true);
                this.j.setVisible(false);
                if (this.e.isEmpty()) {
                    this.H.setEnabled(false);
                    if (this.H != null) {
                        com.android.contacts.skin.a.a(getActivity(), this.H);
                        return;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        int i2 = getResources().getConfiguration().orientation;
        SharedPreferences sharedPreferences = getActivity().getSharedPreferences("Preferences", 0);
        if (i2 == sharedPreferences.getInt("orientation", 2)) {
            F = 0;
        }
        sharedPreferences.edit().putInt("orientation", i2).commit();
        f();
        if (!this.B) {
            getListView().setItemChecked(F, false);
            F = 0;
        }
        if (this.f717b != null) {
            this.c = this.f717b.getBoolean("isSelectAllChecked");
            a(this.c);
            this.f716a = this.f717b.getStringArrayList("userselected");
            i iVar = this.e;
            if (!(iVar == null || this.f716a == null)) {
                for (int i3 = 0; i3 < this.f716a.size(); i3++) {
                    iVar.d.put(Integer.valueOf(Integer.parseInt(this.f716a.get(i3))), 1);
                    Log.d("calllog_aaron", "adapterCurrent.map " + iVar.d);
                }
                iVar.notifyDataSetChanged();
            }
        }
        ActionBar actionBar = getActivity().getActionBar();
        actionBar.setDisplayShowHomeEnabled(false);
        actionBar.setDisplayShowTitleEnabled(true);
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.setTitle(this.I);
        actionBar.setIcon(2131165872);
        if (this.e != null) {
            this.e.e = this.g.format(new Date());
            this.e.f = this.g.format(new Date(System.currentTimeMillis() - 86400000));
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        getLoaderManager().initLoader(0, null, new EmptyLoader.Callback(getActivity()));
        this.t = true;
        super.onStart();
    }

    @Override // android.app.Fragment
    public final void onStop() {
        Log.d("CallLogFragment", "onStop()");
        super.onStop();
        c(false);
    }

    @Override // android.app.ListFragment, android.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.e = new i(getActivity(), this, new p(getActivity(), q.a(getActivity())));
        this.e.g = this;
        getListView().setItemsCanFocus(true);
        getListView().setChoiceMode(1);
        getListView().setDividerHeight(0);
        setListAdapter(this.e);
    }

    @Override // android.app.Fragment
    public final void setMenuVisibility(boolean z) {
        super.setMenuVisibility(z);
        if (this.B && !z) {
            this.E.a(z);
        } else if (this.B && z && this.E != null) {
            if (this.E.c != null) {
                this.E.a(z);
            }
        }
        if (this.A != z) {
            this.A = z;
            if (!z) {
                c(false);
            } else if (isResumed()) {
                f();
            }
        }
    }
}
