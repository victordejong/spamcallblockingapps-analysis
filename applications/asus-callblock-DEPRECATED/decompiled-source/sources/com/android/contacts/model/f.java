package com.android.contacts.model;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.provider.Contacts;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.editor.EventFieldEditorView;
import com.android.contacts.editor.PhoneticNameEditorView;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.a.b;
import com.android.contacts.model.a.o;
import com.android.contacts.model.account.a;
import com.android.contacts.q;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DateUtils;
import com.android.contacts.util.NameConverter;
import com.android.contacts.vcard.SelectAccountActivity;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2035a = f.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f2036b = new HashSet(Arrays.asList("vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/email_v2", "vnd.android.cursor.item/im", "vnd.android.cursor.item/nickname", "vnd.android.cursor.item/website", "vnd.android.cursor.item/relation", "vnd.android.cursor.item/sip_address"));
    private static final Set<String> c = new HashSet(Arrays.asList("vnd.android.cursor.item/organization", "vnd.android.cursor.item/note", "vnd.android.cursor.item/photo", "vnd.android.cursor.item/group_membership"));

    private static RawContactDelta.ValuesDelta a(RawContactDelta rawContactDelta, b bVar, Bundle bundle, String str, String str2, String str3) {
        RawContactDelta.ValuesDelta valuesDelta;
        int i = 0;
        CharSequence charSequence = bundle.getCharSequence(str2);
        if (bVar == null) {
            valuesDelta = null;
        } else {
            boolean a2 = a(rawContactDelta, bVar);
            if (!(charSequence != null && TextUtils.isGraphic(charSequence)) || !a2) {
                valuesDelta = null;
            } else {
                if (!bundle.containsKey(str)) {
                    i = Integer.MIN_VALUE;
                }
                a.d a3 = a(rawContactDelta, bVar, true, bundle.getInt(str, i));
                RawContactDelta.ValuesDelta b2 = b(rawContactDelta, bVar, a3);
                b2.a(str3, charSequence.toString());
                valuesDelta = b2;
                if (a3 != null) {
                    valuesDelta = b2;
                    if (a3.e != null) {
                        b2.a(a3.e, bundle.getString(str));
                        valuesDelta = b2;
                    }
                }
            }
        }
        return valuesDelta;
    }

    public static RawContactDelta.ValuesDelta a(RawContactDelta rawContactDelta, a aVar, String str) {
        RawContactDelta.ValuesDelta valuesDelta;
        b a2 = aVar.a(str);
        boolean z = rawContactDelta.b(str, true) > 0;
        if (a2 == null) {
            valuesDelta = null;
        } else if (z) {
            valuesDelta = rawContactDelta.a(str, false).get(0);
        } else {
            RawContactDelta.ValuesDelta b2 = b(rawContactDelta, a2);
            valuesDelta = b2;
            if (a2.f1997b.equals("vnd.android.cursor.item/photo")) {
                b2.e = true;
                valuesDelta = b2;
            }
        }
        return valuesDelta;
    }

    public static a.d a(RawContactDelta.ValuesDelta valuesDelta, b bVar) {
        a.d dVar;
        Long d = valuesDelta.d(bVar.l);
        if (d != null) {
            int intValue = d.intValue();
            Iterator<a.d> it = bVar.n.iterator();
            while (true) {
                if (!it.hasNext()) {
                    dVar = null;
                    break;
                }
                dVar = it.next();
                if (dVar.f2006a == intValue) {
                    break;
                }
            }
        } else {
            dVar = null;
        }
        return dVar;
    }

    private static a.d a(RawContactDelta rawContactDelta, b bVar, boolean z, int i) {
        a.d dVar;
        if (bVar == null) {
            dVar = null;
        } else {
            dVar = null;
            if (bVar.l != null) {
                SparseIntArray c2 = c(rawContactDelta, bVar);
                ArrayList<a.d> a2 = a(rawContactDelta, bVar, (a.d) null, z, c2);
                dVar = null;
                if (a2.size() != 0) {
                    dVar = a2.get(a2.size() - 1);
                    Iterator<a.d> it = a2.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            a.d next = it.next();
                            int i2 = c2.get(next.f2006a);
                            if (i == next.f2006a) {
                                dVar = next;
                                break;
                            } else if (i2 > 0) {
                                it.remove();
                            }
                        } else if (a2.size() > 0) {
                            dVar = a2.get(0);
                        }
                    }
                }
            }
        }
        return dVar;
    }

    public static ArrayList<a.d> a(RawContactDelta rawContactDelta, b bVar, a.d dVar) {
        return a(rawContactDelta, bVar, dVar, true, (SparseIntArray) null);
    }

    private static ArrayList<a.d> a(RawContactDelta rawContactDelta, b bVar, a.d dVar, boolean z, SparseIntArray sparseIntArray) {
        ArrayList<a.d> arrayList = new ArrayList<>();
        if (a(bVar)) {
            SparseIntArray sparseIntArray2 = sparseIntArray;
            if (sparseIntArray == null) {
                sparseIntArray2 = c(rawContactDelta, bVar);
            }
            int i = sparseIntArray2.get(Integer.MIN_VALUE);
            for (a.d dVar2 : bVar.n) {
                boolean z2 = bVar.m == -1 ? true : i < bVar.m;
                boolean z3 = dVar2.d == -1 ? true : sparseIntArray2.get(dVar2.f2006a) < dVar2.d;
                boolean z4 = z ? true : !dVar2.c;
                if (dVar2.equals(dVar) || (z2 && z3 && z4)) {
                    arrayList.add(dVar2);
                }
            }
        }
        return arrayList;
    }

    private static ArrayList<RawContactDelta.ValuesDelta> a(b bVar, ArrayList<RawContactDelta.ValuesDelta> arrayList) {
        ArrayList<RawContactDelta.ValuesDelta> arrayList2;
        if (arrayList == null) {
            arrayList2 = null;
        } else {
            int i = bVar.m;
            arrayList2 = arrayList;
            if (i >= 0) {
                arrayList2 = arrayList;
                if (arrayList.size() > i) {
                    arrayList2 = new ArrayList<>(i);
                    for (int i2 = 0; i2 < i; i2++) {
                        arrayList2.add(arrayList.get(i2));
                    }
                }
            }
        }
        return arrayList2;
    }

    private static void a(Context context, RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2, b bVar) {
        ContentValues g = rawContactDelta.a("vnd.android.cursor.item/name").g();
        if (g != null) {
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            boolean z5 = false;
            for (a.c cVar : bVar.o) {
                if (CoverUtils.CoverData.COVER_URI.equals(cVar.f2004a)) {
                    z5 = true;
                }
                if ("#phoneticName".equals(cVar.f2004a)) {
                    z4 = true;
                }
                if ("data9".equals(cVar.f2004a)) {
                    z3 = true;
                }
                if ("data8".equals(cVar.f2004a)) {
                    z2 = true;
                }
                if ("data7".equals(cVar.f2004a)) {
                    z = true;
                }
            }
            String asString = g.getAsString(CoverUtils.CoverData.COVER_URI);
            if (!TextUtils.isEmpty(asString)) {
                if (!z5) {
                    NameConverter.displayNameToStructuredName(context, asString, g);
                    g.remove(CoverUtils.CoverData.COVER_URI);
                }
            } else if (z5) {
                g.put(CoverUtils.CoverData.COVER_URI, NameConverter.structuredNameToDisplayName(context, g));
                for (String str : NameConverter.STRUCTURED_NAME_FIELDS) {
                    g.remove(str);
                }
            }
            String asString2 = g.getAsString("#phoneticName");
            if (TextUtils.isEmpty(asString2)) {
                if (z4) {
                    g.put("#phoneticName", PhoneticNameEditorView.a(g.getAsString("data9"), g.getAsString("data8"), g.getAsString("data7")));
                }
                if (!z3) {
                    g.remove("data9");
                }
                if (!z2) {
                    g.remove("data8");
                }
                if (!z) {
                    g.remove("data7");
                }
            } else if (!z4) {
                o a2 = PhoneticNameEditorView.a(asString2);
                g.remove("#phoneticName");
                if (z3) {
                    g.put("data9", a2.n());
                } else {
                    g.remove("data9");
                }
                if (z2) {
                    g.put("data8", a2.m());
                } else {
                    g.remove("data8");
                }
                if (z) {
                    g.put("data7", a2.l());
                } else {
                    g.remove("data7");
                }
            }
            rawContactDelta2.a(RawContactDelta.ValuesDelta.c(g));
        }
    }

    public static void a(Context context, RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2, a aVar, a aVar2) {
        if (aVar2 == aVar) {
            Iterator<b> it = aVar2.r().iterator();
            while (it.hasNext()) {
                b next = it.next();
                String str = next.f1997b;
                if ("vnd.android.cursor.item/name".equals(str)) {
                    a(context, rawContactDelta, rawContactDelta2, next);
                } else {
                    ArrayList<RawContactDelta.ValuesDelta> a2 = rawContactDelta.a(str, false);
                    if (a2 != null && !a2.isEmpty()) {
                        for (RawContactDelta.ValuesDelta valuesDelta : a2) {
                            ContentValues g = valuesDelta.g();
                            if (g != null) {
                                rawContactDelta2.a(RawContactDelta.ValuesDelta.c(g));
                            }
                        }
                    }
                }
            }
            return;
        }
        Iterator<b> it2 = aVar2.r().iterator();
        while (it2.hasNext()) {
            b next2 = it2.next();
            if (next2.g) {
                String str2 = next2.f1997b;
                if (!"#displayName".equals(str2) && !"#phoneticName".equals(str2)) {
                    if ("vnd.android.cursor.item/name".equals(str2)) {
                        a(context, rawContactDelta, rawContactDelta2, next2);
                    } else if ("vnd.android.cursor.item/postal-address_v2".equals(str2)) {
                        ArrayList<RawContactDelta.ValuesDelta> a3 = a(next2, rawContactDelta.a("vnd.android.cursor.item/postal-address_v2", false));
                        if (a3 != null && !a3.isEmpty()) {
                            boolean z = false;
                            boolean z2 = false;
                            String str3 = next2.o.get(0).f2004a;
                            for (a.c cVar : next2.o) {
                                if (CoverUtils.CoverData.COVER_URI.equals(cVar.f2004a)) {
                                    z = true;
                                }
                                if ("data4".equals(cVar.f2004a)) {
                                    z2 = true;
                                }
                            }
                            HashSet hashSet = new HashSet();
                            if (next2.n != null && !next2.n.isEmpty()) {
                                for (a.d dVar : next2.n) {
                                    hashSet.add(Integer.valueOf(dVar.f2006a));
                                }
                            }
                            Iterator<RawContactDelta.ValuesDelta> it3 = a3.iterator();
                            while (it3.hasNext()) {
                                ContentValues g2 = it3.next().g();
                                if (g2 != null) {
                                    Integer asInteger = g2.getAsInteger(CoverUtils.CoverData.COVER_TYPE);
                                    if (!hashSet.contains(asInteger)) {
                                        g2.put(CoverUtils.CoverData.COVER_TYPE, Integer.valueOf(next2.p != null ? next2.p.getAsInteger(CoverUtils.CoverData.COVER_TYPE).intValue() : next2.n.get(0).f2006a));
                                        if (asInteger != null && asInteger.intValue() == 0) {
                                            g2.remove(CoverUtils.CoverData.USER_SET);
                                        }
                                    }
                                    String asString = g2.getAsString(CoverUtils.CoverData.COVER_URI);
                                    if (!TextUtils.isEmpty(asString)) {
                                        if (!z) {
                                            g2.remove(CoverUtils.CoverData.COVER_URI);
                                            if (z2) {
                                                g2.put("data4", asString);
                                            } else {
                                                g2.put(str3, asString);
                                            }
                                        }
                                    } else if (z) {
                                        String[] strArr = Locale.JAPANESE.getLanguage().equals(Locale.getDefault().getLanguage()) ? new String[]{g2.getAsString("data10"), g2.getAsString("data9"), g2.getAsString("data8"), g2.getAsString("data7"), g2.getAsString("data6"), g2.getAsString("data4"), g2.getAsString("data5")} : new String[]{g2.getAsString("data5"), g2.getAsString("data4"), g2.getAsString("data6"), g2.getAsString("data7"), g2.getAsString("data8"), g2.getAsString("data9"), g2.getAsString("data10")};
                                        StringBuilder sb = new StringBuilder();
                                        for (int i = 0; i < 7; i++) {
                                            String str4 = strArr[i];
                                            if (!TextUtils.isEmpty(str4)) {
                                                sb.append(str4 + "\n");
                                            }
                                        }
                                        g2.put(CoverUtils.CoverData.COVER_URI, sb.toString());
                                        g2.remove("data5");
                                        g2.remove("data4");
                                        g2.remove("data6");
                                        g2.remove("data7");
                                        g2.remove("data8");
                                        g2.remove("data9");
                                        g2.remove("data10");
                                    }
                                    rawContactDelta2.a(RawContactDelta.ValuesDelta.c(g2));
                                }
                            }
                        }
                    } else if ("vnd.android.cursor.item/contact_event".equals(str2)) {
                        a(rawContactDelta, rawContactDelta2, next2, (Integer) null);
                    } else if (c.contains(str2)) {
                        a(rawContactDelta, rawContactDelta2, next2);
                    } else if (f2036b.contains(str2)) {
                        b(rawContactDelta, rawContactDelta2, next2);
                    } else {
                        throw new IllegalStateException("Unexpected editable mime-type: " + str2);
                    }
                }
            }
        }
    }

    public static void a(Context context, a aVar, RawContactDelta rawContactDelta, Bundle bundle) {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        boolean z4;
        String a2 = null;
        if (!(bundle == null || bundle.size() == 0)) {
            a(rawContactDelta, aVar, "vnd.android.cursor.item/name");
            RawContactDelta.ValuesDelta a3 = rawContactDelta.a("vnd.android.cursor.item/name");
            String string = bundle.getString(ContactDetailCallogActivity.EXTRA_NAME);
            if (q.a((CharSequence) string)) {
                b a4 = aVar.a("vnd.android.cursor.item/name");
                if (a4.o != null) {
                    for (a.c cVar : a4.o) {
                        if (CoverUtils.CoverData.COVER_URI.equals(cVar.f2004a)) {
                            z4 = true;
                            break;
                        }
                    }
                }
                z4 = false;
                if (z4) {
                    a3.a(CoverUtils.CoverData.COVER_URI, string);
                } else {
                    Cursor query = context.getContentResolver().query(ContactsContract.AUTHORITY_URI.buildUpon().appendPath("complete_name").appendQueryParameter(CoverUtils.CoverData.COVER_URI, string).build(), new String[]{"data4", CoverUtils.CoverData.COVER_TYPE, "data5", CoverUtils.CoverData.USER_SET, "data6"}, null, null, null);
                    try {
                        if (query.moveToFirst()) {
                            a3.a("data4", query.getString(0));
                            a3.a(CoverUtils.CoverData.COVER_TYPE, query.getString(1));
                            a3.a("data5", query.getString(2));
                            a3.a(CoverUtils.CoverData.USER_SET, query.getString(3));
                            a3.a("data6", query.getString(4));
                        }
                    } finally {
                        query.close();
                    }
                }
            }
            String string2 = bundle.getString("phonetic_name");
            if (q.a((CharSequence) string2)) {
                a3.a("data7", string2);
            }
            b a5 = aVar.a("vnd.android.cursor.item/postal-address_v2");
            RawContactDelta.ValuesDelta a6 = a(rawContactDelta, a5, bundle, "postal_type", "postal", CoverUtils.CoverData.COVER_URI);
            if (a6 != null) {
                a2 = a6.a(CoverUtils.CoverData.COVER_URI);
            }
            if (!TextUtils.isEmpty(a2)) {
                if (a5.o != null) {
                    for (a.c cVar2 : a5.o) {
                        if (CoverUtils.CoverData.COVER_URI.equals(cVar2.f2004a)) {
                            z3 = true;
                            break;
                        }
                    }
                }
                z3 = false;
                if (!z3) {
                    a6.a("data4", a2);
                    a6.g(CoverUtils.CoverData.COVER_URI);
                }
            }
            b a7 = aVar.a("vnd.android.cursor.item/phone_v2");
            a(rawContactDelta, a7, bundle, "phone_type", "phone", CoverUtils.CoverData.COVER_URI);
            a(rawContactDelta, a7, bundle, "secondary_phone_type", "secondary_phone", CoverUtils.CoverData.COVER_URI);
            a(rawContactDelta, a7, bundle, "tertiary_phone_type", "tertiary_phone", CoverUtils.CoverData.COVER_URI);
            b a8 = aVar.a("vnd.android.cursor.item/email_v2");
            a(rawContactDelta, a8, bundle, "email_type", "email", CoverUtils.CoverData.COVER_URI);
            a(rawContactDelta, a8, bundle, "secondary_email_type", "secondary_email", CoverUtils.CoverData.COVER_URI);
            a(rawContactDelta, a8, bundle, "tertiary_email_type", "tertiary_email", CoverUtils.CoverData.COVER_URI);
            b a9 = aVar.a("vnd.android.cursor.item/im");
            String string3 = bundle.getString("im_protocol");
            if (string3 != null) {
                try {
                    Object decodeImProtocol = Contacts.ContactMethods.decodeImProtocol(string3);
                    if (decodeImProtocol instanceof Integer) {
                        bundle.putInt("im_protocol", ((Integer) decodeImProtocol).intValue());
                    } else {
                        bundle.putString("im_protocol", (String) decodeImProtocol);
                    }
                } catch (IllegalArgumentException e) {
                }
            }
            a(rawContactDelta, a9, bundle, "im_protocol", "im_handle", CoverUtils.CoverData.COVER_URI);
            boolean z5 = bundle.containsKey("company") || bundle.containsKey("job_title");
            b a10 = aVar.a("vnd.android.cursor.item/organization");
            if (z5 && a10 != null && a(rawContactDelta, a10)) {
                RawContactDelta.ValuesDelta b2 = b(rawContactDelta, a10);
                String string4 = bundle.getString("company");
                if (q.a((CharSequence) string4)) {
                    b2.a(CoverUtils.CoverData.COVER_URI, string4);
                }
                String string5 = bundle.getString("job_title");
                if (q.a((CharSequence) string5)) {
                    b2.a("data4", string5);
                }
            }
            boolean containsKey = bundle.containsKey("notes");
            b a11 = aVar.a("vnd.android.cursor.item/note");
            if (containsKey && a11 != null && a(rawContactDelta, a11)) {
                RawContactDelta.ValuesDelta b3 = b(rawContactDelta, a11);
                String string6 = bundle.getString("notes");
                if (q.a((CharSequence) string6)) {
                    b3.a(CoverUtils.CoverData.COVER_URI, string6);
                }
            }
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("data");
            if (parcelableArrayList != null) {
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    ContentValues contentValues = (ContentValues) it.next();
                    String asString = contentValues.getAsString("mimetype");
                    if (TextUtils.isEmpty(asString)) {
                        Log.e(f2035a, "Mimetype is required. Ignoring: " + contentValues);
                    } else if (!"vnd.android.cursor.item/name".equals(asString)) {
                        b a12 = aVar.a(asString);
                        if (a12 == null) {
                            Log.e(f2035a, "Mimetype not supported for account type " + aVar.o() + ". Ignoring: " + contentValues);
                        } else {
                            RawContactDelta.ValuesDelta c2 = RawContactDelta.ValuesDelta.c(contentValues);
                            if (!b(c2, a12)) {
                                ArrayList<RawContactDelta.ValuesDelta> a13 = rawContactDelta.a(asString, false);
                                if (a12.m != 1 || "vnd.android.cursor.item/group_membership".equals(asString)) {
                                    if (a13 != null && a13.size() > 0) {
                                        Iterator<RawContactDelta.ValuesDelta> it2 = a13.iterator();
                                        i = 0;
                                        while (true) {
                                            if (!it2.hasNext()) {
                                                z = true;
                                                break;
                                            }
                                            RawContactDelta.ValuesDelta next = it2.next();
                                            if (!next.j()) {
                                                if (a(next, contentValues, a12)) {
                                                    z = false;
                                                    break;
                                                }
                                                i++;
                                            }
                                        }
                                    } else {
                                        z = true;
                                        i = 0;
                                    }
                                    boolean z6 = z;
                                    if (a12.m != -1) {
                                        z6 = z;
                                        if (i >= a12.m) {
                                            Log.e(f2035a, "Mimetype allows at most " + a12.m + " entries. Ignoring: " + contentValues);
                                            z6 = false;
                                        }
                                    }
                                    boolean z7 = z6;
                                    if (z6) {
                                        z7 = a(c2, a13, a12);
                                    }
                                    if (z7) {
                                        rawContactDelta.a(c2);
                                    }
                                } else {
                                    if (a13 == null || a13.size() <= 0) {
                                        z2 = true;
                                    } else {
                                        Iterator<RawContactDelta.ValuesDelta> it3 = a13.iterator();
                                        while (true) {
                                            if (!it3.hasNext()) {
                                                z2 = true;
                                                break;
                                            }
                                            RawContactDelta.ValuesDelta next2 = it3.next();
                                            if (!(next2.j() || b(next2, a12))) {
                                                z2 = false;
                                                break;
                                            }
                                        }
                                        if (z2) {
                                            Iterator<RawContactDelta.ValuesDelta> it4 = a13.iterator();
                                            while (it4.hasNext()) {
                                                it4.next().o();
                                            }
                                        }
                                    }
                                    boolean z8 = z2;
                                    if (z2) {
                                        z8 = a(c2, a13, a12);
                                    }
                                    if (z8) {
                                        rawContactDelta.a(c2);
                                    } else if ("vnd.android.cursor.item/note".equals(asString)) {
                                        Iterator<RawContactDelta.ValuesDelta> it5 = a13.iterator();
                                        while (true) {
                                            if (it5.hasNext()) {
                                                RawContactDelta.ValuesDelta next3 = it5.next();
                                                if (!b(next3, a12)) {
                                                    next3.a(CoverUtils.CoverData.COVER_URI, next3.a(CoverUtils.CoverData.COVER_URI) + "\n" + contentValues.getAsString(CoverUtils.CoverData.COVER_URI));
                                                    break;
                                                }
                                            }
                                        }
                                    } else {
                                        Log.e(f2035a, "Will not override mimetype " + asString + ". Ignoring: " + contentValues);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static void a(RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2, b bVar) {
        ArrayList<RawContactDelta.ValuesDelta> a2 = a(bVar, rawContactDelta.a(bVar.f1997b, false));
        if (a2 != null && !a2.isEmpty()) {
            Iterator<RawContactDelta.ValuesDelta> it = a2.iterator();
            while (it.hasNext()) {
                ContentValues g = it.next().g();
                if (g != null) {
                    rawContactDelta2.a(RawContactDelta.ValuesDelta.c(g));
                }
            }
        }
    }

    private static void a(RawContactDelta rawContactDelta, RawContactDelta rawContactDelta2, b bVar, Integer num) {
        boolean z;
        ArrayList<RawContactDelta.ValuesDelta> a2 = a(bVar, rawContactDelta.a("vnd.android.cursor.item/contact_event", false));
        if (!(a2 == null || a2.isEmpty())) {
            SparseArray sparseArray = new SparseArray();
            for (a.d dVar : bVar.n) {
                sparseArray.put(dVar.f2006a, (a.e) dVar);
            }
            Iterator<RawContactDelta.ValuesDelta> it = a2.iterator();
            while (it.hasNext()) {
                ContentValues g = it.next().g();
                if (g != null) {
                    String asString = g.getAsString(CoverUtils.CoverData.COVER_URI);
                    Integer asInteger = g.getAsInteger(CoverUtils.CoverData.COVER_TYPE);
                    if (asInteger != null && sparseArray.indexOfKey(asInteger.intValue()) >= 0 && !TextUtils.isEmpty(asString)) {
                        a.e eVar = (a.e) sparseArray.get(asInteger.intValue());
                        ParsePosition parsePosition = new ParsePosition(0);
                        Date parse = DateUtils.DATE_AND_TIME_FORMAT.parse(asString, parsePosition);
                        if (parse == null) {
                            parse = DateUtils.NO_YEAR_DATE_FORMAT.parse(asString, parsePosition);
                            z = true;
                        } else {
                            z = false;
                        }
                        num = num;
                        if (parse != null) {
                            num = num;
                            if (z) {
                                num = num;
                                if (!eVar.f) {
                                    Calendar instance = Calendar.getInstance(DateUtils.UTC_TIMEZONE, Locale.US);
                                    num = num;
                                    if (num == null) {
                                        num = Integer.valueOf(instance.get(1));
                                    }
                                    instance.setTime(parse);
                                    instance.set(num.intValue(), instance.get(2), instance.get(5), EventFieldEditorView.g(), 0, 0);
                                    g.put(CoverUtils.CoverData.COVER_URI, DateUtils.FULL_DATE_FORMAT.format(instance.getTime()));
                                }
                            }
                        }
                        rawContactDelta2.a(RawContactDelta.ValuesDelta.c(g));
                    }
                }
            }
        }
    }

    public static void a(RawContactDeltaList rawContactDeltaList, a aVar) {
        Iterator<RawContactDelta> it = rawContactDeltaList.iterator();
        while (it.hasNext()) {
            RawContactDelta next = it.next();
            RawContactDelta.ValuesDelta valuesDelta = next.f1987a;
            Iterator<b> it2 = aVar.a(valuesDelta.a(SelectAccountActivity.ACCOUNT_TYPE), valuesDelta.a(SelectAccountActivity.DATA_SET)).r().iterator();
            boolean z = false;
            while (it2.hasNext()) {
                b next2 = it2.next();
                ArrayList<RawContactDelta.ValuesDelta> a2 = next.a(next2.f1997b, false);
                if (a2 != null) {
                    Iterator<RawContactDelta.ValuesDelta> it3 = a2.iterator();
                    while (it3.hasNext()) {
                        RawContactDelta.ValuesDelta next3 = it3.next();
                        if (!(next3.n() || next3.l())) {
                            z = true;
                        } else {
                            boolean z2 = TextUtils.equals("vnd.android.cursor.item/photo", next2.f1997b) && TextUtils.equals("com.google", next.f1987a.a(SelectAccountActivity.ACCOUNT_TYPE));
                            if (b(next3, next2) && !z2) {
                                next3.o();
                            } else if (!next3.e) {
                                z = true;
                            }
                        }
                    }
                }
            }
            if (!z) {
                next.f1987a.o();
                for (ArrayList<RawContactDelta.ValuesDelta> arrayList : next.c.values()) {
                    Iterator<RawContactDelta.ValuesDelta> it4 = arrayList.iterator();
                    while (it4.hasNext()) {
                        it4.next().o();
                    }
                }
            }
        }
    }

    private static boolean a(int i, ArrayList<RawContactDelta.ValuesDelta> arrayList, b bVar) {
        int i2;
        int i3;
        boolean z = false;
        int size = bVar.n.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                i2 = 0;
                break;
            }
            a.d dVar = bVar.n.get(i4);
            if (dVar.f2006a == i) {
                i2 = dVar.d;
                break;
            }
            i4++;
        }
        if (i2 != 0) {
            if (i2 == -1) {
                z = true;
            } else {
                String str = bVar.l;
                if (arrayList != null) {
                    Iterator<RawContactDelta.ValuesDelta> it = arrayList.iterator();
                    int i5 = 0;
                    while (true) {
                        i3 = i5;
                        if (!it.hasNext()) {
                            break;
                        }
                        Integer e = it.next().e(str);
                        if (e != null && e.intValue() == i) {
                            i5++;
                        }
                    }
                } else {
                    i3 = 0;
                }
                if (i3 < i2) {
                    z = true;
                }
            }
        }
        return z;
    }

    private static boolean a(RawContactDelta.ValuesDelta valuesDelta, ContentValues contentValues, b bVar) {
        boolean z;
        if (bVar.o != null) {
            Iterator<a.c> it = bVar.o.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                }
                a.c next = it.next();
                if (!TextUtils.equals(valuesDelta.a(next.f2004a), contentValues.getAsString(next.f2004a))) {
                    z = false;
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    private static boolean a(RawContactDelta.ValuesDelta valuesDelta, ArrayList<RawContactDelta.ValuesDelta> arrayList, b bVar) {
        boolean z;
        if (bVar.l != null && bVar.n != null && bVar.n.size() != 0) {
            Integer e = valuesDelta.e(bVar.l);
            int intValue = e != null ? e.intValue() : bVar.n.get(0).f2006a;
            if (!a(intValue, arrayList, bVar)) {
                int size = bVar.n.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        z = false;
                        break;
                    }
                    a.d dVar = bVar.n.get(i);
                    if (a(dVar.f2006a, arrayList, bVar)) {
                        valuesDelta.a(bVar.l, dVar.f2006a);
                        z = true;
                        break;
                    }
                    i++;
                }
            } else {
                valuesDelta.a(bVar.l, intValue);
                z = true;
            }
        } else {
            z = true;
        }
        return z;
    }

    public static boolean a(RawContactDelta rawContactDelta, b bVar) {
        boolean z = true;
        int b2 = rawContactDelta.b(bVar.f1997b, true);
        boolean z2 = !a(bVar) || a(rawContactDelta, bVar, (a.d) null, true, (SparseIntArray) null).size() > 0;
        boolean z3 = bVar.m == -1 || b2 < bVar.m;
        if (!z2 || !z3) {
            z = false;
        }
        return z;
    }

    public static boolean a(b bVar) {
        return bVar.n != null && bVar.n.size() > 0;
    }

    public static RawContactDelta.ValuesDelta b(RawContactDelta rawContactDelta, b bVar) {
        a.d a2 = a(rawContactDelta, bVar, false, Integer.MIN_VALUE);
        a.d dVar = a2;
        if (a2 == null) {
            dVar = a(rawContactDelta, bVar, true, Integer.MIN_VALUE);
        }
        return b(rawContactDelta, bVar, dVar);
    }

    private static RawContactDelta.ValuesDelta b(RawContactDelta rawContactDelta, b bVar, a.d dVar) {
        RawContactDelta.ValuesDelta valuesDelta;
        if (bVar == null) {
            valuesDelta = null;
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("mimetype", bVar.f1997b);
            if (bVar.p != null) {
                contentValues.putAll(bVar.p);
            }
            if (!(bVar.l == null || dVar == null)) {
                contentValues.put(bVar.l, Integer.valueOf(dVar.f2006a));
            }
            RawContactDelta.ValuesDelta c2 = RawContactDelta.ValuesDelta.c(contentValues);
            rawContactDelta.a(c2);
            valuesDelta = c2;
        }
        return valuesDelta;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void b(com.android.contacts.model.RawContactDelta r5, com.android.contacts.model.RawContactDelta r6, com.android.contacts.model.a.b r7) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.model.f.b(com.android.contacts.model.RawContactDelta, com.android.contacts.model.RawContactDelta, com.android.contacts.model.a.b):void");
    }

    private static boolean b(RawContactDelta.ValuesDelta valuesDelta, b bVar) {
        boolean z;
        if ("vnd.android.cursor.item/photo".equals(bVar.f1997b)) {
            z = valuesDelta.n() && valuesDelta.c("data15") == null;
        } else if (bVar.o == null) {
            z = true;
        } else {
            Iterator<a.c> it = bVar.o.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (!TextUtils.isEmpty(valuesDelta.a(it.next().f2004a))) {
                        z = false;
                        break;
                    }
                } else {
                    z = "vnd.android.cursor.item/group_membership".equals(bVar.f1997b) ? valuesDelta.n() && valuesDelta.d(CoverUtils.CoverData.COVER_TYPE) == null : true;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(com.android.contacts.model.RawContactDeltaList r5, com.android.contacts.model.a r6) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.model.f.b(com.android.contacts.model.RawContactDeltaList, com.android.contacts.model.a):boolean");
    }

    private static SparseIntArray c(RawContactDelta rawContactDelta, b bVar) {
        SparseIntArray sparseIntArray = new SparseIntArray();
        ArrayList<RawContactDelta.ValuesDelta> a2 = rawContactDelta.a(bVar.f1997b, false);
        if (a2 != null) {
            int i = 0;
            for (RawContactDelta.ValuesDelta valuesDelta : a2) {
                if (valuesDelta.b()) {
                    int i2 = i + 1;
                    a.d a3 = a(valuesDelta, bVar);
                    i = i2;
                    if (a3 != null) {
                        sparseIntArray.put(a3.f2006a, sparseIntArray.get(a3.f2006a) + 1);
                        i = i2;
                    }
                }
            }
            sparseIntArray.put(Integer.MIN_VALUE, i);
        }
        return sparseIntArray;
    }
}
