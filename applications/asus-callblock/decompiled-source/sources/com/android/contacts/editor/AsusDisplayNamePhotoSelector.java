package com.android.contacts.editor;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListPopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.vcard.SelectAccountActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/AsusDisplayNamePhotoSelector.class */
public class AsusDisplayNamePhotoSelector extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    AsusDisplayNamePhotoData f1094a;

    /* renamed from: b  reason: collision with root package name */
    ArrayList<Long> f1095b;
    ImageView c;
    b d;
    ArrayList<Long> e;
    private RawContactDeltaList h;
    private ArrayList<CharSequence> i;
    private Spinner j;
    private a k;
    private ArrayList<Long> l;
    private String g = "AsusDisplayNamePhotoSelector";
    Map<Integer, Boolean> f = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/AsusDisplayNamePhotoSelector$a.class */
    public final class a extends ArrayAdapter<String> {

        /* renamed from: a  reason: collision with root package name */
        HashMap<Long, String> f1100a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        ArrayList<Long> f1101b = new ArrayList<>();

        public a(Context context) {
            super(context, 2131427386);
            setDropDownViewResource(Resources.getSystem().getIdentifier("simple_spinner_dropdown_item", "layout", "android"));
        }

        private static void a(Uri.Builder builder, String str, String str2) {
            if (!TextUtils.isEmpty(str2)) {
                builder.appendQueryParameter(str, str2);
            }
        }

        final String a(RawContactDelta.ValuesDelta valuesDelta) {
            String str = null;
            str = null;
            if (valuesDelta != null) {
                String a2 = valuesDelta.a("data4");
                String a3 = valuesDelta.a(CoverUtils.CoverData.COVER_TYPE);
                String a4 = valuesDelta.a("data5");
                String a5 = valuesDelta.a(CoverUtils.CoverData.USER_SET);
                String a6 = valuesDelta.a("data6");
                Uri.Builder appendPath = ContactsContract.AUTHORITY_URI.buildUpon().appendPath("complete_name");
                a(appendPath, "data4", a2);
                a(appendPath, CoverUtils.CoverData.COVER_TYPE, a3);
                a(appendPath, "data5", a4);
                a(appendPath, CoverUtils.CoverData.USER_SET, a5);
                a(appendPath, "data6", a6);
                Cursor query = getContext().getContentResolver().query(appendPath.build(), new String[]{CoverUtils.CoverData.COVER_URI}, null, null, null);
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(0);
                    }
                } finally {
                    query.close();
                }
            }
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/AsusDisplayNamePhotoSelector$b.class */
    public final class b extends BaseAdapter {
        private LayoutInflater c;

        /* renamed from: b  reason: collision with root package name */
        private HashMap<Long, Bitmap> f1103b = new HashMap<>();
        private ArrayList<Bitmap> d = new ArrayList<>();

        public b() {
            this.c = (LayoutInflater) AsusDisplayNamePhotoSelector.this.getContext().getSystemService("layout_inflater");
        }

        public final Bitmap a(int i) {
            return (i < 0 || i >= this.d.size()) ? null : this.d.get(i);
        }

        public final void a() {
            synchronized (AsusDisplayNamePhotoSelector.this.l) {
                this.d.clear();
                this.f1103b.clear();
                AsusDisplayNamePhotoSelector.this.l.clear();
                AsusDisplayNamePhotoSelector.this.e.clear();
                if (AsusDisplayNamePhotoSelector.this.h != null) {
                    int size = AsusDisplayNamePhotoSelector.this.h.size();
                    for (int i = 0; i < size; i++) {
                        RawContactDelta rawContactDelta = AsusDisplayNamePhotoSelector.this.h.get(i);
                        RawContactDelta.ValuesDelta a2 = rawContactDelta.a("vnd.android.cursor.item/photo");
                        RawContactDelta.ValuesDelta valuesDelta = rawContactDelta.f1987a;
                        if (!(a2 == null || valuesDelta == null)) {
                            byte[] c = a2.c("data15");
                            Log.e(AsusDisplayNamePhotoSelector.this.g, "valuesPhoto.getAsLong(Photo.PHOTO_FILE_ID)=" + a2.d("data14"));
                            if (AsusDisplayNamePhotoSelector.this.f.containsKey(Integer.valueOf(i))) {
                                AsusDisplayNamePhotoSelector.this.l.add(-1L);
                            } else {
                                AsusDisplayNamePhotoSelector.this.l.add(a2.d("data14"));
                            }
                            AsusDisplayNamePhotoSelector.this.e.add(a2.d("_id"));
                            this.f1103b.put(Long.valueOf(valuesDelta.d("_id").longValue()), c != null ? BitmapFactory.decodeByteArray(c, 0, c.length) : BitmapFactory.decodeResource(AsusDisplayNamePhotoSelector.this.getContext().getResources(), 2131165278));
                        }
                    }
                }
                if (AsusDisplayNamePhotoSelector.this.f1095b != null && AsusDisplayNamePhotoSelector.this.f1095b.size() > 0) {
                    Iterator it = AsusDisplayNamePhotoSelector.this.f1095b.iterator();
                    while (it.hasNext()) {
                        Bitmap bitmap = this.f1103b.get(Long.valueOf(((Long) it.next()).longValue()));
                        if (bitmap != null) {
                            this.d.add(bitmap);
                        } else {
                            this.d.add(BitmapFactory.decodeResource(AsusDisplayNamePhotoSelector.this.getContext().getResources(), 2131165278));
                        }
                    }
                }
                notifyDataSetChanged();
            }
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return AsusDisplayNamePhotoSelector.this.f1095b.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = this.c.inflate(2131427387, viewGroup, false);
            }
            ((ImageView) view2.findViewById(2131296754)).setImageBitmap(this.d.get(i));
            ((TextView) view2.findViewById(2131296753)).setText((CharSequence) AsusDisplayNamePhotoSelector.this.i.get(i));
            return view2;
        }
    }

    public AsusDisplayNamePhotoSelector(Context context) {
        super(context);
    }

    public AsusDisplayNamePhotoSelector(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AsusDisplayNamePhotoSelector(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void a() {
        if (this.d == null) {
            this.d = new b();
        }
        if (this.k == null) {
            this.k = new a(getContext());
        }
        a aVar = this.k;
        aVar.clear();
        aVar.f1100a.clear();
        aVar.f1101b.clear();
        if (AsusDisplayNamePhotoSelector.this.h != null) {
            int size = AsusDisplayNamePhotoSelector.this.h.size();
            for (int i = 0; i < size; i++) {
                RawContactDelta rawContactDelta = AsusDisplayNamePhotoSelector.this.h.get(i);
                RawContactDelta.ValuesDelta a2 = rawContactDelta.a("vnd.android.cursor.item/name");
                RawContactDelta.ValuesDelta valuesDelta = rawContactDelta.f1987a;
                if (!(a2 == null || valuesDelta == null)) {
                    String a3 = aVar.a(a2);
                    String str = a3;
                    if (a3 == null) {
                        str = a2.a(CoverUtils.CoverData.COVER_URI);
                    }
                    aVar.f1100a.put(Long.valueOf(valuesDelta.d("_id").longValue()), str);
                }
            }
        }
        if (AsusDisplayNamePhotoSelector.this.f1095b != null && AsusDisplayNamePhotoSelector.this.f1095b.size() > 0) {
            Iterator<Long> it = AsusDisplayNamePhotoSelector.this.f1095b.iterator();
            while (it.hasNext()) {
                long longValue = it.next().longValue();
                String str2 = aVar.f1100a.get(Long.valueOf(longValue));
                if (str2 != null) {
                    aVar.add(str2);
                    aVar.f1101b.add(Long.valueOf(longValue));
                }
            }
        }
        aVar.notifyDataSetChanged();
        this.j.setAdapter((SpinnerAdapter) this.k);
        this.j.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.android.contacts.editor.AsusDisplayNamePhotoSelector.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                if (i2 >= 0 && i2 < AsusDisplayNamePhotoSelector.this.f1095b.size()) {
                    AsusDisplayNamePhotoData asusDisplayNamePhotoData = AsusDisplayNamePhotoSelector.this.f1094a;
                    a aVar2 = AsusDisplayNamePhotoSelector.this.k;
                    asusDisplayNamePhotoData.f1093b = (i2 < 0 || i2 >= aVar2.f1101b.size()) ? -1L : aVar2.f1101b.get(i2).longValue();
                    AsusDisplayNamePhotoSelector.this.f1094a.f1092a = true;
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        int i2 = 0;
        while (true) {
            if (i2 >= this.f1095b.size()) {
                break;
            } else if (this.f1094a.f1093b == this.f1095b.get(i2).longValue()) {
                a aVar2 = this.k;
                long j = this.f1094a.f1093b;
                int i3 = 0;
                while (true) {
                    if (i3 >= aVar2.f1101b.size()) {
                        i3 = 0;
                        break;
                    } else if (j == aVar2.f1101b.get(i3).longValue()) {
                        break;
                    } else {
                        i3++;
                    }
                }
                this.j.setSelection(i3);
            } else {
                i2++;
            }
        }
        this.c.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.AsusDisplayNamePhotoSelector.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AsusDisplayNamePhotoSelector.this.d.a();
                final ListPopupWindow listPopupWindow = new ListPopupWindow(AsusDisplayNamePhotoSelector.this.getContext(), null);
                listPopupWindow.setWidth(AsusDisplayNamePhotoSelector.this.getContext().getResources().getDimensionPixelSize(2131099794));
                listPopupWindow.setAnchorView(AsusDisplayNamePhotoSelector.this.c);
                listPopupWindow.setAdapter(AsusDisplayNamePhotoSelector.this.d);
                listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.contacts.editor.AsusDisplayNamePhotoSelector.2.1
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView<?> adapterView, View view2, int i4, long j2) {
                        listPopupWindow.dismiss();
                        AsusDisplayNamePhotoSelector.this.f1094a.c = ((Long) AsusDisplayNamePhotoSelector.this.f1095b.get(i4)).longValue();
                        AsusDisplayNamePhotoSelector.this.c.setImageBitmap(AsusDisplayNamePhotoSelector.this.d.a(i4));
                        AsusDisplayNamePhotoSelector.this.f1094a.f1092a = true;
                        synchronized (AsusDisplayNamePhotoSelector.this.l) {
                            if (AsusDisplayNamePhotoSelector.this.l.size() < i4) {
                                Log.d(AsusDisplayNamePhotoSelector.this.g, "PhotoIdList IndexOutOfBoundsException: PhotoIdList.size = " + AsusDisplayNamePhotoSelector.this.l.size() + " position = " + i4);
                            } else if (AsusDisplayNamePhotoSelector.this.l.get(i4) != null) {
                                AsusDisplayNamePhotoSelector.this.f1094a.e = ((Long) AsusDisplayNamePhotoSelector.this.l.get(i4)).longValue();
                                Log.e(AsusDisplayNamePhotoSelector.this.g, "AsusDisplayNamePhotoSelector set FullSizePhotoId to" + AsusDisplayNamePhotoSelector.this.f1094a.e);
                            } else {
                                AsusDisplayNamePhotoSelector.this.f1094a.e = -1L;
                                Log.e(AsusDisplayNamePhotoSelector.this.g, "AsusDisplayNamePhotoSelector set FullSizePhotoId to -1");
                            }
                            if (AsusDisplayNamePhotoSelector.this.e.size() < i4) {
                                Log.d(AsusDisplayNamePhotoSelector.this.g, "mDisplayPhotoIdList IndexOutOfBoundsException: mDisplayPhotoIdList.size = " + AsusDisplayNamePhotoSelector.this.e.size() + " position = " + i4);
                            } else if (AsusDisplayNamePhotoSelector.this.e.get(i4) != null) {
                                AsusDisplayNamePhotoSelector.this.f1094a.d = ((Long) AsusDisplayNamePhotoSelector.this.e.get(i4)).longValue();
                                Log.e(AsusDisplayNamePhotoSelector.this.g, "AsusDisplayNamePhotoSelector set DisplayPhotoId to" + AsusDisplayNamePhotoSelector.this.f1094a.d);
                            } else {
                                Log.e("TAG", "mDisplayPhotoIdList.get(position) == null");
                            }
                        }
                    }
                });
                listPopupWindow.setModal(true);
                listPopupWindow.show();
            }
        });
        this.d.a();
        synchronized (this.l) {
            int i4 = 0;
            for (int i5 = 0; i5 < this.e.size(); i5++) {
                if (this.e.get(i5).longValue() == this.f1094a.d) {
                    i4 = i5;
                }
            }
            this.c.setImageBitmap(this.d.a(i4));
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        this.j = (Spinner) findViewById(2131297325);
        this.c = (ImageView) findViewById(2131296946);
    }

    public void setState(RawContactDeltaList rawContactDeltaList, AsusDisplayNamePhotoData asusDisplayNamePhotoData) {
        this.h = rawContactDeltaList;
        this.f1094a = asusDisplayNamePhotoData;
        if (this.f1095b == null) {
            this.f1095b = new ArrayList<>();
        } else {
            this.f1095b.clear();
        }
        if (this.i == null) {
            this.i = new ArrayList<>();
        } else {
            this.i.clear();
        }
        if (this.l == null) {
            this.l = new ArrayList<>();
        } else {
            this.l.clear();
        }
        if (this.e == null) {
            this.e = new ArrayList<>();
        } else {
            this.e.clear();
        }
        com.android.contacts.model.a a2 = com.android.contacts.model.a.a(getContext());
        int size = this.h.size();
        for (int i = 0; i < size; i++) {
            RawContactDelta.ValuesDelta valuesDelta = this.h.get(i).f1987a;
            if (valuesDelta.b()) {
                String a3 = valuesDelta.a(SelectAccountActivity.ACCOUNT_TYPE);
                String a4 = valuesDelta.a(SelectAccountActivity.DATA_SET);
                this.f1095b.add(Long.valueOf(valuesDelta.d("_id").longValue()));
                this.i.add(a2.a(a3, a4).a(getContext()));
            }
        }
        a();
    }
}
