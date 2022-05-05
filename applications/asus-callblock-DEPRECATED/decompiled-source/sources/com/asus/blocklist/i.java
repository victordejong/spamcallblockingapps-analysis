package com.asus.blocklist;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.asuscallerid.d;
import com.android.contacts.dialpad.AsusQuickContactBadge;
import com.android.contacts.k;
import com.android.contacts.util.SpeedDialList;
import com.asus.a.a;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/i.class */
public class i extends CursorAdapter implements d.a {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f2528a = {"_id", "info_type", "date", "number", ContactDetailCallogActivity.EXTRA_NAME, "call_type", "contactId", "lookupUri", "simIndex", SpeedDialList.Columns.ISSIM, "subscription_component_name", "subscription_id", "smsText", "thread_id", "infoId"};

    /* renamed from: b  reason: collision with root package name */
    boolean f2529b;
    boolean c;
    private Context e;
    private LayoutInflater f;
    private boolean h;
    private k i;
    private final String d = i.class.getSimpleName();
    private SimpleDateFormat g = new SimpleDateFormat("M/dd,E");
    private Map<String, Bitmap> j = new HashMap();
    private Map<String, Boolean> k = new HashMap();

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/i$a.class */
    private final class a extends AsyncTask<a.c, Void, Bitmap> {

        /* renamed from: b  reason: collision with root package name */
        private AsusQuickContactBadge f2534b;
        private a.c c;

        a(AsusQuickContactBadge asusQuickContactBadge) {
            this.f2534b = asusQuickContactBadge;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bitmap doInBackground(a.c[] cVarArr) {
            Bitmap bitmap;
            a.c[] cVarArr2 = cVarArr;
            if (i.this.e != null) {
                this.c = cVarArr2[0];
                bitmap = com.asus.a.a.a(i.this.e, this.c);
            } else {
                bitmap = null;
            }
            return bitmap;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap2 != null) {
                super.onPostExecute(bitmap2);
                if (this.f2534b != null) {
                    i.this.j.put(this.c.f2355a, bitmap2);
                    this.f2534b.setImageBitmap(bitmap2);
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    public i(Context context, Cursor cursor) {
        super(context, cursor);
        this.h = false;
        this.i = null;
        this.e = context;
        this.f = LayoutInflater.from(context);
        this.h = com.asus.a.a.h(this.e);
        this.i = k.a(this.e);
    }

    private static Bitmap a(ContentResolver contentResolver, long j) {
        InputStream openContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j));
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

    public final void a() {
        this.j.clear();
        this.k.clear();
    }

    @Override // com.android.contacts.asuscallerid.d.a
    public final void a(d.c cVar) {
        if ("5".equals(cVar.d)) {
            notifyDataSetChanged();
        }
    }

    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
    }

    /* JADX WARN: Removed duplicated region for block: B:160:0x05fc  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0356  */
    @Override // android.widget.CursorAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r12, android.view.View r13, android.view.ViewGroup r14) {
        /*
            Method dump skipped, instructions count: 1901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.i.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return null;
    }
}
