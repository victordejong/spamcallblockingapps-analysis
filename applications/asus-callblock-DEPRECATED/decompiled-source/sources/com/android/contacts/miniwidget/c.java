package com.android.contacts.miniwidget;

import android.annotation.SuppressLint;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Message;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.android.contacts.miniwidget.AddContactsActivity;
import com.android.contacts.preference.ContactsPreferences;
import com.asus.updatesdk.R;
import com.uservoice.uservoicesdk.d;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
@SuppressLint({"ResourceAsColor"})
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/c.class */
public final class c extends BaseAdapter implements SectionIndexer {
    private ArrayList<AddContactsActivity.a> d;
    private Context e;
    private final int k;
    private int l;
    private final String h = ContactsPreferences.DISPLAY_ORDER_KEY;
    private final int i = 1;
    private final int j = 2;

    /* renamed from: a  reason: collision with root package name */
    Map<Long, Boolean> f1964a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public Object f1965b = new Object();
    View.OnClickListener c = new View.OnClickListener() { // from class: com.android.contacts.miniwidget.c.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    };
    private int f = 0;
    private int g = a();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/c$a.class */
    private final class a {

        /* renamed from: a  reason: collision with root package name */
        TextView f1967a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f1968b;
        TextView c;
        CheckedTextView d;
        View e;
        View f;

        private a() {
        }

        /* synthetic */ a(c cVar, byte b2) {
            this();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/c$b.class */
    private final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private int f1970b;
        private Context c;
        private int d = 0;
        private long e;

        public b(int i, Context context, long j) {
            this.f1970b = i;
            this.c = context;
            this.e = j;
        }

        @Override // java.lang.Runnable
        public final void run() {
            InputStream inputStream = null;
            try {
                InputStream openContactPhotoInputStream = ContactsContract.Contacts.openContactPhotoInputStream(this.c.getContentResolver(), ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, ((AddContactsActivity.a) c.this.d.get(this.f1970b)).f1911a));
                if (openContactPhotoInputStream != null) {
                    Bitmap decodeStream = BitmapFactory.decodeStream(openContactPhotoInputStream);
                    Message obtain = Message.obtain();
                    if (this.d == 0) {
                        obtain.what = 1;
                    } else {
                        obtain.what = 2;
                    }
                    Bundle bundle = new Bundle();
                    bundle.putInt("position", this.f1970b);
                    bundle.putParcelable("photo", decodeStream);
                    bundle.putLong("contactId", this.e);
                    obtain.setData(bundle);
                    inputStream = openContactPhotoInputStream;
                    ((AddContactsActivity) this.c).a(obtain);
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

    public c(Context context, ArrayList<AddContactsActivity.a> arrayList) {
        this.d = arrayList;
        this.e = context;
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
        char[] cArr2 = ((AddContactsActivity) this.e).c;
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

    private int b() {
        return this.e.getResources().getBoolean(2130968582) ? 1 : 2;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.d.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.d.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return this.d.get(i).f1911a;
    }

    @Override // android.widget.SectionIndexer
    public final int getPositionForSection(int i) {
        AddContactsActivity addContactsActivity = (AddContactsActivity) this.e;
        ArrayList<Integer> arrayList = addContactsActivity.f1908b;
        if (i >= addContactsActivity.f1908b.size()) {
            i = addContactsActivity.f1908b.size() - 1;
        }
        return arrayList.get(i).intValue();
    }

    @Override // android.widget.SectionIndexer
    public final int getSectionForPosition(int i) {
        return this.d.get(i).g;
    }

    @Override // android.widget.SectionIndexer
    public final Object[] getSections() {
        return ((AddContactsActivity) this.e).f1907a;
    }

    @Override // android.widget.Adapter
    @SuppressLint({"ResourceAsColor", "ResourceAsColor", "ResourceAsColor"})
    public final View getView(int i, View view, ViewGroup viewGroup) {
        a aVar;
        AddContactsActivity.a aVar2 = this.d.get(i);
        switch (this.f) {
            case 0:
                if (!aVar2.c()) {
                    view = new View(this.e);
                    break;
                } else {
                    if (view == null) {
                        view = LayoutInflater.from(this.e).inflate(2131427341, (ViewGroup) null);
                        aVar = new a(this, (byte) 0);
                        aVar.f1968b = (ImageView) view.findViewById(2131297153);
                        aVar.f1967a = (TextView) view.findViewById(d.b.g);
                        aVar.c = (TextView) view.findViewById(2131296982);
                        aVar.d = (CheckedTextView) view.findViewById(R.id.checkbox);
                        aVar.e = view.findViewById(2131296971);
                        aVar.f = view.findViewById(2131296984);
                    } else {
                        aVar = (a) view.getTag();
                        if (aVar == null) {
                            view = LayoutInflater.from(this.e).inflate(2131427341, (ViewGroup) null);
                            aVar = new a(this, (byte) 0);
                            aVar.f1968b = (ImageView) view.findViewById(2131297153);
                            aVar.f1967a = (TextView) view.findViewById(d.b.g);
                            aVar.c = (TextView) view.findViewById(2131296982);
                            aVar.d = (CheckedTextView) view.findViewById(R.id.checkbox);
                            aVar.e = view.findViewById(2131296971);
                            aVar.f = view.findViewById(2131296984);
                        }
                    }
                    int intValue = ((Integer) AddContactsActivity.this.f1908b.get(aVar2.g)).intValue();
                    while (true) {
                        if (intValue <= i) {
                            if (this.d.get(intValue).c()) {
                                if (intValue != i) {
                                    aVar.f.setVisibility(8);
                                } else if (AddContactsActivity.this.j) {
                                    aVar.f.setVisibility(8);
                                } else {
                                    aVar.f.setVisibility(0);
                                    aVar.c.setText(this.d.get(i).f);
                                    aVar.c.setOnClickListener(this.c);
                                }
                            }
                            intValue++;
                        }
                    }
                    aVar.e.setBackgroundResource(2131165897);
                    if (this.g == 1) {
                        aVar.f1967a.setText(aVar2.a());
                        a(aVar.f1967a, aVar2.a().toCharArray());
                    } else {
                        aVar.f1967a.setText(aVar2.b());
                        a(aVar.f1967a, aVar2.b().toCharArray());
                    }
                    if (!com.android.contacts.simcardmanage.b.a(this.e) || aVar2.m <= 0) {
                        if (aVar2.m == 1) {
                            aVar.f1968b.setImageResource(2131165377);
                        } else {
                            aVar2.k = aVar.f1968b;
                            aVar2.k.setTag(Long.valueOf(aVar2.f1911a));
                            if (aVar2.n == null) {
                                aVar.f1968b.setImageResource(2131165278);
                                new Thread(new b(i, this.e, aVar2.f1911a)).start();
                            } else {
                                aVar2.a(aVar2.n);
                            }
                        }
                    } else if (aVar2.m == 2) {
                        aVar.f1968b.setImageResource(2131165379);
                    } else {
                        aVar.f1968b.setImageResource(2131165378);
                    }
                    if (aVar.d != null) {
                        if (this.f1964a.get(Long.valueOf(aVar2.f1911a)) == null) {
                            aVar.d.setChecked(false);
                            synchronized (this.f1965b) {
                                this.f1964a.put(Long.valueOf(aVar2.f1911a), false);
                            }
                        } else if (this.f1964a.get(Long.valueOf(aVar2.f1911a)).booleanValue()) {
                            aVar.d.setChecked(true);
                        } else {
                            aVar.d.setChecked(false);
                        }
                    }
                    view.setTag(aVar);
                    break;
                }
            default:
                view = null;
                break;
        }
        return view;
    }
}
