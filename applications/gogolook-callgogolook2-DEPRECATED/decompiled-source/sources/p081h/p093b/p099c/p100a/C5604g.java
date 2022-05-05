package p081h.p093b.p099c.p100a;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p081h.p093b.p099c.p100a.C5579b;
import p081h.p093b.p099c.p100a.C5592d;
import p081h.p093b.p099c.p100a.C5600f;
/* renamed from: h.b.c.a.g */
/* loaded from: classes-dex2jar.jar:h/b/c/a/g.class */
public class C5604g extends CursorAdapter {

    /* renamed from: g */
    public static final Map<String, String> f13998g = new HashMap();

    /* renamed from: a */
    public final long f13999a;

    /* renamed from: b */
    public int f14000b = -1;

    /* renamed from: c */
    public AbstractC5605a f14001c;

    /* renamed from: d */
    public final Long f14002d;

    /* renamed from: e */
    public C5592d f14003e;

    /* renamed from: f */
    public final StateListDrawable f14004f;

    /* renamed from: h.b.c.a.g$a */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/g$a.class */
    public interface AbstractC5605a {
        /* renamed from: a */
        void mo25042a(int i);
    }

    /* renamed from: h.b.c.a.g$b */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/g$b.class */
    public interface AbstractC5606b {
        /* renamed from: a */
        void mo25041a(Map<String, C5607h> map);

        /* renamed from: a */
        void mo25040a(Set<String> set);
    }

    public C5604g(Context context, long j, Long l, String str, long j2, int i, AbstractC5605a aVar, C5592d dVar, StateListDrawable stateListDrawable) {
        super(context, m25051a(context, j, l, str, i), 0);
        this.f13999a = j2;
        this.f14002d = l;
        this.f14001c = aVar;
        this.f14003e = dVar;
        this.f14004f = stateListDrawable;
    }

    /* renamed from: a */
    public static Cursor m25051a(Context context, long j, Long l, String str, int i) {
        Cursor cursor;
        Uri uri;
        Uri uri2;
        String str2 = null;
        str2 = null;
        if (i == 0) {
            if (l == null || str == null) {
                uri2 = C5600f.f13994b.m25054b();
            } else {
                Uri.Builder buildUpon = ContactsContract.Contacts.getLookupUri(j, str).buildUpon();
                buildUpon.appendPath("entities").appendQueryParameter("directory", String.valueOf(l));
                uri2 = buildUpon.build();
                str2 = "vnd.android.cursor.item/email_v2";
            }
            cursor = context.getContentResolver().query(uri2, C5600f.f13994b.m25053c(), C5600f.f13994b.m25053c()[4] + " = ?", new String[]{String.valueOf(j)}, null);
        } else {
            if (str == null) {
                uri = C5600f.f13993a.m25054b();
            } else {
                Uri.Builder buildUpon2 = ContactsContract.Contacts.getLookupUri(j, str).buildUpon();
                buildUpon2.appendPath("entities").appendQueryParameter("directory", String.valueOf(l));
                uri = buildUpon2.build();
                str2 = "vnd.android.cursor.item/phone_v2";
            }
            cursor = context.getContentResolver().query(uri, C5600f.f13993a.m25053c(), C5600f.f13993a.m25053c()[4] + " = ?", new String[]{String.valueOf(j)}, null);
        }
        Cursor a = m25046a(cursor, str2, str);
        cursor.close();
        return a;
    }

    /* renamed from: a */
    public static Cursor m25046a(Cursor cursor, String str, String str2) {
        String str3;
        String str4;
        int i;
        MatrixCursor matrixCursor = new MatrixCursor(cursor.getColumnNames(), cursor.getCount());
        HashSet hashSet = new HashSet();
        cursor.moveToPosition(-1);
        while (true) {
            str3 = null;
            if (cursor.moveToNext()) {
                if ("vnd.android.cursor.item/name".equals(cursor.getString(9))) {
                    str3 = cursor.getString(0);
                    str4 = cursor.getString(6);
                    i = cursor.getInt(7);
                    break;
                }
            } else {
                str4 = null;
                i = 0;
                break;
            }
        }
        cursor.moveToPosition(-1);
        while (cursor.moveToNext()) {
            if (str == null || str.equals(cursor.getString(9))) {
                String string = cursor.getString(1);
                if (!hashSet.contains(string)) {
                    hashSet.add(string);
                    Object[] objArr = {cursor.getString(0), cursor.getString(1), Integer.valueOf(cursor.getInt(2)), cursor.getString(3), Long.valueOf(cursor.getLong(4)), Long.valueOf(cursor.getLong(5)), cursor.getString(6), Integer.valueOf(cursor.getInt(7)), cursor.getString(8), cursor.getString(9)};
                    if (objArr[0] == null) {
                        objArr[0] = str3;
                    }
                    if (objArr[6] == null) {
                        objArr[6] = str4;
                    }
                    if (((Integer) objArr[7]).intValue() == 0) {
                        objArr[7] = Integer.valueOf(i);
                    }
                    if (objArr[8] == null) {
                        objArr[8] = str2;
                    }
                    String str5 = (String) objArr[6];
                    if (str5 != null) {
                        if (f13998g.containsKey(str5)) {
                            objArr[6] = f13998g.get(str5);
                        } else if (str5.indexOf(63) != str5.lastIndexOf(63)) {
                            String[] split = str5.split("\\?");
                            StringBuilder sb = new StringBuilder();
                            for (int i2 = 0; i2 < split.length; i2++) {
                                if (i2 == 1) {
                                    sb.append("?");
                                } else if (i2 > 1) {
                                    sb.append(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR);
                                }
                                sb.append(split[i2]);
                            }
                            String sb2 = sb.toString();
                            f13998g.put(str5, sb2);
                            objArr[6] = sb2;
                        }
                    }
                    matrixCursor.addRow(objArr);
                }
            }
        }
        return matrixCursor;
    }

    /* renamed from: a */
    public static Cursor m25043a(CharSequence charSequence, int i, Long l, Account account, ContentResolver contentResolver, C5600f.AbstractC5603c cVar) {
        Uri.Builder appendQueryParameter = cVar.m25056a().buildUpon().appendPath(charSequence.toString()).appendQueryParameter("limit", String.valueOf(i + 5));
        if (l != null) {
            appendQueryParameter.appendQueryParameter("directory", String.valueOf(l));
        }
        if (account != null) {
            appendQueryParameter.appendQueryParameter("name_for_primary_account", account.name);
            appendQueryParameter.appendQueryParameter("type_for_primary_account", account.type);
        }
        return contentResolver.query(appendQueryParameter.build(), cVar.m25053c(), null, null, null);
    }

    /* renamed from: a */
    public static C5607h m25044a(C5607h hVar, C5607h hVar2) {
        if (hVar2 == null) {
            return hVar;
        }
        if (hVar == null) {
            return hVar2;
        }
        if (!TextUtils.isEmpty(hVar.m25023g()) && TextUtils.isEmpty(hVar2.m25023g())) {
            return hVar;
        }
        if (!TextUtils.isEmpty(hVar2.m25023g()) && TextUtils.isEmpty(hVar.m25023g())) {
            return hVar2;
        }
        if (!TextUtils.equals(hVar.m25023g(), hVar.m25027c()) && TextUtils.equals(hVar2.m25023g(), hVar2.m25027c())) {
            return hVar;
        }
        if (!TextUtils.equals(hVar2.m25023g(), hVar2.m25027c()) && TextUtils.equals(hVar.m25023g(), hVar.m25027c())) {
            return hVar2;
        }
        if ((hVar.m25019k() != null || hVar.m25020j() != null) && hVar2.m25019k() == null && hVar2.m25020j() == null) {
            return hVar;
        }
        if (!(hVar2.m25019k() == null && hVar2.m25020j() == null) && hVar.m25019k() == null && hVar.m25020j() == null) {
        }
        return hVar2;
    }

    /* renamed from: a */
    public static HashMap<String, C5607h> m25047a(Cursor cursor, Long l) {
        HashMap<String, C5607h> hashMap = new HashMap<>();
        if (cursor == null || !cursor.moveToFirst()) {
            return hashMap;
        }
        do {
            String string = cursor.getString(1);
            hashMap.put(string, m25044a(hashMap.get(string), C5607h.m25029b(cursor.getString(0), cursor.getInt(7), cursor.getString(1), cursor.getInt(2), cursor.getString(3), cursor.getLong(4), l, cursor.getLong(5), cursor.getString(6), true, cursor.getString(8))));
            if (Log.isLoggable("RecipAlternates", 3)) {
                String str = "Received reverse look up information for " + string + " RESULTS:  NAME : " + cursor.getString(0) + " CONTACT ID : " + cursor.getLong(4) + " ADDRESS :" + cursor.getString(1);
            }
        } while (cursor.moveToNext());
        return hashMap;
    }

    /* renamed from: a */
    public static void m25050a(Context context, C5579b bVar, ArrayList<String> arrayList, int i, Account account, AbstractC5606b bVar2) {
        Throwable th;
        Cursor query;
        C5600f.AbstractC5603c cVar = i == 0 ? C5600f.f13994b : C5600f.f13993a;
        int min = Math.min(50, arrayList.size());
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < min; i2++) {
            Rfc822Token[] rfc822TokenArr = Rfc822Tokenizer.tokenize(arrayList.get(i2).toLowerCase());
            hashSet.add(rfc822TokenArr.length > 0 ? rfc822TokenArr[0].getAddress() : arrayList.get(i2));
            sb.append("?");
            if (i2 < min - 1) {
                sb.append(",");
            }
        }
        if (Log.isLoggable("RecipAlternates", 3)) {
            String str = "Doing reverse lookup for " + hashSet.toString();
        }
        String[] strArr = new String[hashSet.size()];
        hashSet.toArray(strArr);
        Cursor cursor = null;
        try {
            query = context.getContentResolver().query(cVar.m25054b(), cVar.m25053c(), cVar.m25053c()[1] + " IN (" + sb.toString() + ")", strArr, null);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            HashMap<String, C5607h> a = m25047a(query, (Long) null);
            bVar2.mo25041a(a);
            if (query != null) {
                query.close();
            }
            HashSet hashSet2 = new HashSet();
            m25048a(context, a, hashSet, account, hashSet2, cVar, bVar2);
            m25045a(bVar, hashSet2, bVar2);
        } catch (Throwable th3) {
            th = th3;
            cursor = query;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static void m25049a(Context context, C5579b bVar, ArrayList<String> arrayList, Account account, AbstractC5606b bVar2) {
        m25050a(context, bVar, arrayList, 0, account, bVar2);
    }

    /* renamed from: a */
    public static void m25048a(Context context, Map<String, C5607h> map, Set<String> set, Account account, Set<String> set2, C5600f.AbstractC5603c cVar, AbstractC5606b bVar) {
        Throwable th;
        List<C5579b.C5586g> a;
        Long l;
        int count;
        if (map.size() < set.size()) {
            Cursor cursor = null;
            try {
                Cursor cursor2 = context.getContentResolver().query(C5579b.C5585f.f13949a, C5579b.C5585f.f13950b, null, null, null);
                if (cursor2 == null) {
                    a = null;
                } else {
                    try {
                        a = C5579b.m25116a(context, cursor2, account);
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = cursor2;
                        if (cursor2 != null) {
                        }
                        throw th;
                    }
                }
                if (cursor2 != null) {
                }
                HashSet hashSet = new HashSet();
                for (String str : set) {
                    if (!map.containsKey(str)) {
                        hashSet.add(str);
                    }
                }
                set2.addAll(hashSet);
                if (a != null) {
                    Iterator it = hashSet.iterator();
                    cursor2 = null;
                    while (it.hasNext()) {
                        String str2 = (String) it.next();
                        int i = 0;
                        while (i < a.size()) {
                            try {
                                Cursor a2 = m25043a(str2, 1, Long.valueOf(a.get(i).f13951a), account, context.getContentResolver(), cVar);
                                if (a2 == null || a2.getCount() != 0) {
                                    cursor2 = a2;
                                    l = Long.valueOf(a.get(i).f13951a);
                                    break;
                                }
                                a2.close();
                                i++;
                                cursor2 = null;
                            } finally {
                                if (cursor2 != null) {
                                    if (count == 0) {
                                    }
                                }
                            }
                        }
                        l = null;
                        if (cursor2 != null) {
                            try {
                                HashMap<String, C5607h> a3 = m25047a(cursor2, l);
                                for (String str3 : a3.keySet()) {
                                    set2.remove(str3);
                                }
                                bVar.mo25041a(a3);
                            } finally {
                                cursor2.close();
                            }
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* renamed from: a */
    public static void m25045a(C5579b bVar, Set<String> set, AbstractC5606b bVar2) {
        Map<String, C5607h> a;
        if (!(bVar == null || (a = bVar.m25099a(set)) == null || a.size() <= 0)) {
            bVar2.mo25041a(a);
            for (String str : a.keySet()) {
                set.remove(str);
            }
        }
        bVar2.mo25040a(set);
    }

    /* renamed from: a */
    public C5607h m25052a(int i) {
        Cursor cursor = getCursor();
        cursor.moveToPosition(i);
        return C5607h.m25029b(cursor.getString(0), cursor.getInt(7), cursor.getString(1), cursor.getInt(2), cursor.getString(3), cursor.getLong(4), this.f14002d, cursor.getLong(5), cursor.getString(6), true, cursor.getString(8));
    }

    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        int position = cursor.getPosition();
        this.f14003e.mo7952a(view, null, m25052a(position), position, C5592d.EnumC5595c.RECIPIENT_ALTERNATES, null, this.f14004f);
    }

    @Override // android.widget.CursorAdapter, android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor = getCursor();
        if (!cursor.moveToPosition(i)) {
            return -1L;
        }
        cursor.getLong(5);
        return -1L;
    }

    @Override // android.widget.CursorAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        Cursor cursor = getCursor();
        cursor.moveToPosition(i);
        View view2 = view;
        if (view == null) {
            view2 = this.f14003e.m25064c(C5592d.EnumC5595c.RECIPIENT_ALTERNATES);
        }
        if (cursor.getLong(5) == this.f13999a) {
            this.f14000b = i;
            AbstractC5605a aVar = this.f14001c;
            if (aVar != null) {
                aVar.mo25042a(this.f14000b);
            }
        }
        bindView(view2, view2.getContext(), cursor);
        return view2;
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f14003e.m25064c(C5592d.EnumC5595c.RECIPIENT_ALTERNATES);
    }
}
