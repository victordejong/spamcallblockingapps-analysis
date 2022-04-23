package com.android.contacts.miniwidget;

import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Message;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.android.contacts.miniwidget.EditContactsActivity;
import com.android.contacts.preference.ContactsPreferences;
import com.asus.updatesdk.BuildConfig;
import com.uservoice.uservoicesdk.d;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/d.class */
public final class d extends BaseAdapter implements SectionIndexer {

    /* renamed from: a  reason: collision with root package name */
    ArrayList<EditContactsActivity.a> f1971a;
    private Context e;
    private final int k;
    private int l;
    private ArrayList<EditContactsActivity.a> m;
    private final String h = ContactsPreferences.DISPLAY_ORDER_KEY;
    private final int i = 1;
    private final int j = 2;

    /* renamed from: b  reason: collision with root package name */
    boolean f1972b = false;
    View.OnClickListener c = new View.OnClickListener() { // from class: com.android.contacts.miniwidget.d.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    };
    View.OnClickListener d = new View.OnClickListener() { // from class: com.android.contacts.miniwidget.d.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (!d.this.f1972b) {
                EditContactsActivity.a aVar = (EditContactsActivity.a) d.this.f1971a.get(((Integer) view.getTag()).intValue());
                aVar.c = false;
                long j = aVar.f1945a;
                Iterator it = d.this.m.iterator();
                int i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (j == ((EditContactsActivity.a) it.next()).f1945a) {
                        ((EditContactsActivity.a) d.this.m.get(i)).c = false;
                        break;
                    } else {
                        i++;
                    }
                }
                ((EditContactsActivity) d.this.e).f1938a.invalidateViews();
                EditContactsActivity editContactsActivity = (EditContactsActivity) d.this.e;
                Iterator<EditContactsActivity.a> it2 = editContactsActivity.f1939b.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (it2.next().c) {
                            break;
                        }
                    } else {
                        ((TextView) editContactsActivity.findViewById(2131297117)).setVisibility(0);
                        break;
                    }
                }
                EditContactsActivity.a();
                return;
            }
            Log.d("ContactListAdapter", "Dragging!! Can not delete!");
        }
    };
    private int f = 0;
    private int g = a();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/d$a.class */
    private final class a {

        /* renamed from: a  reason: collision with root package name */
        TextView f1975a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f1976b;
        TextView c;
        View d;
        View e;

        private a() {
        }

        /* synthetic */ a(d dVar, byte b2) {
            this();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/d$b.class */
    private final class b {

        /* renamed from: a  reason: collision with root package name */
        TextView f1977a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1978b;
        ImageView c;
        LinearLayout d;
        View e;

        private b() {
        }

        /* synthetic */ b(d dVar, byte b2) {
            this();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/d$c.class */
    private final class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private int f1980b;
        private Context c;
        private int d;

        public c(int i, Context context, int i2) {
            this.f1980b = i;
            this.c = context;
            this.d = i2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            InputStream inputStream = null;
            try {
                InputStream openContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(this.c.getContentResolver(), ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, ((EditContactsActivity.a) d.this.f1971a.get(this.f1980b)).f1945a));
                if (openContactPhotoInputStream != null) {
                    Bitmap decodeStream = BitmapFactory.decodeStream(openContactPhotoInputStream);
                    Message obtain = Message.obtain();
                    if (this.d == 0) {
                        obtain.what = 1;
                    } else {
                        obtain.what = 2;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putInt("position", this.f1980b);
                    bundle.putParcelable("photo", decodeStream);
                    obtain.setData(bundle);
                    inputStream = openContactPhotoInputStream;
                    ((EditContactsActivity) this.c).a(obtain);
                }
                if (openContactPhotoInputStream != null) {
                    try {
                        openContactPhotoInputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                throw th;
            }
        }
    }

    public d(Context context, ArrayList<EditContactsActivity.a> arrayList) {
        this.f1971a = arrayList;
        this.e = context;
        this.k = context.getResources().getColor(2131034194);
        this.l = context.getResources().getColor(2131034193);
    }

    public d(Context context, ArrayList<EditContactsActivity.a> arrayList, ArrayList<EditContactsActivity.a> arrayList2) {
        this.f1971a = arrayList;
        this.e = context;
        this.m = arrayList2;
        this.k = context.getResources().getColor(2131034194);
        this.l = context.getResources().getColor(2131034193);
    }

    private int a() {
        int b2;
        if (!this.e.getResources().getBoolean(2130968584)) {
            b2 = b();
        } else {
            try {
                b2 = Settings.System.getInt(this.e.getContentResolver(), ContactsPreferences.DISPLAY_ORDER_KEY);
            } catch (Settings.SettingNotFoundException e) {
                b2 = b();
            }
        }
        return b2;
    }

    private void a(TextView textView, char[] cArr) {
        int i;
        char[] cArr2 = ((EditContactsActivity) this.e).e;
        if (cArr2 == null || cArr2.length == 0) {
            i = -1;
        } else {
            int length = cArr.length;
            int length2 = cArr2.length;
            int i2 = 0;
            while (i2 < length) {
                int i3 = i2;
                while (i3 < length && !Character.isLetterOrDigit(cArr[i3])) {
                    i3++;
                }
                if (i3 + length2 > length) {
                    break;
                }
                int i4 = 0;
                while (i4 < length2 && Character.toUpperCase(cArr[i3 + i4]) == cArr2[i4]) {
                    i4++;
                }
                i = i3;
                if (i4 == length2) {
                    break;
                }
                while (true) {
                    i2 = i3;
                    if (i3 < length) {
                        i2 = i3;
                        if (Character.isLetterOrDigit(cArr[i3])) {
                            i3++;
                        }
                    }
                }
            }
            i = -1;
        }
        if (i != -1) {
            SpannableString spannableString = new SpannableString(new String(cArr, 0, cArr.length));
            spannableString.setSpan(new ForegroundColorSpan(this.k), i, cArr2.length + i, 0);
            spannableString.setSpan(new BackgroundColorSpan(this.l), i, cArr2.length + i, 0);
            textView.setText(spannableString);
            return;
        }
        textView.setText(cArr, 0, cArr.length);
    }

    private static boolean a(Context context, long j, g gVar) {
        boolean z;
        ArrayList<g> arrayList = new ArrayList<>();
        arrayList.add(new g(context, -1, (String) null));
        new com.android.contacts.miniwidget.b(context, j).a(arrayList, false);
        arrayList.add(new g(context, 6, String.valueOf(j)));
        Iterator<g> it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().a(gVar)) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        return z;
    }

    private int b() {
        return this.e.getResources().getBoolean(2130968582) ? 1 : 2;
    }

    public final void a(int i) {
        this.f1971a.remove(this.f1971a.get(i));
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f1971a.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.f1971a.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return this.f1971a.get(i).f1945a;
    }

    @Override // android.widget.SectionIndexer
    public final int getPositionForSection(int i) {
        EditContactsActivity editContactsActivity = (EditContactsActivity) this.e;
        ArrayList<Integer> arrayList = editContactsActivity.d;
        if (i >= editContactsActivity.d.size()) {
            i = editContactsActivity.d.size() - 1;
        }
        return arrayList.get(i).intValue();
    }

    @Override // android.widget.SectionIndexer
    public final int getSectionForPosition(int i) {
        return this.f1971a.get(i).i;
    }

    @Override // android.widget.SectionIndexer
    public final Object[] getSections() {
        return ((EditContactsActivity) this.e).c;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        a aVar;
        EditContactsActivity.a aVar2 = this.f1971a.get(i);
        switch (this.f) {
            case 0:
                if (!aVar2.c()) {
                    view = new View(this.e);
                    break;
                } else {
                    if (view == 0) {
                        view = LayoutInflater.from(this.e).inflate(2131427479, (ViewGroup) null);
                        aVar = new a(this, (byte) 0);
                        aVar.f1976b = (ImageView) view.findViewById(2131297153);
                        aVar.f1975a = (TextView) view.findViewById(d.b.g);
                        aVar.c = (TextView) view.findViewById(2131296982);
                        aVar.d = view.findViewById(2131296971);
                        aVar.e = view.findViewById(2131296984);
                    } else {
                        aVar = (a) view.getTag();
                        if (aVar == null) {
                            view = LayoutInflater.from(this.e).inflate(2131427479, (ViewGroup) null);
                            aVar = new a(this, (byte) 0);
                            aVar.f1976b = (ImageView) view.findViewById(2131297153);
                            aVar.f1975a = (TextView) view.findViewById(d.b.g);
                            aVar.c = (TextView) view.findViewById(2131296982);
                            aVar.d = view.findViewById(2131296971);
                            aVar.e = view.findViewById(2131296984);
                        }
                    }
                    aVar.d.setBackgroundResource(2131165897);
                    int intValue = ((Integer) EditContactsActivity.this.d.get(aVar2.i)).intValue();
                    while (true) {
                        if (intValue <= i) {
                            if (this.f1971a.get(intValue).c()) {
                                if (intValue != i) {
                                    aVar.e.setVisibility(8);
                                } else if (EditContactsActivity.this.g) {
                                    aVar.e.setVisibility(8);
                                } else {
                                    aVar.e.setVisibility(0);
                                    aVar.c.setText(this.f1971a.get(i).h);
                                    aVar.c.setOnClickListener(this.c);
                                }
                            }
                            intValue++;
                        }
                    }
                    if (this.g == 1) {
                        aVar.f1975a.setText(aVar2.a());
                        a(aVar.f1975a, aVar2.a().toCharArray());
                    } else {
                        aVar.f1975a.setText(aVar2.b());
                        a(aVar.f1975a, aVar2.b().toCharArray());
                    }
                    if (!com.android.contacts.simcardmanage.b.a(this.e) || aVar2.o <= 0) {
                        if (aVar2.o == 1) {
                            aVar.f1976b.setImageResource(2131165377);
                        } else {
                            aVar2.m = aVar.f1976b;
                            if (aVar2.p == null) {
                                aVar.f1976b.setImageResource(2131165278);
                                new Thread(new c(i, this.e, 0)).start();
                            } else {
                                aVar2.a(aVar2.p);
                            }
                        }
                    } else if (aVar2.o == 2) {
                        aVar.f1976b.setImageResource(2131165379);
                    } else {
                        aVar.f1976b.setImageResource(2131165378);
                    }
                    view.setTag(aVar);
                    break;
                }
            case 1:
                if (!aVar2.c) {
                    view = new View(this.e);
                    break;
                } else {
                    if (view == 0) {
                        view = LayoutInflater.from(this.e).inflate(2131427727, (ViewGroup) null);
                        bVar = new b(this, (byte) 0);
                        bVar.c = (ImageView) view.findViewById(2131297154);
                        bVar.f1977a = (TextView) view.findViewById(2131297098);
                        bVar.f1978b = (TextView) view.findViewById(2131296642);
                        bVar.d = (LinearLayout) view.findViewById(2131296649);
                        bVar.e = view.findViewById(2131297546);
                    } else {
                        b bVar2 = (b) view.getTag();
                        bVar = bVar2;
                        if (bVar2 == null) {
                            view = LayoutInflater.from(this.e).inflate(2131427727, (ViewGroup) null);
                            bVar = new b(this, (byte) 0);
                            bVar.c = (ImageView) view.findViewById(2131297154);
                            bVar.f1977a = (TextView) view.findViewById(2131297098);
                            bVar.f1978b = (TextView) view.findViewById(2131296642);
                            bVar.d = (LinearLayout) view.findViewById(2131296649);
                            bVar.e = view.findViewById(2131297546);
                        }
                    }
                    if (this.g == 1) {
                        bVar.f1977a.setText(aVar2.a());
                    } else {
                        bVar.f1977a.setText(aVar2.b());
                    }
                    if (!com.android.contacts.simcardmanage.b.a(this.e) || aVar2.o <= 0) {
                        if (aVar2.o == 1) {
                            bVar.c.setImageResource(2131165377);
                        } else {
                            aVar2.n = bVar.c;
                            if (aVar2.p == null) {
                                bVar.c.setImageResource(2131165278);
                                new Thread(new c(i, this.e, 1)).start();
                            } else {
                                aVar2.b(aVar2.p);
                            }
                        }
                    } else if (aVar2.o == 2) {
                        bVar.c.setImageResource(2131165379);
                    } else {
                        bVar.c.setImageResource(2131165378);
                    }
                    g gVar = aVar2.d;
                    if (gVar.f1985a == -1 || !a(this.e, aVar2.f1945a, gVar)) {
                        bVar.f1978b.setText(new g(this.e, -1, (String) null).a());
                        bVar.f1978b.setTextColor(2131034371);
                    } else {
                        g gVar2 = this.f1971a.get(i).d;
                        bVar.f1978b.setText(gVar2.a() + " " + gVar2.b().replaceAll(" ", BuildConfig.FLAVOR));
                        bVar.f1978b.setTextColor(Color.argb(255, 19, 171, 235));
                    }
                    view.setTag(bVar);
                    bVar.d.setTag(new Integer(i));
                    bVar.d.setOnClickListener(this.d);
                    ((EditContactsActivity) this.e).a(false);
                    break;
                }
            default:
                view = null;
                break;
        }
        return view;
    }
}
