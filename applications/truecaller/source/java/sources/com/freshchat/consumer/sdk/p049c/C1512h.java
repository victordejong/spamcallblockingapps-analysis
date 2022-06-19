package com.freshchat.consumer.sdk.p049c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.freshchat.consumer.sdk.beans.Participant;
import com.freshchat.consumer.sdk.p049c.p050a.C1499k;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/h.class */
public class C1512h extends AbstractC1504b {

    /* renamed from: em */
    private static final String[] f4120em = new C1499k().m40807cR();
    private final Context context;

    public C1512h(Context context) {
        super(context);
        this.context = context;
    }

    /* renamed from: a */
    private static ContentValues m40708a(Participant participant) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("alias", participant.getAlias());
        contentValues.put("first_name", participant.getFirstName());
        contentValues.put("last_name", participant.getLastName());
        contentValues.put("profile_pic_url", participant.getProfilePicUrl());
        return contentValues;
    }

    /* renamed from: cI */
    private Cursor m40706cI() {
        return m40789cs().query("participants", f4120em, null, null, null, null, null);
    }

    /* renamed from: g */
    private Participant m40705g(Cursor cursor, Map<String, Integer> map) {
        Participant participant;
        if (AbstractC1504b.m40787d(cursor)) {
            String string = cursor.getString(map.get("alias").intValue());
            String string2 = cursor.getString(map.get("first_name").intValue());
            String string3 = cursor.getString(map.get("last_name").intValue());
            String string4 = cursor.getString(map.get("profile_pic_url").intValue());
            participant = new Participant();
            participant.setAlias(string);
            participant.setFirstName(string2);
            participant.setLastName(string3);
            participant.setProfilePicUrl(string4);
        } else {
            participant = null;
        }
        return participant;
    }

    @Override // com.freshchat.consumer.sdk.p049c.AbstractC1504b
    /* renamed from: a */
    public Map<String, Integer> mo40665a(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (AbstractC1504b.m40787d(cursor)) {
            hashMap.put("alias", Integer.valueOf(cursor.getColumnIndex("alias")));
            hashMap.put("profile_pic_url", C22128a.m8544z1(hashMap, "last_name", C22128a.m8544z1(hashMap, "first_name", Integer.valueOf(cursor.getColumnIndex("first_name")), cursor, "last_name"), cursor, "profile_pic_url"));
        }
        return hashMap;
    }

    /* renamed from: cH */
    public List<Participant> m40707cH() {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                Cursor m40706cI = m40706cI();
                cursor = m40706cI;
                if (AbstractC1504b.m40792b(m40706cI)) {
                    Map<String, Integer> mo40665a = mo40665a(m40706cI);
                    do {
                        cursor3 = m40706cI;
                        cursor2 = m40706cI;
                        Participant m40705g = m40705g(m40706cI, mo40665a);
                        if (m40705g != null) {
                            arrayList.add(m40705g);
                        }
                    } while (m40706cI.moveToNext());
                    cursor = m40706cI;
                }
            } catch (Exception e) {
                cursor3 = cursor2;
                C1723q.m39823a(e);
                cursor = cursor2;
            }
            return arrayList;
        } finally {
            AbstractC1504b.m40791c(cursor3);
        }
    }

    /* renamed from: g */
    public List<Boolean> m40704g(List<Participant> list) {
        ArrayList arrayList = new ArrayList();
        if (C1716k.m39902a(list)) {
            Iterator<Participant> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(Boolean.valueOf(m40789cs().replace("participants", null, m40708a(it.next())) != -1));
            }
        }
        return arrayList;
    }
}
