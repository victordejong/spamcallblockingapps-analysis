package com.android.contacts.group;

import android.app.Activity;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.d;
import com.android.contacts.group.GroupEditorFragment;
import com.android.contacts.k;
import com.android.contacts.s;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.R;
import com.uservoice.uservoicesdk.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/group/b.class */
public class b extends ArrayAdapter<GroupEditorFragment.Member> {

    /* renamed from: a  reason: collision with root package name */
    LoaderManager f1361a;

    /* renamed from: b  reason: collision with root package name */
    ArrayList<GroupEditorFragment.Member> f1362b;
    long f;
    int g;
    private Context k;
    private ProgressDialog l;
    private String m;
    private boolean n;
    private a p;
    private final String j = b.class.getSimpleName();
    final List<Long> c = new ArrayList();
    final List<Long> d = new ArrayList();
    final List<Long> e = new ArrayList();
    boolean h = false;
    private View.OnClickListener o = new View.OnClickListener() { // from class: com.android.contacts.group.b.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            GroupEditorFragment.Member member = (GroupEditorFragment.Member) view.getTag();
            Long valueOf = Long.valueOf(member.f1354a);
            if (member.d) {
                member.d = false;
                b.this.i.remove(valueOf);
            } else {
                member.d = true;
                b.this.i.add(valueOf);
            }
            view.setSelected(member.d);
        }
    };
    ArrayList<Long> i = new ArrayList<>();
    private final LoaderManager.LoaderCallbacks<Cursor> q = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.group.b.2
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            if (b.this.l != null) {
                b.this.l.show();
            }
            return !b.this.n ? s.a(b.this.k, b.this.f) : d.a(b.this.k, b.this.f, b.this.g);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x019a  */
        @Override // android.app.LoaderManager.LoaderCallbacks
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ void onLoadFinished(android.content.Loader<android.database.Cursor> r11, android.database.Cursor r12) {
            /*
                Method dump skipped, instructions count: 453
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.group.b.AnonymousClass2.onLoadFinished(android.content.Loader, java.lang.Object):void");
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/b$a.class */
    public final class a extends AsyncQueryHandler {

        /* renamed from: a  reason: collision with root package name */
        public final String[] f1365a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1366b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final int i;
        public final int j;

        public a(ContentResolver contentResolver) {
            super(contentResolver);
            this.f1365a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "name_raw_contact_id", "display_name", "photo_thumb_uri", "lookup", "starred", "has_phone_number", "photo_id", SpeedDialList.Columns.ISSIM} : new String[]{"_id", "name_raw_contact_id", "display_name", "photo_thumb_uri", "lookup", "starred", "has_phone_number", "photo_id"};
            this.f1366b = 0;
            this.c = 1;
            this.d = 2;
            this.e = 3;
            this.f = 4;
            this.g = 5;
            this.h = 6;
            this.i = 7;
            this.j = 8;
        }

        @Override // android.content.AsyncQueryHandler
        protected final void onQueryComplete(int i, Object obj, Cursor cursor) {
            try {
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            do {
                                long j = cursor.getLong(0);
                                cursor.getLong(1);
                                b.this.f1362b.add(new GroupEditorFragment.Member(cursor.getString(4), j, cursor.getString(2), cursor.getString(3), cursor.getLong(7), PhoneCapabilityTester.IsAsusDevice() ? cursor.getInt(8) : 0));
                            } while (cursor.moveToNext());
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                if (b.this.k != null && !((Activity) b.this.k).isDestroyed()) {
                    b.this.notifyDataSetChanged();
                    b.this.d();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
    }

    public b(Context context, LoaderManager loaderManager, ArrayList<GroupEditorFragment.Member> arrayList) {
        super(context, 2131427382, arrayList);
        this.n = false;
        this.k = context;
        this.f1361a = loaderManager;
        this.f1362b = arrayList;
        this.l = new ProgressDialog(context);
        this.l.setCancelable(false);
        this.l.setMessage(this.k.getString(2131755350));
        this.m = this.k.getString(2131755855);
        this.n = PhoneCapabilityTester.IsAsusDevice();
    }

    public static String a(List<Long> list) {
        String str = BuildConfig.FLAVOR;
        int size = list.size();
        int i = 0;
        while (i < size) {
            str = i != size - 1 ? str + Long.toString(list.get(i).longValue()) + ", " : str + Long.toString(list.get(i).longValue());
            i++;
        }
        return str;
    }

    /* renamed from: a */
    public final GroupEditorFragment.Member getItem(int i) {
        return this.f1362b.get(i);
    }

    public final void a() {
        this.f1361a.initLoader(1, null, this.q);
    }

    public final void b() {
        this.f1361a.restartLoader(1, null, this.q);
    }

    public final ArrayList<GroupEditorFragment.Member> c() {
        ArrayList<GroupEditorFragment.Member> arrayList = new ArrayList<>();
        Iterator<GroupEditorFragment.Member> it = this.f1362b.iterator();
        while (it.hasNext()) {
            GroupEditorFragment.Member next = it.next();
            if (!next.d) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public final void d() {
        if (this.l != null && this.l.isShowing()) {
            this.l.cancel();
            this.l.dismiss();
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.f1362b.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = LayoutInflater.from(this.k).inflate(2131427382, viewGroup, false);
        }
        GroupEditorFragment.Member a2 = getItem(i);
        ((TextView) view2.findViewById(d.b.g)).setText(TextUtils.isEmpty(a2.f1355b) ? this.m : a2.f1355b);
        View findViewById = view2.findViewById(2131296655);
        if (findViewById != null) {
            findViewById.setTag(a2);
            findViewById.setSelected(a2.d);
            findViewById.setOnClickListener(this.o);
        }
        ImageView imageView = (ImageView) view2.findViewById(2131297153);
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        k a3 = k.a(this.k);
        long j = a2.f;
        if (j != 0) {
            a3.a(imageView, j, false, (k.d) null);
        } else {
            Uri uri = a2.c;
            int i2 = a2.g;
            Uri uri2 = uri;
            if (uri == null) {
                uri2 = uri;
                if (i2 > 0) {
                    uri2 = Uri.parse("content://sim/" + i2);
                }
            }
            a3.a(imageView, uri2, imageView.getWidth(), false, true, uri2 == null ? new k.d(a2.f1355b, null, true) : null);
        }
        view2.setBackgroundResource(2131034116);
        if (this.g == 1) {
            ((ImageView) view2.findViewById(R.id.icon)).setVisibility(8);
        }
        return view2;
    }
}
