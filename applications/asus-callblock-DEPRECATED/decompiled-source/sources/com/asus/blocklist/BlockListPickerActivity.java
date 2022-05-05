package com.asus.blocklist;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.RequestSMSPermissionsActivity;
import com.android.contacts.asuscallerid.d;
import com.android.contacts.k;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.blocklist.c;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListPickerActivity.class */
public class BlockListPickerActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public a f2426a;
    int d;
    int e;
    int f;
    int g;
    MatrixCursor k;
    MatrixCursor l;
    b m;
    c n;
    k.d o;
    private ListView p;
    private CheckedTextView q;
    private MenuItem v;
    private boolean x;
    private k z;
    private static boolean r = false;
    static final String[] h = {"_id", "number", "type", "date", "contact_name", "sim_index", "subscription_component_name", "subscription_id", ContactDetailCallogActivity.EXTRA_CONTACT_ID};
    static final String[] i = {ContactDetailCallogActivity.EXTRA_NAME, "number", "type", "date", "duration", "_id", "sim_index", ContactDetailCallogActivity.EXTRA_CONTACT_ID};
    static final String[] j = {"_id", "thread_id", "address", "body", "date", "type", "sub_id"};
    private static final String y = BlockListPickerActivity.class.getSimpleName();
    private boolean s = false;
    private int t = 0;
    private SimpleDateFormat u = new SimpleDateFormat("M/dd,E");

    /* renamed from: b  reason: collision with root package name */
    public final String f2427b = "com.asus.block_message_delete";
    public Set<Long> c = new HashSet();
    private boolean w = false;

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListPickerActivity$a.class */
    public final class a extends CursorAdapter implements d.a {

        /* renamed from: a  reason: collision with root package name */
        Drawable f2431a;

        /* renamed from: b  reason: collision with root package name */
        Drawable f2432b;
        Drawable c;
        Bitmap d;
        Bitmap e;
        private int h = 0;
        View.OnClickListener f = new View.OnClickListener() { // from class: com.asus.blocklist.BlockListPickerActivity.a.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                long longValue = ((Long) view.getTag()).longValue();
                CheckedTextView checkedTextView = (CheckedTextView) view.findViewById(2131296965);
                if (BlockListPickerActivity.this.c.contains(Long.valueOf(longValue))) {
                    BlockListPickerActivity.this.c.remove(Long.valueOf(longValue));
                    BlockListPickerActivity.b(BlockListPickerActivity.this, false);
                    checkedTextView.setChecked(false);
                } else {
                    BlockListPickerActivity.this.c.add(Long.valueOf(longValue));
                    if (BlockListPickerActivity.this.c.size() == BlockListPickerActivity.this.f2426a.getCount()) {
                        BlockListPickerActivity.b(BlockListPickerActivity.this, true);
                    }
                    checkedTextView.setChecked(true);
                }
                if (BlockListPickerActivity.this.v == null || !BlockListPickerActivity.this.c.isEmpty()) {
                    BlockListPickerActivity.this.v.setEnabled(true);
                } else {
                    BlockListPickerActivity.this.v.setEnabled(false);
                }
                if (BlockListPickerActivity.this.v != null) {
                    com.android.contacts.skin.a.a(BlockListPickerActivity.this.getApplicationContext(), BlockListPickerActivity.this.v);
                }
            }
        };

        public a(Context context, Cursor cursor) {
            super(context, cursor, 0);
            this.f2431a = null;
            this.f2432b = null;
            this.c = null;
            this.d = null;
            this.e = null;
            this.d = BitmapFactory.decodeResource(context.getResources(), 2131165281);
            this.e = BitmapFactory.decodeResource(context.getResources(), 2131165283);
            this.f2432b = context.getResources().getDrawable(2131165323);
            this.f2431a = context.getResources().getDrawable(2131165325);
            this.c = context.getResources().getDrawable(2131165324);
        }

        @Override // com.android.contacts.asuscallerid.d.a
        public final void a(d.c cVar) {
            if ("9".equals(cVar.d)) {
                notifyDataSetChanged();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:280:0x0ae3, code lost:
            if (r0.f2356b != null) goto L_0x0ae6;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:133:0x0512  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x072f  */
        /* JADX WARN: Removed duplicated region for block: B:207:0x0766  */
        /* JADX WARN: Removed duplicated region for block: B:208:0x0772  */
        /* JADX WARN: Removed duplicated region for block: B:209:0x077e  */
        /* JADX WARN: Removed duplicated region for block: B:213:0x07ac  */
        /* JADX WARN: Removed duplicated region for block: B:232:0x0935 A[Catch: all -> 0x0b25, TryCatch #2 {all -> 0x0b25, blocks: (B:224:0x08dc, B:226:0x08e5, B:228:0x091f, B:230:0x092c, B:232:0x0935, B:234:0x093f, B:238:0x0961, B:240:0x0976, B:242:0x0980, B:266:0x0a7c, B:270:0x0aa7, B:272:0x0ab4, B:275:0x0ad2, B:279:0x0ade, B:282:0x0ae8, B:284:0x0aee, B:286:0x0af7, B:288:0x0afd, B:296:0x0b32, B:298:0x0b3b, B:299:0x0b46, B:301:0x0b67), top: B:314:0x08dc }] */
        /* JADX WARN: Removed duplicated region for block: B:245:0x098b  */
        /* JADX WARN: Removed duplicated region for block: B:248:0x09c1  */
        /* JADX WARN: Removed duplicated region for block: B:251:0x09ec A[FALL_THROUGH] */
        /* JADX WARN: Removed duplicated region for block: B:302:0x0b85  */
        /* JADX WARN: Removed duplicated region for block: B:303:0x0b8d  */
        /* JADX WARN: Removed duplicated region for block: B:304:0x0b99  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x01a3 A[Catch: all -> 0x0460, TRY_ENTER, TryCatch #0 {all -> 0x0460, blocks: (B:21:0x0163, B:23:0x016d, B:25:0x018a, B:27:0x0190, B:29:0x0196, B:32:0x01a3, B:37:0x01b0, B:43:0x01d6, B:45:0x01eb, B:47:0x01f4, B:95:0x044a, B:97:0x0453, B:116:0x04a8, B:118:0x04b1, B:123:0x04c3, B:125:0x04cd, B:127:0x04d5, B:131:0x04dc, B:132:0x04f7, B:135:0x0519, B:137:0x0535, B:139:0x053d, B:141:0x0551, B:144:0x057d, B:146:0x058a, B:148:0x05a2, B:150:0x05a9, B:153:0x05b1, B:157:0x05c0, B:161:0x05cf, B:163:0x05d9, B:165:0x05ec, B:167:0x05f4, B:169:0x05fd, B:171:0x0627, B:172:0x0631, B:176:0x0644, B:180:0x0658, B:182:0x0671, B:185:0x067c, B:187:0x06af, B:189:0x06b6, B:191:0x06be, B:193:0x06c4, B:195:0x06e0, B:197:0x06e8, B:198:0x06f3), top: B:313:0x0163 }] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x01d1  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0206  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0217  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x026d  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x02c7  */
        /* JADX WARN: Type inference failed for: r21v19 */
        /* JADX WARN: Type inference failed for: r21v2 */
        /* JADX WARN: Type inference failed for: r21v20 */
        /* JADX WARN: Type inference failed for: r21v3 */
        /* JADX WARN: Type inference failed for: r21v4 */
        /* JADX WARN: Type inference failed for: r21v5 */
        /* JADX WARN: Type inference failed for: r21v6 */
        /* JADX WARN: Type inference failed for: r21v7 */
        /* JADX WARN: Type inference failed for: r21v8, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // android.widget.CursorAdapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void bindView(android.view.View r9, android.content.Context r10, android.database.Cursor r11) {
            /*
                Method dump skipped, instructions count: 3044
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.BlockListPickerActivity.a.bindView(android.view.View, android.content.Context, android.database.Cursor):void");
        }

        @Override // android.widget.CursorAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            this.h = i;
            return super.getView(i, view, viewGroup);
        }

        @Override // android.widget.CursorAdapter
        public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
            return ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427412, viewGroup, false);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListPickerActivity$b.class */
    public final class b extends AsyncTask<Integer, Void, Integer> {
        public b() {
        }

        private Integer a() {
            if (PhoneCapabilityTester.IsAsusDevice()) {
                BlockListPickerActivity.this.k = null;
                BlockListPickerActivity.this.k = new MatrixCursor(BlockListPickerActivity.i);
                Cursor query = BlockListPickerActivity.this.getContentResolver().query(CallLog.Calls.CONTENT_URI, null, " contact_id != 0 ", null, " date DESC");
                try {
                    query.moveToPrevious();
                    while (query.moveToNext()) {
                        String string = query.getString(query.getColumnIndex("_id"));
                        BlockListPickerActivity.this.k.addRow(new String[]{query.getString(query.getColumnIndex(ContactDetailCallogActivity.EXTRA_NAME)), query.getString(query.getColumnIndex("number")), query.getString(query.getColumnIndex("type")), query.getString(query.getColumnIndex("date")), query.getString(query.getColumnIndex("duration")), string, query.getString(query.getColumnIndex("sim_index")), String.valueOf(query.getLong(query.getColumnIndex("block")))});
                    }
                    if (query != null) {
                        query.close();
                    }
                } catch (Throwable th) {
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            } else {
                b();
            }
            return 1;
        }

        private void b() {
            BlockListPickerActivity.this.k = null;
            BlockListPickerActivity.this.k = new MatrixCursor(BlockListPickerActivity.h);
            Cursor query = BlockListPickerActivity.this.getContentResolver().query(c.a.f2506a, null, null, null, " date DESC");
            try {
                query.moveToPrevious();
                while (query.moveToNext()) {
                    String string = query.getString(query.getColumnIndex("_id"));
                    String string2 = query.getString(query.getColumnIndex("contact_name"));
                    BlockListPickerActivity.this.k.addRow(new String[]{string, query.getString(query.getColumnIndex("number")), query.getString(query.getColumnIndex("type")), query.getString(query.getColumnIndex("date")), string2, query.getString(query.getColumnIndex("sim_index")), query.getString(query.getColumnIndex("subscription_component_name")), query.getString(query.getColumnIndex("subscription_id")), String.valueOf(query.getLong(query.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID)))});
                }
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Integer doInBackground(Integer[] numArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            super.onPostExecute(num);
            if (BlockListPickerActivity.this.f2426a == null) {
                BlockListPickerActivity.this.f2426a = new a(BlockListPickerActivity.this, BlockListPickerActivity.this.k);
                if (com.asus.a.a.d(BlockListPickerActivity.this)) {
                    com.android.contacts.asuscallerid.d.a().a(BlockListPickerActivity.this.f2426a);
                }
            } else {
                BlockListPickerActivity.this.f2426a.swapCursor(BlockListPickerActivity.this.k);
            }
            if (BlockListPickerActivity.this.f2426a != null && BlockListPickerActivity.this.f2426a.getCount() > 0) {
                BlockListPickerActivity.this.q.setEnabled(true);
            }
            BlockListPickerActivity.this.p = (ListView) BlockListPickerActivity.this.findViewById(2131297164);
            BlockListPickerActivity.this.p.setItemsCanFocus(false);
            BlockListPickerActivity.this.p.setAdapter((ListAdapter) BlockListPickerActivity.this.f2426a);
            BlockListPickerActivity.this.invalidateOptionsMenu();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListPickerActivity$c.class */
    public final class c extends AsyncTask<Integer, Void, Integer> {

        /* renamed from: b  reason: collision with root package name */
        private BlockListPickerActivity f2436b;

        public c(BlockListPickerActivity blockListPickerActivity) {
            this.f2436b = blockListPickerActivity;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:46:0x017d  */
        /* JADX WARN: Type inference failed for: r8v0, types: [android.net.Uri] */
        /* JADX WARN: Type inference failed for: r8v1, types: [android.database.Cursor] */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.Integer a() {
            /*
                Method dump skipped, instructions count: 400
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.BlockListPickerActivity.c.a():java.lang.Integer");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Integer doInBackground(Integer[] numArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            super.onPostExecute(num);
            if (BlockListPickerActivity.this.l.getCount() == 0) {
                LinearLayout linearLayout = (LinearLayout) BlockListPickerActivity.this.findViewById(2131296789);
                ListView listView = (ListView) BlockListPickerActivity.this.findViewById(2131297164);
                if (!(linearLayout == null || listView == null)) {
                    linearLayout.setVisibility(0);
                    listView.setVisibility(8);
                }
                BlockListPickerActivity.this.invalidateOptionsMenu();
            } else {
                BlockListPickerActivity.this.invalidateOptionsMenu();
            }
            BlockListPickerActivity.this.e = BlockListPickerActivity.this.l.getColumnIndex("address");
            BlockListPickerActivity.this.d = BlockListPickerActivity.this.l.getColumnIndex("body");
            BlockListPickerActivity.this.f = BlockListPickerActivity.this.l.getColumnIndex("date");
            BlockListPickerActivity.this.g = BlockListPickerActivity.this.l.getColumnIndex("type");
            if (BlockListPickerActivity.this.f2426a == null) {
                BlockListPickerActivity.this.f2426a = new a(BlockListPickerActivity.this, BlockListPickerActivity.this.l);
                if (com.asus.a.a.d(BlockListPickerActivity.this)) {
                    com.android.contacts.asuscallerid.d.a().a(BlockListPickerActivity.this.f2426a);
                }
            } else {
                BlockListPickerActivity.this.f2426a.swapCursor(BlockListPickerActivity.this.l);
            }
            if (BlockListPickerActivity.this.f2426a != null && BlockListPickerActivity.this.f2426a.getCount() > 0) {
                BlockListPickerActivity.this.q.setEnabled(true);
            }
            BlockListPickerActivity.this.p = (ListView) BlockListPickerActivity.this.findViewById(2131297164);
            BlockListPickerActivity.this.p.setItemsCanFocus(false);
            BlockListPickerActivity.this.p.setAdapter((ListAdapter) BlockListPickerActivity.this.f2426a);
            BlockListPickerActivity.this.invalidateOptionsMenu();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListPickerActivity$d.class */
    final class d extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private int f2438b = 0;

        d() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            if (BlockListPickerActivity.this.f2426a == null) {
                return null;
            }
            BlockListPickerActivity.this.f2426a.getCount();
            if (this.f2438b == 1) {
                BlockListPickerActivity.this.k.moveToPosition(-1);
                while (BlockListPickerActivity.this.k.moveToNext()) {
                    PhoneCapabilityTester.IsAsusDevice();
                    BlockListPickerActivity.this.c.add(Long.valueOf(BlockListPickerActivity.this.k.getLong(BlockListPickerActivity.this.k.getColumnIndex("_id"))));
                }
                return null;
            } else if (this.f2438b != 2) {
                return null;
            } else {
                BlockListPickerActivity.this.l.moveToPosition(-1);
                while (BlockListPickerActivity.this.l.moveToNext()) {
                    BlockListPickerActivity.this.c.add(Long.valueOf(BlockListPickerActivity.this.l.getLong(BlockListPickerActivity.this.l.getColumnIndex("_id"))));
                }
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            if (BlockListPickerActivity.this.f2426a != null) {
                BlockListPickerActivity.this.f2426a.notifyDataSetChanged();
                BlockListPickerActivity.this.q.setChecked(true);
                if (BlockListPickerActivity.this.v != null) {
                    BlockListPickerActivity.this.v.setEnabled(true);
                    com.android.contacts.skin.a.a(BlockListPickerActivity.this.getApplicationContext(), BlockListPickerActivity.this.v);
                }
            }
            BlockListPickerActivity.this.s = false;
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            this.f2438b = BlockListPickerActivity.this.t;
            BlockListPickerActivity.this.s = true;
            super.onPreExecute();
        }
    }

    public BlockListPickerActivity() {
        this.k = PhoneCapabilityTester.IsAsusDevice() ? new MatrixCursor(i) : new MatrixCursor(h);
        this.l = new MatrixCursor(j);
        this.m = null;
        this.n = null;
        this.x = false;
        this.z = null;
        this.o = null;
    }

    private static Bitmap a(ContentResolver contentResolver, long j2) {
        InputStream openContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j2));
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(openContactPhotoInputStream);
            if (openContactPhotoInputStream != null) {
                try {
                    openContactPhotoInputStream.close();
                } catch (Exception e) {
                }
            }
            return decodeStream;
        } catch (Throwable th) {
            if (openContactPhotoInputStream != null) {
                try {
                    openContactPhotoInputStream.close();
                } catch (Exception e2) {
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap a(android.content.Context r9, long r10, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.BlockListPickerActivity.a(android.content.Context, long, java.lang.String):android.graphics.Bitmap");
    }

    static /* synthetic */ void b(BlockListPickerActivity blockListPickerActivity, boolean z) {
        r = z;
        blockListPickerActivity.q.setChecked(z);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.t = getIntent().getIntExtra("mode", 0);
        if (bundle != null) {
            for (long j2 : bundle.getLongArray("SAVE_INSTANCE_STATE_SELECTEDITEM")) {
                this.c.add(Long.valueOf(j2));
            }
        }
        this.w = com.asus.a.a.h(this);
        setContentView(2131427405);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setDisplayShowHomeEnabled(false);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setDisplayShowTitleEnabled(true);
            setRequestedOrientation(1);
        }
        switch (this.t) {
            case 1:
                actionBar.setTitle(getResources().getString(2131755520));
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(18, (Activity) this, "Delete blocked call log", true);
                    break;
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, (Activity) this, "Delete blocked call log", true);
                    break;
                }
            case 2:
                RequestSMSPermissionsActivity.startPermissionActivity(this);
                actionBar.setTitle(getResources().getString(2131755521));
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(18, (Activity) this, "Delete blocked sms", true);
                    break;
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, (Activity) this, "Delete blocked sms", true);
                    break;
                }
        }
        this.q = (CheckedTextView) findViewById(2131297269);
        this.q.setVisibility(0);
        this.q.setEnabled(false);
        this.q.setOnClickListener(new View.OnClickListener() { // from class: com.asus.blocklist.BlockListPickerActivity.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (BlockListPickerActivity.this.s) {
                    return;
                }
                if (BlockListPickerActivity.r) {
                    BlockListPickerActivity.this.c.clear();
                    boolean unused = BlockListPickerActivity.r = false;
                    BlockListPickerActivity.this.q.setChecked(false);
                    if (BlockListPickerActivity.this.f2426a != null) {
                        BlockListPickerActivity.this.f2426a.notifyDataSetChanged();
                    }
                    if (BlockListPickerActivity.this.v != null) {
                        BlockListPickerActivity.this.v.setEnabled(false);
                        com.android.contacts.skin.a.a(BlockListPickerActivity.this.getApplicationContext(), BlockListPickerActivity.this.v);
                        return;
                    }
                    return;
                }
                boolean unused2 = BlockListPickerActivity.r = true;
                BlockListPickerActivity.this.s = true;
                new d().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        });
        this.z = k.a(this);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.android.contacts.asuscallerid.d.a().b(this.f2426a);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
            case 2131296517:
                finish();
                break;
            case 2131296646:
                AlertDialog.Builder negativeButton = new AlertDialog.Builder(this).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.BlockListPickerActivity.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        switch (BlockListPickerActivity.this.t) {
                            case 1:
                                if (BlockListPickerActivity.this.c.size() > 0) {
                                    for (Long l : BlockListPickerActivity.this.c) {
                                        long longValue = l.longValue();
                                        if (PhoneCapabilityTester.IsAsusDevice()) {
                                            BlockListPickerActivity.this.getContentResolver().delete(Uri.parse("content://call_log/calls/" + longValue), null, null);
                                        } else {
                                            BlockListPickerActivity.this.getContentResolver().delete(Uri.withAppendedPath(c.a.f2506a, String.valueOf(longValue)), null, null);
                                        }
                                    }
                                    break;
                                }
                                break;
                            case 2:
                                int size = BlockListPickerActivity.this.c.size();
                                if (size > 0) {
                                    Iterator<Long> it = BlockListPickerActivity.this.c.iterator();
                                    long[] jArr = new long[size];
                                    for (int i3 = 0; i3 < size; i3++) {
                                        jArr[i3] = it.next().longValue();
                                    }
                                    Intent intent = new Intent("com.asus.block_message_delete");
                                    intent.putExtra("smsIds", jArr);
                                    BlockListPickerActivity.this.sendBroadcast(intent);
                                    break;
                                }
                                break;
                        }
                        BlockListPickerActivity.this.finish();
                    }
                }).setNegativeButton(getString(17039369), new DialogInterface.OnClickListener() { // from class: com.asus.blocklist.BlockListPickerActivity.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        Log.d("AlertDialog", "Negative");
                    }
                });
                switch (this.t) {
                    case 1:
                        negativeButton.setTitle(getResources().getString(2131755520)).setMessage(getResources().getString(2131755197));
                        break;
                    case 2:
                        negativeButton.setTitle(getResources().getString(2131755521)).setMessage(getResources().getString(2131755198));
                        break;
                }
                negativeButton.show();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.clear();
        getMenuInflater().inflate(2131492868, menu);
        this.v = menu.findItem(2131296646);
        if (this.v != null) {
            if (this.c.isEmpty()) {
                this.v.setEnabled(false);
            }
            com.android.contacts.skin.a.a(this, this.v);
        }
        MenuItem findItem = menu.findItem(2131296517);
        if (findItem != null) {
            com.android.contacts.skin.a.a(this, findItem);
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.t == 1) {
            if (this.m != null) {
                this.m.cancel(true);
                this.m = null;
            }
            this.m = new b();
            this.m.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, 1);
        }
        if (this.t == 2) {
            if (this.n != null) {
                this.n.cancel(true);
                this.n = null;
            }
            this.n = new c(this);
            this.n.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, 1);
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        long[] jArr = new long[this.c.size()];
        int i2 = 0;
        for (Long l : this.c) {
            jArr[i2] = l.longValue();
            i2++;
        }
        bundle.putLongArray("SAVE_INSTANCE_STATE_SELECTEDITEM", jArr);
    }
}
