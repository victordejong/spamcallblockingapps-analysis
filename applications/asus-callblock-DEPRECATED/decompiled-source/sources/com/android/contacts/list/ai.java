package com.android.contacts.list;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.ezmode.h;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.AlphanumComparator;
import com.android.contacts.util.AlphapinyinComparator;
import com.android.providers.contacts.ICNCharacterStrokeNumberJni;
import java.lang.Character;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ai.class */
public class ai extends AsyncTask<Cursor, Void, Cursor> {
    private a c;
    private Context d;
    private HashSet<Locale> e = new HashSet<>(Arrays.asList(Locale.TRADITIONAL_CHINESE));
    private ContactsPreferences g;

    /* renamed from: b  reason: collision with root package name */
    private static final String f1775b = ai.class.getSimpleName();
    private static final Pattern f = Pattern.compile("[\\u4E00-\\u9FBF]+");

    /* renamed from: a  reason: collision with root package name */
    public static Cursor f1774a = null;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/ai$a.class */
    public interface a {
        void a(Cursor cursor);
    }

    public ai(Context context, a aVar) {
        this.c = aVar;
        this.d = context;
        this.g = new ContactsPreferences(this.d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Cursor doInBackground(Cursor... cursorArr) {
        MatrixCursor matrixCursor;
        Bundle extras;
        HashMap hashMap;
        HashMap hashMap2;
        ArrayList arrayList;
        MatrixCursor matrixCursor2;
        int columnCount;
        String[] stringArray;
        int[] intArray;
        int length;
        int i;
        int i2;
        boolean a2;
        int displayOrder;
        Locale locale;
        Cursor cursor = cursorArr[0];
        try {
            extras = cursor.getExtras();
            hashMap = new HashMap();
            hashMap2 = new HashMap();
            arrayList = new ArrayList();
            matrixCursor2 = new MatrixCursor(cursor.getColumnNames());
            columnCount = cursor.getColumnCount();
            stringArray = extras.getStringArray("android.provider.extra.ADDRESS_BOOK_INDEX_TITLES");
            intArray = extras.getIntArray("android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS");
            length = stringArray.length;
            i = 0;
            i2 = 0;
            a2 = h.a(this.d);
            displayOrder = this.g.getDisplayOrder();
            locale = Locale.getDefault();
        } catch (Exception e) {
            e.printStackTrace();
            matrixCursor = null;
        }
        if (this.e.contains(locale) || locale.toString().startsWith("zh_TW")) {
            ArrayList arrayList2 = new ArrayList();
            Set<Integer> hashSet = new HashSet<>();
            int i3 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                String str = stringArray[i4];
                if (a(str)) {
                    i2 += intArray[i4];
                } else if (TextUtils.isEmpty(str)) {
                    i += intArray[i4];
                    i3 = intArray[i4];
                    hashSet = a(intArray[i4], false);
                } else if (str.equals("#") || b(str)) {
                    i += intArray[i4];
                } else {
                    com.android.contacts.list.a aVar = new com.android.contacts.list.a();
                    aVar.f1757b = intArray[i4];
                    aVar.f1756a = stringArray[i4];
                    arrayList2.add(aVar);
                }
            }
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            ArrayList arrayList5 = new ArrayList();
            ArrayList arrayList6 = new ArrayList();
            ArrayList arrayList7 = new ArrayList();
            if (cursor == null || cursor.isClosed() || !cursor.moveToFirst() || isCancelled()) {
                matrixCursor2.close();
                matrixCursor = null;
                return matrixCursor;
            }
            int columnIndex = cursor.getColumnIndex("display_name");
            int columnIndex2 = cursor.getColumnIndex("_id");
            int columnIndex3 = cursor.getColumnIndex("is_user_profile");
            do {
                String string = cursor.getString(columnIndex);
                String string2 = cursor.getString(columnIndex2);
                int position = cursor.getPosition();
                if (!a2 && cursor.getInt(columnIndex3) == 1) {
                    arrayList.add(string2);
                    hashMap.put(string2, Integer.valueOf(position));
                    hashSet = a(i3, true);
                } else if (TextUtils.isEmpty(string)) {
                    arrayList6.add(string2);
                    hashMap.put(string2, Integer.valueOf(position));
                } else {
                    String substring = string.substring(0, 1);
                    if (hashSet.contains(Integer.valueOf(position)) || b(string)) {
                        arrayList6.add(string2);
                    } else if (a(substring)) {
                        c cVar = new c();
                        cVar.f1818b = string2;
                        cVar.f1817a = substring;
                        cVar.d = true;
                        cVar.c = (char) 0;
                        arrayList4.add(cVar);
                    } else if (Character.isLetter(string.charAt(0))) {
                        arrayList3.add(string2);
                    } else {
                        arrayList5.add(string2);
                    }
                    hashMap.put(string2, Integer.valueOf(position));
                }
            } while (cursor.moveToNext());
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                arrayList7.add(((c) it.next()).f1818b);
            }
            arrayList.addAll(arrayList5);
            arrayList.addAll(arrayList6);
            arrayList.addAll(arrayList3);
            arrayList.addAll(arrayList7);
            LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
            ArrayList arrayList8 = new ArrayList();
            if (!arrayList4.isEmpty()) {
                Iterator it2 = arrayList4.iterator();
                while (it2.hasNext()) {
                    String valueOf = String.valueOf(((c) it2.next()).f1817a.charAt(0));
                    linkedHashSet.add(valueOf);
                    Integer num = (Integer) hashMap2.get(valueOf);
                    Integer num2 = num;
                    if (num == null) {
                        num2 = 0;
                    }
                    hashMap2.put(valueOf, Integer.valueOf(num2.intValue() + 1));
                }
                for (String str2 : linkedHashSet) {
                    arrayList8.add(Integer.valueOf(((Integer) hashMap2.get(str2)).intValue()));
                }
                String[] strArr = (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
                int[] a3 = a(arrayList8);
                extras.putStringArray("AsusCnTitle", strArr);
                extras.putIntArray("AsusCnCounts", a3);
                extras.putIntArray("AsusStrokeRangeIndexCount", a(strArr));
            }
            if (i2 != 0) {
                com.android.contacts.list.a aVar2 = new com.android.contacts.list.a();
                aVar2.f1757b = i2;
                aVar2.f1756a = this.d.getResources().getString(2131755373);
                arrayList2.add(aVar2);
            }
            if (i != 0) {
                com.android.contacts.list.a aVar3 = new com.android.contacts.list.a();
                aVar3.f1757b = arrayList6.size() + arrayList5.size();
                aVar3.f1756a = "#";
                arrayList2.add(aVar3);
            }
            Collections.sort(arrayList2, new AlphanumComparator());
            int size = arrayList2.size();
            String[] strArr2 = new String[size];
            int[] iArr = new int[size];
            for (int i5 = 0; i5 < arrayList2.size(); i5++) {
                strArr2[i5] = ((com.android.contacts.list.a) arrayList2.get(i5)).f1756a;
                iArr[i5] = ((com.android.contacts.list.a) arrayList2.get(i5)).f1757b;
            }
            extras.putStringArray("android.provider.extra.ADDRESS_BOOK_INDEX_TITLES", strArr2);
            extras.putIntArray("android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS", iArr);
            matrixCursor2.setExtras(extras);
        } else if (locale.toString().startsWith("en")) {
            ArrayList arrayList9 = new ArrayList();
            ArrayList arrayList10 = new ArrayList();
            ArrayList arrayList11 = new ArrayList();
            ArrayList arrayList12 = new ArrayList();
            ArrayList arrayList13 = new ArrayList();
            LinkedHashSet<String> linkedHashSet2 = new LinkedHashSet();
            HashMap<String, String> a4 = as.a(this.d);
            if (cursor == null || cursor.isClosed() || !cursor.moveToFirst() || isCancelled()) {
                matrixCursor2.close();
                matrixCursor = null;
                return matrixCursor;
            }
            int columnIndex4 = cursor.getColumnIndex("display_name");
            int columnIndex5 = cursor.getColumnIndex("display_name_alt");
            int columnIndex6 = cursor.getColumnIndex("_id");
            int columnIndex7 = cursor.getColumnIndex("is_user_profile");
            do {
                String string3 = displayOrder == 1 ? cursor.getString(columnIndex4) : cursor.getString(columnIndex5);
                String string4 = cursor.getString(columnIndex6);
                int position2 = cursor.getPosition();
                if (!a2 && cursor.getInt(columnIndex7) == 1) {
                    arrayList.add(string4);
                    hashMap.put(string4, Integer.valueOf(position2));
                } else if (TextUtils.isEmpty(string3)) {
                    arrayList9.add(string4);
                    hashMap.put(string4, Integer.valueOf(position2));
                } else {
                    c cVar2 = new c();
                    cVar2.f1817a = string3;
                    String upperCase = string3.substring(0, 1).toUpperCase();
                    if (a(upperCase)) {
                        String str3 = a4.get(upperCase);
                        if (TextUtils.isEmpty(str3)) {
                            arrayList9.add(string4);
                        } else {
                            cVar2.c = str3.charAt(0);
                            cVar2.d = true;
                            cVar2.f1818b = string4;
                            arrayList12.add(cVar2);
                            Integer num3 = (Integer) hashMap2.get(str3);
                            Integer num4 = num3;
                            if (num3 == null) {
                                num4 = 0;
                            }
                            hashMap2.put(str3, Integer.valueOf(num4.intValue() + 1));
                        }
                    } else if (b(upperCase)) {
                        arrayList11.add(string4);
                    } else if (Character.isLetter(string3.charAt(0))) {
                        cVar2.c = upperCase.charAt(0);
                        cVar2.d = false;
                        cVar2.f1818b = string4;
                        arrayList12.add(cVar2);
                        Integer num5 = (Integer) hashMap2.get(upperCase);
                        Integer num6 = num5;
                        if (num5 == null) {
                            num6 = 0;
                        }
                        hashMap2.put(upperCase, Integer.valueOf(num6.intValue() + 1));
                    } else {
                        arrayList9.add(string4);
                    }
                    hashMap.put(string4, Integer.valueOf(position2));
                }
            } while (cursor.moveToNext());
            Collections.sort(arrayList12, new AlphapinyinComparator());
            Iterator it3 = arrayList12.iterator();
            while (it3.hasNext()) {
                c cVar3 = (c) it3.next();
                linkedHashSet2.add(String.valueOf(cVar3.c));
                arrayList10.add(cVar3.f1818b);
            }
            for (String str4 : linkedHashSet2) {
                com.android.contacts.list.a aVar4 = new com.android.contacts.list.a();
                int intValue = ((Integer) hashMap2.get(str4)).intValue();
                aVar4.f1756a = str4;
                aVar4.f1757b = intValue;
                arrayList13.add(aVar4);
            }
            Collections.sort(arrayList13, new AlphanumComparator());
            if (arrayList9.size() > 0) {
                com.android.contacts.list.a aVar5 = new com.android.contacts.list.a();
                aVar5.f1757b = arrayList9.size();
                aVar5.f1756a = "#";
                arrayList13.add(0, aVar5);
            }
            for (int i6 = 0; i6 < stringArray.length; i6++) {
                if (b(stringArray[i6])) {
                    com.android.contacts.list.a aVar6 = new com.android.contacts.list.a();
                    aVar6.f1757b = intArray[i6];
                    aVar6.f1756a = stringArray[i6];
                    arrayList13.add(aVar6);
                }
            }
            int size2 = arrayList13.size();
            String[] strArr3 = new String[size2];
            int[] iArr2 = new int[size2];
            for (int i7 = 0; i7 < arrayList13.size(); i7++) {
                strArr3[i7] = ((com.android.contacts.list.a) arrayList13.get(i7)).f1756a;
                iArr2[i7] = ((com.android.contacts.list.a) arrayList13.get(i7)).f1757b;
            }
            extras.putStringArray("android.provider.extra.ADDRESS_BOOK_INDEX_TITLES", strArr3);
            extras.putIntArray("android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS", iArr2);
            arrayList.addAll(arrayList9);
            arrayList.addAll(arrayList10);
            arrayList.addAll(arrayList11);
            matrixCursor2.setExtras(extras);
        } else {
            ArrayList arrayList14 = new ArrayList();
            ArrayList arrayList15 = new ArrayList();
            ArrayList arrayList16 = new ArrayList();
            for (int i8 = 0; i8 < length; i8++) {
                String str5 = stringArray[i8];
                if (!TextUtils.isEmpty(str5) && !str5.equals("#") && !b(str5) && !str5.equals("…")) {
                    com.android.contacts.list.a aVar7 = new com.android.contacts.list.a();
                    aVar7.f1757b = intArray[i8];
                    aVar7.f1756a = stringArray[i8];
                    arrayList14.add(aVar7);
                }
            }
            if (cursor == null || cursor.isClosed() || !cursor.moveToFirst() || isCancelled()) {
                matrixCursor2.close();
                matrixCursor = null;
                return matrixCursor;
            }
            int columnIndex8 = cursor.getColumnIndex("display_name");
            int columnIndex9 = cursor.getColumnIndex("display_name_alt");
            int columnIndex10 = cursor.getColumnIndex("_id");
            int columnIndex11 = cursor.getColumnIndex("is_user_profile");
            do {
                String string5 = displayOrder == 1 ? cursor.getString(columnIndex8) : cursor.getString(columnIndex9);
                String string6 = cursor.getString(columnIndex10);
                if (!a2 && cursor.getInt(columnIndex11) == 1) {
                    arrayList.add(string6);
                    hashMap.put(string6, Integer.valueOf(cursor.getPosition()));
                } else if (TextUtils.isEmpty(string5)) {
                    arrayList16.add(string6);
                    hashMap.put(string6, Integer.valueOf(cursor.getPosition()));
                } else {
                    String substring2 = string5.substring(0, 1);
                    if (Character.isLetter(string5.charAt(0)) || a(substring2)) {
                        arrayList15.add(string6);
                    } else {
                        arrayList16.add(string6);
                    }
                    hashMap.put(string6, Integer.valueOf(cursor.getPosition()));
                }
            } while (cursor.moveToNext());
            arrayList.addAll(arrayList16);
            arrayList.addAll(arrayList15);
            if (arrayList16.size() > 0) {
                com.android.contacts.list.a aVar8 = new com.android.contacts.list.a();
                aVar8.f1757b = arrayList16.size();
                aVar8.f1756a = "#";
                arrayList14.add(0, aVar8);
            }
            int size3 = arrayList14.size();
            String[] strArr4 = new String[size3];
            int[] iArr3 = new int[size3];
            for (int i9 = 0; i9 < arrayList14.size(); i9++) {
                strArr4[i9] = ((com.android.contacts.list.a) arrayList14.get(i9)).f1756a;
                iArr3[i9] = ((com.android.contacts.list.a) arrayList14.get(i9)).f1757b;
            }
            extras.putStringArray("android.provider.extra.ADDRESS_BOOK_INDEX_TITLES", strArr4);
            extras.putIntArray("android.provider.extra.ADDRESS_BOOK_INDEX_COUNTS", iArr3);
            matrixCursor2.setExtras(extras);
        }
        Iterator it4 = arrayList.iterator();
        while (true) {
            if (it4.hasNext()) {
                String str6 = (String) it4.next();
                if (!isCancelled()) {
                    cursor.moveToPosition(((Integer) hashMap.get(str6)).intValue());
                    MatrixCursor.RowBuilder newRow = matrixCursor2.newRow();
                    for (int i10 = 0; i10 < columnCount; i10++) {
                        switch (cursor.getType(i10)) {
                            case 0:
                                newRow.add(null);
                                break;
                            case 1:
                                newRow.add(Integer.valueOf(cursor.getInt(i10)));
                                break;
                            case 2:
                                newRow.add(Float.valueOf(cursor.getFloat(i10)));
                                break;
                            case 3:
                                newRow.add(cursor.getString(i10));
                                break;
                            case 4:
                                newRow.add(cursor.getBlob(i10));
                                break;
                        }
                    }
                } else {
                    matrixCursor2.close();
                    matrixCursor = null;
                }
            } else {
                matrixCursor = matrixCursor2;
            }
        }
        return matrixCursor;
    }

    private static Set<Integer> a(int i, boolean z) {
        HashSet hashSet = new HashSet();
        if (!z) {
            for (int i2 = 0; i2 < i; i2++) {
                hashSet.add(Integer.valueOf(i2));
            }
        } else {
            for (int i3 = 1; i3 < i + 1; i3++) {
                hashSet.add(Integer.valueOf(i3));
            }
        }
        return hashSet;
    }

    private static boolean a(String str) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            Character.UnicodeBlock of = Character.UnicodeBlock.of(str.charAt(0));
            z = (of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B || of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C || of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D || of == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT) ? true : f.matcher(str.trim()).find();
        }
        return z;
    }

    private static int[] a(List<Integer> list) {
        int[] iArr = new int[list.size()];
        Iterator<Integer> it = list.iterator();
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = it.next().intValue();
        }
        return iArr;
    }

    private static int[] a(String[] strArr) {
        int[] iArr = {-1, -1, -1, -1};
        try {
            ICNCharacterStrokeNumberJni iCNCharacterStrokeNumberJni = new ICNCharacterStrokeNumberJni();
            if (ICNCharacterStrokeNumberJni.a()) {
                boolean z = false;
                boolean z2 = false;
                boolean z3 = false;
                boolean z4 = false;
                for (int i = 0; i < strArr.length && (!z4 || !z3 || !z2 || !z); i++) {
                    int strokeNumber = iCNCharacterStrokeNumberJni.getStrokeNumber(Character.codePointAt(strArr[i], 0));
                    if (strokeNumber > 0 && strokeNumber <= 9) {
                        if (!z4) {
                            iArr[0] = i;
                        }
                        z4 = true;
                        z3 = z3;
                        z2 = z2;
                        z = z;
                    } else if (strokeNumber >= 10 && strokeNumber <= 12) {
                        if (!z3) {
                            iArr[1] = i;
                        }
                        z3 = true;
                        z = z;
                        z2 = z2;
                        z4 = z4;
                    } else if (strokeNumber < 13 || strokeNumber > 16) {
                        z = z;
                        z2 = z2;
                        z3 = z3;
                        z4 = z4;
                        if (!z) {
                            iArr[3] = i;
                            z = true;
                            z2 = z2;
                            z3 = z3;
                            z4 = z4;
                        }
                    } else {
                        if (!z2) {
                            iArr[2] = i;
                        }
                        z2 = true;
                        z = z;
                        z3 = z3;
                        z4 = z4;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return iArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
        if (r0 == java.lang.Character.UnicodeBlock.CYRILLIC_SUPPLEMENTARY) goto L_0x0032;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean b(java.lang.String r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0034
            r0 = r3
            r1 = 0
            char r0 = r0.charAt(r1)
            java.lang.Character$UnicodeBlock r0 = java.lang.Character.UnicodeBlock.of(r0)
            r3 = r0
            r0 = r3
            java.lang.Character$UnicodeBlock r1 = java.lang.Character.UnicodeBlock.CYRILLIC
            if (r0 == r1) goto L_0x0032
            r0 = r3
            java.lang.Character$UnicodeBlock r1 = java.lang.Character.UnicodeBlock.CYRILLIC_EXTENDED_A
            if (r0 == r1) goto L_0x0032
            r0 = r3
            java.lang.Character$UnicodeBlock r1 = java.lang.Character.UnicodeBlock.CYRILLIC_EXTENDED_B
            if (r0 == r1) goto L_0x0032
            r0 = r4
            r5 = r0
            r0 = r3
            java.lang.Character$UnicodeBlock r1 = java.lang.Character.UnicodeBlock.CYRILLIC_SUPPLEMENTARY
            if (r0 != r1) goto L_0x0034
        L_0x0032:
            r0 = 1
            r5 = r0
        L_0x0034:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.ai.b(java.lang.String):boolean");
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ void onPostExecute(Cursor cursor) {
        Cursor cursor2 = cursor;
        if (f1774a != null) {
            Cursor cursor3 = f1774a;
            f1774a = cursor2;
            if (cursor3 != null) {
                cursor3.close();
            }
        } else {
            f1774a = cursor2;
        }
        if (cursor2 != null) {
            if (Build.TYPE.equals("userdebug")) {
                Log.d(f1775b, "onPostExecute result != null,count:" + cursor2.getCount());
            }
            this.c.a(cursor2);
        }
    }
}
