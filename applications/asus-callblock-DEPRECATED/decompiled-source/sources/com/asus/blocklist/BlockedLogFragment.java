package com.asus.blocklist;

import android.app.ActionBar;
import android.app.Fragment;
import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.contacts.activities.BlockAndTagNumberActivity;
import com.android.contacts.activities.RequestSMSPermissionsActivity;
import com.android.contacts.activities.TransactionSafeActivity;
import com.android.contacts.ag;
import com.android.contacts.asuscallerid.AsusCallerIDSettings;
import com.android.contacts.calllog.t;
import com.android.contacts.dialpad.ResultListFragment;
import com.android.contacts.dialpad.d;
import com.android.contacts.interactions.PhoneNumberInteraction;
import com.android.contacts.q;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PermissionsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.asus.blocklist.c;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockedLogFragment.class */
public class BlockedLogFragment extends Fragment implements View.OnClickListener, AdapterView.OnItemClickListener, PopupMenu.OnMenuItemClickListener, ag {
    private static final String j = BlockedLogFragment.class.getSimpleName();
    private static int k = 1;
    private int B;

    /* renamed from: a  reason: collision with root package name */
    i f2443a;
    private a l;
    private b m;
    private e n;
    private ListView q;
    private TextView r;
    private PopupWindow s;
    private PopupMenu t;
    private d.b v;
    private t w;
    private ContentResolver o = null;
    private Map<Integer, List<h>> p = new HashMap();
    private int u = 0;
    private boolean x = false;
    private int y = 0;
    private boolean z = false;
    private boolean A = false;
    private int C = -1;

    /* renamed from: b  reason: collision with root package name */
    public final String f2444b = "com.asus.spam_message_update";
    public final String c = "com.asus.block_message_update";
    public final String d = "com.asus.block_message_delete";
    public final String e = "smsId";
    public final String f = "threadId";
    public final String g = "update";
    public final int h = 1;
    public final int i = 2;
    private String D = null;

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockedLogFragment$a.class */
    public final class a extends AsyncQueryHandler {
        private List<h> f;

        /* renamed from: a  reason: collision with root package name */
        public final int f2446a = 1;

        /* renamed from: b  reason: collision with root package name */
        public final int f2447b = 2;
        public final int c = 3;
        public final int d = 4;
        private int g = 0;

        public a(ContentResolver contentResolver) {
            super(contentResolver);
        }

        private List<h> a(Cursor cursor) {
            ArrayList arrayList = new ArrayList();
            if (cursor != null) {
                Log.d(BlockedLogFragment.j, "Spam message result size = " + cursor.getCount());
                if (cursor.moveToFirst()) {
                    do {
                        long j = cursor.getLong(cursor.getColumnIndex("_id"));
                        long j2 = cursor.getLong(cursor.getColumnIndex("date"));
                        String string = cursor.getString(cursor.getColumnIndex("address"));
                        int i = cursor.getInt(cursor.getColumnIndex("type"));
                        int a2 = com.android.contacts.simcardmanage.b.a(cursor.getString(cursor.getColumnIndex("imsi")));
                        String str = "-1";
                        if (BlockedLogFragment.this.getActivity() != null) {
                            str = PhoneCapabilityTester.getCallLogSimIndexAsString(BlockedLogFragment.this.getActivity(), a2);
                        }
                        arrayList.add(new h(j, 3, j2, string, i, str, BuildConfig.FLAVOR, BuildConfig.FLAVOR, cursor.getString(cursor.getColumnIndex("body")), cursor.getLong(cursor.getColumnIndex("thread_id"))));
                    } while (cursor.moveToNext());
                }
            }
            return arrayList;
        }

        private void b(Cursor cursor) {
            this.f = new ArrayList();
            if (cursor != null && cursor.moveToFirst()) {
                Log.d(BlockedLogFragment.j, "message result size = " + cursor.getCount());
                do {
                    try {
                        long j = cursor.getLong(cursor.getColumnIndex("_id"));
                        long j2 = cursor.getLong(cursor.getColumnIndex("date"));
                        String string = cursor.getString(cursor.getColumnIndex("address"));
                        String str = string;
                        if (!TextUtils.isEmpty(string)) {
                            str = string;
                            if (BlockedLogFragment.this.D != null) {
                                str = string;
                                if (com.asus.a.a.b(string)) {
                                    str = PhoneNumberUtils.formatNumber(string, BlockedLogFragment.this.D);
                                }
                            }
                        }
                        int i = cursor.getInt(cursor.getColumnIndex("type"));
                        int a2 = com.android.contacts.simcardmanage.b.a(cursor.getString(cursor.getColumnIndex("imsi")));
                        String str2 = "-1";
                        if (BlockedLogFragment.this.getActivity() != null) {
                            str2 = PhoneCapabilityTester.getCallLogSimIndexAsString(BlockedLogFragment.this.getActivity(), a2);
                        }
                        this.f.add(new h(j, 2, j2, str, i, str2, BuildConfig.FLAVOR, BuildConfig.FLAVOR, cursor.getString(cursor.getColumnIndex("body")), cursor.getLong(cursor.getColumnIndex("thread_id"))));
                    } catch (Exception e) {
                        Log.d(BlockedLogFragment.j, "fail to parse cursor at position:" + cursor.getPosition() + " due to " + e.toString());
                    }
                } while (cursor.moveToNext());
            }
        }

        private List<h> c(Cursor cursor) {
            ArrayList arrayList = new ArrayList();
            if (cursor == null || !cursor.moveToFirst()) {
                return arrayList;
            }
            Log.d(BlockedLogFragment.j, "calls result  size = " + cursor.getCount());
            do {
                BlockedLogFragment.this.getActivity();
                arrayList.add(h.a(cursor));
            } while (cursor.moveToNext());
            return arrayList;
        }

        public final void a(int i) {
            BlockedLogFragment.this.A = true;
            Log.d(BlockedLogFragment.j, "startSearch " + i);
            switch (i) {
                case 1:
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        startQuery(i, null, CallLog.Calls.CONTENT_URI, null, "contact_id != 0", null, "date");
                        return;
                    } else {
                        startQuery(i, null, c.a.f2506a, null, null, null, "date");
                        return;
                    }
                case 2:
                    startQuery(i, null, Telephony.Sms.CONTENT_URI, null, "address IS NOT null AND block = 1", null, "date");
                    return;
                case 3:
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        startQuery(i, null, CallLog.Calls.CONTENT_URI, null, "contact_id != 0", null, "date");
                        return;
                    } else {
                        startQuery(i, null, c.a.f2506a, null, null, null, "date");
                        return;
                    }
                default:
                    return;
            }
        }

        @Override // android.content.AsyncQueryHandler
        protected final void onQueryComplete(int i, Object obj, Cursor cursor) {
            Log.d(BlockedLogFragment.j, "onQueryComplete " + i);
            switch (i) {
                case 1:
                    try {
                        BlockedLogFragment.this.p.put(1, c(cursor));
                        this.g = ((List) BlockedLogFragment.this.p.get(1)).size();
                        try {
                            if (BlockedLogFragment.this.getActivity() != null) {
                                new c(BlockedLogFragment.this.getActivity()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                            }
                        } catch (Exception e) {
                            Log.i(BlockedLogFragment.j, e.getMessage().toString());
                        }
                        BlockedLogFragment.this.a();
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    } finally {
                    }
                case 2:
                    try {
                        b(cursor);
                        try {
                            new d(this.f).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                        } catch (Exception e2) {
                            Log.i(BlockedLogFragment.j, e2.getMessage().toString());
                        }
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    } finally {
                    }
                case 3:
                    try {
                        BlockedLogFragment.this.p.put(1, c(cursor));
                        int size = ((List) BlockedLogFragment.this.p.get(1)).size();
                        if (this.g != size) {
                            this.g = size;
                            try {
                                if (BlockedLogFragment.this.getActivity() != null) {
                                    new c(BlockedLogFragment.this.getActivity()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                                }
                            } catch (Exception e3) {
                                Log.i(BlockedLogFragment.j, e3.getMessage().toString());
                            }
                        }
                        BlockedLogFragment.this.a();
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    } finally {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                case 4:
                    try {
                        BlockedLogFragment.this.p.put(3, a(cursor));
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    } finally {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                default:
                    if (cursor != null) {
                        cursor.close();
                        return;
                    }
                    return;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockedLogFragment$b.class */
    private final class b extends ContentObserver {
        public b(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            if (BlockedLogFragment.this.l != null) {
                a aVar = BlockedLogFragment.this.l;
                BlockedLogFragment.this.l.getClass();
                aVar.a(1);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockedLogFragment$c.class */
    final class c extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        boolean f2449a = false;

        /* renamed from: b  reason: collision with root package name */
        Context f2450b;

        public c(Context context) {
            this.f2450b = null;
            this.f2450b = context;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:538:0x0705 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:554:0x001f A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r0v201, types: [long] */
        /* JADX WARN: Type inference failed for: r0v496, types: [long] */
        /* JADX WARN: Type inference failed for: r0v70, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r20v1, types: [long] */
        /* JADX WARN: Type inference failed for: r20v12 */
        /* JADX WARN: Type inference failed for: r20v2 */
        /* JADX WARN: Type inference failed for: r20v3 */
        /* JADX WARN: Type inference failed for: r20v4 */
        /* JADX WARN: Type inference failed for: r20v5 */
        /* JADX WARN: Type inference failed for: r20v8 */
        /* JADX WARN: Type inference failed for: r20v9 */
        /* JADX WARN: Unknown variable types count: 4 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.Void a() {
            /*
                Method dump skipped, instructions count: 2603
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.BlockedLogFragment.c.a():java.lang.Void");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            if (this.f2449a) {
                a aVar = BlockedLogFragment.this.l;
                BlockedLogFragment.this.l.getClass();
                aVar.a(3);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockedLogFragment$d.class */
    final class d extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        List<h> f2451a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        final List<h> f2452b;

        public d(List<h> list) {
            this.f2452b = list;
        }

        private List<h> a(String str) {
            ArrayList arrayList;
            Cursor cursor = null;
            Cursor cursor2 = null;
            if (BlockedLogFragment.this.getActivity() == null) {
                arrayList = null;
            } else {
                ArrayList arrayList2 = new ArrayList();
                try {
                    try {
                        Cursor query = BlockedLogFragment.this.getActivity().getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(g.a(BlockedLogFragment.this.getActivity(), str))), PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "number", "lookup", "display_name", SpeedDialList.Columns.ISSIM} : new String[]{"_id", "number", "lookup", "display_name"}, null, null, null);
                        if (query != null && query.moveToFirst()) {
                            String string = query.getString(query.getColumnIndex("number"));
                            long j = query.getLong(query.getColumnIndex("_id"));
                            String string2 = query.getString(query.getColumnIndex("lookup"));
                            String string3 = query.getString(query.getColumnIndex("display_name"));
                            int i = PhoneCapabilityTester.IsAsusDevice() ? query.getInt(query.getColumnIndex(SpeedDialList.Columns.ISSIM)) : 0;
                            Iterator<h> it = this.f2452b.iterator();
                            while (true) {
                                cursor2 = query;
                                cursor = query;
                                if (!it.hasNext()) {
                                    break;
                                }
                                h next = it.next();
                                if (PhoneNumberUtils.compare(next.f2527b, string) && !next.p) {
                                    next.f = j;
                                    next.h = ContactsContract.Contacts.getLookupUri(j, string2);
                                    next.c = string3;
                                    next.g = i;
                                    next.p = true;
                                    arrayList2.add(next);
                                    Log.d(BlockedLogFragment.j, "add message contact: " + j + " / " + PhoneCapabilityTester.privacyLogCheck(string3));
                                }
                            }
                        }
                        if (query != null) {
                            query.close();
                        }
                    } catch (Exception e) {
                        cursor = cursor2;
                        Log.e(BlockedLogFragment.j, e.toString());
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                    }
                    arrayList = arrayList2;
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            return arrayList;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            if (this.f2452b == null) {
                return null;
            }
            HashSet<String> hashSet = new HashSet();
            for (h hVar : this.f2452b) {
                hashSet.add(hVar.f2527b);
            }
            for (String str : hashSet) {
                List<h> a2 = a(str);
                if (a2 != null) {
                    this.f2451a.addAll(a2);
                }
            }
            for (h hVar2 : this.f2452b) {
                if (!this.f2451a.contains(hVar2)) {
                    this.f2451a.add(hVar2);
                    Log.d(BlockedLogFragment.j, "add message unknown: " + PhoneCapabilityTester.privacyLogCheck(hVar2.f2527b));
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r6) {
            super.onPostExecute(r6);
            if (this.f2451a != null) {
                Log.d(BlockedLogFragment.j, "blocked message total size: " + this.f2451a.size());
                BlockedLogFragment.this.p.put(2, this.f2451a);
                BlockedLogFragment.this.a();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockedLogFragment$e.class */
    private final class e extends ContentObserver {
        public e(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            if (BlockedLogFragment.this.l != null) {
                a aVar = BlockedLogFragment.this.l;
                BlockedLogFragment.this.l.getClass();
                aVar.a(2);
                a aVar2 = BlockedLogFragment.this.l;
                BlockedLogFragment.this.l.getClass();
                aVar2.a(4);
            }
        }
    }

    private void a(int i) {
        if (this.r != null) {
            switch (i) {
                case 0:
                    this.r.setText(2131756225);
                    return;
                case 1:
                    this.r.setText(2131756226);
                    return;
                case 2:
                    this.r.setText(2131756228);
                    return;
                default:
                    return;
            }
        }
    }

    private void a(View view) {
        if (view != null) {
            if (view.getBackground() != null) {
                view.getBackground().setCallback(null);
            }
            if ((view instanceof ImageButton) && ((ImageButton) view).getDrawable() != null) {
                ((ImageButton) view).getDrawable().setCallback(null);
            }
            if (view instanceof ViewGroup) {
                for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                    a(((ViewGroup) view).getChildAt(i));
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0074 A[LOOP:1: B:10:0x006b->B:12:0x0074, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long[] a(long r6) {
        /*
            r5 = this;
            java.lang.String r0 = com.asus.blocklist.BlockedLogFragment.j
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "getAllBlockedSmsIdBySmsThreadId: "
            r2.<init>(r3)
            r2 = r6
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r5
            android.database.Cursor r0 = r0.d()
            r9 = r0
            r0 = r9
            boolean r0 = r0.moveToFirst()
            if (r0 == 0) goto L_0x0060
        L_0x002f:
            r0 = r9
            r1 = 13
            long r0 = r0.getLong(r1)
            r10 = r0
            r0 = r9
            r1 = 14
            long r0 = r0.getLong(r1)
            r12 = r0
            r0 = r10
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0056
            r0 = r8
            r1 = r12
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            boolean r0 = r0.add(r1)
        L_0x0056:
            r0 = r9
            boolean r0 = r0.moveToNext()
            if (r0 != 0) goto L_0x002f
        L_0x0060:
            r0 = r8
            int r0 = r0.size()
            long[] r0 = new long[r0]
            r9 = r0
            r0 = 0
            r14 = r0
        L_0x006b:
            r0 = r14
            r1 = r8
            int r1 = r1.size()
            if (r0 >= r1) goto L_0x008b
            r0 = r9
            r1 = r14
            r2 = r8
            r3 = r14
            java.lang.Object r2 = r2.get(r3)
            java.lang.Long r2 = (java.lang.Long) r2
            long r2 = r2.longValue()
            r0[r1] = r2
            int r14 = r14 + 1
            goto L_0x006b
        L_0x008b:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.BlockedLogFragment.a(long):long[]");
    }

    private Cursor d() {
        MatrixCursor matrixCursor;
        int i = 0;
        synchronized (this) {
            matrixCursor = new MatrixCursor(i.f2528a);
            ArrayList<h> arrayList = new ArrayList();
            if (this.p.containsKey(1) && this.u == 0) {
                arrayList.addAll(this.p.get(1));
            }
            if (this.p.containsKey(2) && this.u == 1) {
                Log.d(j, "message size = " + this.p.get(2).size());
                arrayList.addAll(this.p.get(2));
            }
            if (this.p.containsKey(3) && this.u == 2) {
                Log.d(j, "spam message size = " + this.p.get(3).size());
                arrayList.addAll(this.p.get(3));
            }
            Collections.sort(arrayList);
            for (h hVar : arrayList) {
                matrixCursor.addRow(new Object[]{Integer.valueOf(i), Integer.valueOf(hVar.j), Long.valueOf(hVar.f2526a), hVar.f2527b, hVar.c, Integer.valueOf(hVar.d), Long.valueOf(hVar.f), hVar.h, hVar.e, Integer.valueOf(hVar.g), hVar.l, hVar.m, hVar.n, Long.valueOf(hVar.o), Long.valueOf(hVar.k)});
                i++;
            }
        }
        return matrixCursor;
    }

    public final void a() {
        if (this.q != null) {
            if (this.f2443a == null) {
                this.f2443a = new i(getActivity(), d());
                if (com.asus.a.a.d(getActivity())) {
                    com.android.contacts.asuscallerid.d.a().a(this.f2443a);
                }
                this.q.setAdapter((ListAdapter) this.f2443a);
                b();
                return;
            }
            Cursor swapCursor = this.f2443a.swapCursor(d());
            this.f2443a.notifyDataSetChanged();
            if (swapCursor != null) {
                swapCursor.close();
            }
        }
    }

    @Override // com.android.contacts.ag
    public final void a(boolean z) {
        if (!com.asus.blocklist.a.b(getActivity())) {
            this.u = 0;
        }
        if (this.l != null) {
            if (z) {
                a(this.u);
                a aVar = this.l;
                this.l.getClass();
                aVar.a(1);
                a aVar2 = this.l;
                this.l.getClass();
                aVar2.a(2);
                a aVar3 = this.l;
                this.l.getClass();
                aVar3.a(4);
                Log.d(j, "onVisibilityChanged Send broadcast: android.intent.action.ASUS_CLEAR_BLOCKED_NOTIFY");
                getActivity().sendBroadcast(new Intent("android.intent.action.ASUS_CLEAR_BLOCKED_NOTIFY"));
                g.e(getActivity());
            } else {
                a aVar4 = this.l;
                BlockedLogFragment.this.A = false;
                aVar4.cancelOperation(1);
                aVar4.cancelOperation(2);
                aVar4.cancelOperation(3);
                aVar4.cancelOperation(4);
            }
        }
        if (this.f2443a != null) {
            this.f2443a.a();
        }
    }

    public final void b() {
        if (com.android.contacts.simcardmanage.b.a(getActivity())) {
            boolean isSimActive = PhoneCapabilityTester.isSimActive(getActivity(), 1);
            boolean isSimActive2 = PhoneCapabilityTester.isSimActive(getActivity(), 2);
            if (this.f2443a != null) {
                i iVar = this.f2443a;
                iVar.f2529b = isSimActive;
                iVar.c = isSimActive2;
            }
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.o = getActivity().getContentResolver();
        this.l = new a(this.o);
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        try {
            super.onActivityResult(i, i2, intent);
            intent.getExtras().getBoolean(BlockAndTagNumberActivity.ASUS_CALLER_TAGGED_RESULT);
            if (i == 10 && i2 == -1 && this.f2443a != null) {
                this.f2443a.a();
                this.f2443a.notifyDataSetChanged();
            }
        } catch (Exception e2) {
            Log.d(j, "Fail to refresh Call Log & Message Log e :" + e2.toString());
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296937:
                getActivity().onBackPressed();
                return;
            case 2131297401:
                if (this.s == null || !this.s.isShowing()) {
                    this.s = new PopupWindow(getActivity());
                    View inflate = ((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(2131427446, (ViewGroup) null, false);
                    String[] strArr = com.asus.blocklist.a.b(getActivity()) ? new String[]{getResources().getString(2131756225), getResources().getString(2131756226)} : new String[]{getResources().getString(2131756225)};
                    ListView listView = (ListView) inflate.findViewById(2131296856);
                    listView.setAdapter((ListAdapter) new ArrayAdapter<String>(getActivity(), strArr) { // from class: com.asus.blocklist.BlockedLogFragment.1
                    });
                    listView.setChoiceMode(1);
                    listView.setItemChecked(this.u, true);
                    listView.setOnItemClickListener(this);
                    this.s.setHeight(-2);
                    this.s.setWidth(-2);
                    inflate.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    Drawable drawable = getResources().getDrawable(2131165482);
                    int dimensionPixelSize = getResources().getDimensionPixelSize(2131099796);
                    this.s.setBackgroundDrawable(drawable);
                    this.s.setContentView(inflate);
                    this.s.setOutsideTouchable(true);
                    this.s.setFocusable(true);
                    this.s.setTouchable(true);
                    this.s.showAsDropDown(view, 0, -dimensionPixelSize);
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // android.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z;
        if (this.v != null) {
            String a2 = ResultListFragment.a(this.v.h);
            AdapterView.AdapterContextMenuInfo adapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo) menuItem.getMenuInfo();
            if (adapterContextMenuInfo != null && this.f2443a != null) {
                int i = adapterContextMenuInfo.position;
                Cursor cursor = this.f2443a.getCursor();
                switch (menuItem.getItemId()) {
                    case 2131296390:
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, getActivity(), "BlockedLog_LongPress", "BlockedLog_LongPress- Call", null, null);
                        }
                        if (TextUtils.isEmpty(this.v.g) || cursor == null || this.v.i == null) {
                            CallUtil.startDialActivity(getActivity(), PhoneCapabilityTester.newDialNumberIntent(getActivity(), null, CallUtil.isUriNumber(this.v.h) ? this.v.h : a2, -1));
                        } else if (cursor.moveToPosition(i)) {
                            PhoneNumberInteraction.a((TransactionSafeActivity) getActivity(), Uri.parse(this.v.i), (String) null, this.v.g, cursor.getLong(6));
                        } else {
                            Log.d(j, "fail to moveToPosition: " + i);
                        }
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(5, getActivity(), "BlockList", "Blocked Call Log", "Blocked Call Log: long press and call", null);
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(18, getActivity(), "Make a Call", true);
                        z = true;
                        break;
                    case 2131296393:
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, getActivity(), "BlockedLog_LongPress", "BlockedLog_LongPress- Send_text_message", null, null);
                        }
                        ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", a2, null)));
                        z = true;
                        break;
                    case 2131296394:
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, getActivity(), "BlockedLog_LongPress", "BlockedLog_LongPress- View_contact", null, null);
                        }
                        if (this.v.i != null) {
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.VIEW");
                            intent.setData(Uri.parse(this.v.i));
                            ImplicitIntentsUtil.startActivityInApp(getActivity(), intent);
                        }
                        z = true;
                        break;
                    case 2131296650:
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, getActivity(), "BlockedLog_LongPress", "BlockedLog_LongPress- Delete_this_message", null, null);
                        }
                        if (cursor == null || !cursor.moveToPosition(i)) {
                            Log.d(j, "fail to moveToPosition: " + i);
                        } else {
                            long j2 = cursor.getLong(14);
                            Intent intent2 = new Intent("com.asus.block_message_delete");
                            intent2.putExtra("smsIds", new long[]{j2});
                            getActivity().sendBroadcast(intent2);
                            a aVar = this.l;
                            this.l.getClass();
                            aVar.a(2);
                            a aVar2 = this.l;
                            this.l.getClass();
                            aVar2.a(4);
                        }
                        z = true;
                        break;
                    case 2131296651:
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, getActivity(), "BlockedLog_LongPress", "BlockedLog_LongPress- Delete_all_messages_of_this_number", null, null);
                        }
                        if (cursor == null || !cursor.moveToPosition(i)) {
                            Log.d(j, "fail to moveToPosition: " + i);
                        } else {
                            long[] a3 = a(cursor.getLong(13));
                            Intent intent3 = new Intent("com.asus.block_message_delete");
                            intent3.putExtra("smsIds", a3);
                            getActivity().sendBroadcast(intent3);
                            a aVar3 = this.l;
                            this.l.getClass();
                            aVar3.a(2);
                            a aVar4 = this.l;
                            this.l.getClass();
                            aVar4.a(4);
                        }
                        z = true;
                        break;
                    case 2131296652:
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, getActivity(), "BlockedLog_LongPress", "BlockedLog_LongPress- Delete_all_calls_of_this_number", null, null);
                        }
                        if (TextUtils.isEmpty(this.v.g) || cursor == null) {
                            if (TextUtils.isEmpty(this.v.h)) {
                                if (PhoneCapabilityTester.IsAsusDevice()) {
                                    getActivity().getContentResolver().delete(CallLog.Calls.CONTENT_URI, "number=='' ", null);
                                } else {
                                    getActivity().getContentResolver().delete(c.a.f2506a, "number=='' ", null);
                                }
                            } else if (PhoneCapabilityTester.IsAsusDevice()) {
                                getActivity().getContentResolver().delete(CallLog.Calls.CONTENT_URI, "PHONE_NUMBERS_EQUAL( Calls.NUMBER, ?, 0 )", new String[]{this.v.h});
                            } else {
                                getActivity().getContentResolver().delete(c.a.f2506a, "PHONE_NUMBERS_EQUAL( number, ?, 0 )", new String[]{this.v.h});
                            }
                        } else if (cursor.moveToPosition(i)) {
                            long j3 = cursor.getLong(6);
                            if (PhoneCapabilityTester.IsAsusDevice()) {
                                getActivity().getContentResolver().delete(CallLog.Calls.CONTENT_URI, " block = " + String.valueOf(j3), null);
                            } else {
                                getActivity().getContentResolver().delete(c.a.f2506a, "contact_id=" + String.valueOf(j3), null);
                            }
                        } else {
                            Log.d(j, "fail to moveToPosition: " + i);
                        }
                        a aVar5 = this.l;
                        this.l.getClass();
                        aVar5.a(1);
                        z = true;
                        break;
                    case 2131296657:
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, getActivity(), "BlockedLog_LongPress", "BlockedLog_LongPress- Delete_this_call_log", null, null);
                        }
                        if (cursor == null || !cursor.moveToPosition(i)) {
                            Log.d(j, "fail to moveToPosition: " + i);
                        } else {
                            long j4 = cursor.getLong(14);
                            if (PhoneCapabilityTester.IsAsusDevice()) {
                                getActivity().getContentResolver().delete(CallLog.Calls.CONTENT_URI, "_id=" + String.valueOf(j4), null);
                            } else {
                                getActivity().getContentResolver().delete(c.a.f2506a, "_id=" + String.valueOf(j4), null);
                            }
                            a aVar6 = this.l;
                            this.l.getClass();
                            aVar6.a(1);
                        }
                        z = true;
                        break;
                    case 2131296766:
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, getActivity(), "BlockedLog_LongPress", "BlockedLog_LongPress- Edit_blocked_number", null, null);
                        }
                        Intent intent4 = new Intent();
                        intent4.setAction(BlockAndTagNumberActivity.ACTION);
                        intent4.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER, this.v.h);
                        startActivityForResult(intent4, 10);
                        z = true;
                        break;
                    case 2131297230:
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, getActivity(), "BlockedLog_LongPress", "BlockedLog_LongPress- Recover_this_spam", null, null);
                        }
                        Intent intent5 = this.C >= 190013320 ? new Intent("com.asus.block_message_update") : new Intent("com.asus.spam_message_update");
                        long j5 = cursor.getLong(14);
                        long j6 = cursor.getLong(13);
                        intent5.putExtra("update", 2);
                        intent5.putExtra("smsId", j5);
                        intent5.putExtra("threadId", j6);
                        getActivity().sendBroadcast(intent5);
                        Log.d(j, "Remove from spam: smsId = " + j5 + " threadId = " + j6);
                        z = true;
                        break;
                    case 2131297460:
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, getActivity(), "BlockedLog_LongPress", "BlockedLog_LongPress- Unblock_this_message", null, null);
                        }
                        Intent intent6 = new Intent("com.asus.block_message_update");
                        long j7 = cursor.getLong(14);
                        long j8 = cursor.getLong(13);
                        intent6.putExtra("update", 1);
                        intent6.putExtra("smsId", j7);
                        intent6.putExtra("threadId", j8);
                        getActivity().sendBroadcast(intent6);
                        Log.d(j, "Unblock message: smsId = " + j7 + " threadId = " + j8);
                        z = true;
                        break;
                    default:
                        z = super.onContextItemSelected(menuItem);
                        break;
                }
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.m = new b(new Handler());
        this.n = new e(new Handler());
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        this.v = new d.b();
        int i = ((AdapterView.AdapterContextMenuInfo) contextMenuInfo).position;
        Cursor cursor = this.f2443a.getCursor();
        if (cursor != null) {
            try {
                cursor.moveToPosition(i);
                String string = cursor.getString(7);
                String string2 = cursor.getString(3);
                String string3 = cursor.getString(4);
                this.v.i = string;
                this.v.g = string3;
                this.v.h = string2;
            } catch (Exception e2) {
                Log.i(j, e2.getMessage().toString());
            }
        }
        if (this.v != null) {
            getActivity().getMenuInflater().inflate(2131492869, contextMenu);
            MenuItem findItem = contextMenu.findItem(2131296390);
            MenuItem findItem2 = contextMenu.findItem(2131296393);
            MenuItem findItem3 = contextMenu.findItem(2131296394);
            MenuItem findItem4 = contextMenu.findItem(2131296766);
            MenuItem findItem5 = contextMenu.findItem(2131296657);
            MenuItem findItem6 = contextMenu.findItem(2131296652);
            MenuItem findItem7 = contextMenu.findItem(2131296650);
            MenuItem findItem8 = contextMenu.findItem(2131296651);
            MenuItem findItem9 = contextMenu.findItem(2131297230);
            MenuItem findItem10 = contextMenu.findItem(2131297460);
            if ((!t.a((CharSequence) ResultListFragment.a(this.v.h)) || !com.asus.a.a.b(this.v.h)) && !CallUtil.isUriNumber(this.v.h)) {
                findItem.setVisible(false);
            }
            if (!this.w.b(ResultListFragment.a(this.v.h)) || CallUtil.isUriNumber(this.v.h) || !com.asus.a.a.b(this.v.h)) {
                findItem2.setVisible(false);
            }
            if (TextUtils.isEmpty(this.v.h)) {
                findItem.setVisible(false);
            }
            if (this.u == 0) {
                if (!TextUtils.isEmpty(this.v.g)) {
                    contextMenu.setHeaderTitle(this.v.g);
                    findItem4.setVisible(false);
                    findItem6.setTitle(getResources().getString(2131755787));
                } else {
                    if (!com.asus.a.a.d(getActivity()) || !com.asus.a.a.b(this.v.h) || CallUtil.isUriNumber(this.v.h) || TextUtils.isEmpty(this.v.h) || com.asus.a.a.h(getActivity())) {
                        findItem4.setVisible(false);
                    }
                    findItem6.setTitle(getResources().getString(2131755788));
                    contextMenu.setHeaderTitle(this.v.h);
                    findItem3.setVisible(false);
                }
                findItem7.setVisible(false);
                findItem8.setVisible(false);
                findItem9.setVisible(false);
                findItem10.setVisible(false);
            } else if (this.u == 1 || this.u == 2) {
                if (!TextUtils.isEmpty(this.v.g)) {
                    contextMenu.setHeaderTitle(this.v.g);
                    findItem4.setVisible(false);
                } else {
                    if (!com.asus.a.a.d(getActivity()) || com.asus.a.a.h(getActivity())) {
                        findItem4.setVisible(false);
                    }
                    contextMenu.setHeaderTitle(this.v.h);
                    findItem3.setVisible(false);
                }
                if (!com.asus.a.a.b(this.v.h)) {
                    findItem4.setVisible(false);
                }
                findItem5.setVisible(false);
                findItem6.setVisible(false);
                if (this.u == 2) {
                    findItem9.setVisible(true);
                    findItem10.setVisible(false);
                    return;
                }
                findItem9.setVisible(false);
                findItem10.setVisible(this.C >= 190013320);
            }
        }
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(2131492878, menu);
        MenuItem findItem = menu.findItem(2131296398);
        if (findItem != null) {
            findItem.setVisible(true);
        }
        MenuItem findItem2 = menu.findItem(2131297278);
        if (findItem2 != null) {
            Log.d(j, "isCallguardIntalled = " + this.z + " mCallerIDVersion = " + this.y);
            findItem2.setVisible(this.z || this.y > 0);
        }
        MenuItem findItem3 = menu.findItem(2131296654);
        if (com.asus.blocklist.a.b(getActivity())) {
            if (findItem3 != null) {
                findItem3.setVisible(true);
            }
        } else if (findItem3 != null) {
            findItem3.setVisible(false);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.x = PhoneCapabilityTester.isUsingTwoPanes(getActivity());
        this.y = com.asus.a.a.g(getActivity());
        getActivity();
        this.z = com.asus.a.a.a();
        this.w = new t(getResources());
        View inflate = layoutInflater.inflate(2131427403, viewGroup, false);
        this.q = (ListView) inflate.findViewById(16908298);
        ActionBar actionBar = getActivity().getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setDisplayOptions(16);
            actionBar.setCustomView(2131427409);
            ((ImageView) actionBar.getCustomView().findViewById(2131296937)).setOnClickListener(this);
            this.r = (TextView) actionBar.getCustomView().findViewById(2131296389);
            actionBar.getCustomView().findViewById(2131297401).setOnClickListener(this);
        }
        setHasOptionsMenu(true);
        try {
            getActivity().getPackageManager().getPackageInfo("com.android.providers.telephony", 0);
            this.C = getActivity().getPackageManager().getPackageInfo("com.asus.message", 0).versionCode;
            Log.d(j, "sAsusMessageVersionCode = " + this.C);
        } catch (Exception e2) {
            Log.d(j, "Fail to get app version, Exception: " + e2.toString());
        }
        registerForContextMenu(this.q);
        this.q.setFastScrollEnabled(false);
        this.q.setFastScrollAlwaysVisible(false);
        this.q.setOnItemClickListener(this);
        this.q.setEmptyView(inflate.findViewById(16908308));
        if (bundle != null) {
            this.B = bundle.getInt("filter", 0);
        } else {
            this.B = -1;
        }
        if ((getActivity() != null ? getActivity().getIntent() : null) != null) {
            boolean booleanExtra = getActivity().getIntent().getBooleanExtra("isMessage", false);
            boolean booleanExtra2 = getActivity().getIntent().getBooleanExtra("isSpamMessage", false);
            Log.d(j, "isMessage = " + booleanExtra + " isSpamMessage = " + booleanExtra2);
            if (booleanExtra) {
                this.u = 1;
                RequestSMSPermissionsActivity.startPermissionActivity(getActivity());
            } else if (booleanExtra2) {
                this.u = 2;
            } else {
                this.u = 0;
            }
        }
        return inflate;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        a(this.q);
        this.q = null;
        com.android.contacts.asuscallerid.d.a().b(this.f2443a);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j2) {
        if (adapterView.getId() == 2131296856) {
            this.u = i;
            if (this.u == 1) {
                RequestSMSPermissionsActivity.startPermissionActivity(getActivity());
            }
            this.s.dismiss();
            a();
            a(i);
        }
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 2131296398:
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(getActivity(), "Callguard", "Blocked_list", (String) null);
                ImplicitIntentsUtil.startActivityInAppIfPossible(getActivity(), g.i(getActivity()));
                z = true;
                break;
            case 2131296653:
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "Callguard", "Callguard- Delete_blocked_calls", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, getActivity(), "Callguard", "Callguard- Delete_blocked_calls", null, null);
                }
                Intent intent = new Intent("com.asus.app.blocklist.PICKER");
                intent.putExtra("mode", 1);
                ImplicitIntentsUtil.startActivityInApp(getActivity(), intent);
                z = true;
                break;
            case 2131296654:
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "Callguard", "Callguard- Delete_blocked_messages", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, getActivity(), "Callguard", "Callguard- Delete_blocked_messages", null, null);
                }
                Intent intent2 = new Intent("com.asus.app.blocklist.PICKER");
                intent2.putExtra("mode", 2);
                ImplicitIntentsUtil.startActivityInApp(getActivity(), intent2);
                z = true;
                break;
            case 2131297278:
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "Callguard", "Callguard- Settings", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, getActivity(), "Callguard", "Callguard- Settings", null, null);
                }
                ImplicitIntentsUtil.startActivityInApp(getActivity(), new Intent(getActivity(), AsusCallerIDSettings.class));
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return onMenuItemClick(menuItem);
    }

    @Override // android.app.Fragment
    public void onResume() {
        Log.d(j, "onResume");
        super.onResume();
        Log.d(j, "onResume Send broadcast: android.intent.action.ASUS_CLEAR_BLOCKED_NOTIFY");
        getActivity().sendBroadcast(new Intent("android.intent.action.ASUS_CLEAR_BLOCKED_NOTIFY"));
        g.e(getActivity());
        if (!this.A) {
            a aVar = this.l;
            this.l.getClass();
            aVar.a(1);
            a aVar2 = this.l;
            this.l.getClass();
            aVar2.a(2);
            a aVar3 = this.l;
            this.l.getClass();
            aVar3.a(4);
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("filter", this.u);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        if (PhoneCapabilityTester.IsAsusDevice()) {
            this.o.registerContentObserver(CallLog.Calls.CONTENT_URI, true, this.m);
        } else {
            this.o.registerContentObserver(c.a.f2506a, true, this.m);
        }
        if (PermissionsUtil.hasReadSmsPermissions(getActivity())) {
            this.o.registerContentObserver(Telephony.Sms.CONTENT_URI, true, this.n);
        }
        if (this.B >= 0) {
            this.u = this.B;
        }
        a(this.u);
        if (this.l != null) {
            a aVar = this.l;
            this.l.getClass();
            aVar.a(1);
            a aVar2 = this.l;
            this.l.getClass();
            aVar2.a(2);
            a aVar3 = this.l;
            this.l.getClass();
            aVar3.a(4);
        }
        if (getActivity() != null) {
            this.D = q.a(getActivity());
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        if (this.s != null) {
            this.s.dismiss();
            this.s = null;
        }
        if (this.t != null) {
            this.t.dismiss();
            this.t = null;
        }
        if (this.f2443a != null) {
            this.f2443a.a();
        }
        this.o.unregisterContentObserver(this.m);
        this.o.unregisterContentObserver(this.n);
    }
}
