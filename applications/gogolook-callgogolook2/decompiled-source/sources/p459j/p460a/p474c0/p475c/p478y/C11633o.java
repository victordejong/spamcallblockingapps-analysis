package p459j.p460a.p474c0.p475c.p478y;

import android.database.Cursor;
import androidx.collection.ArrayMap;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.c.y.o */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/o.class */
public class C11633o {

    /* renamed from: a */
    public final ArrayMap<String, ParticipantData> f26113a = new ArrayMap<>();

    /* renamed from: a */
    public ParticipantData m8755a() {
        for (ParticipantData participantData : this.f26113a.values()) {
            if (participantData.m27553E()) {
                return participantData;
            }
        }
        return null;
    }

    /* renamed from: a */
    public ParticipantData m8753a(String str) {
        return this.f26113a.get(str);
    }

    /* renamed from: a */
    public List<ParticipantData> m8752a(boolean z) {
        ArrayList arrayList = new ArrayList();
        for (ParticipantData participantData : this.f26113a.values()) {
            if (!z || participantData.m27555C()) {
                arrayList.add(participantData);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m8754a(Cursor cursor) {
        this.f26113a.clear();
        if (cursor != null) {
            while (cursor.moveToNext()) {
                ParticipantData a = ParticipantData.m27542a(cursor);
                this.f26113a.put(a.m27523t(), a);
            }
        }
    }

    /* renamed from: b */
    public int m8750b(boolean z) {
        int i = 0;
        for (ParticipantData participantData : this.f26113a.values()) {
            if (!participantData.m27553E() && (!z || participantData.m27555C())) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public boolean m8751b(String str) {
        if (!C14017g4.m2804t()) {
            return true;
        }
        ParticipantData a = m8753a(str);
        boolean z = false;
        if (a != null && a.m27517z() == -1) {
            z = true;
        }
        return z;
    }
}
