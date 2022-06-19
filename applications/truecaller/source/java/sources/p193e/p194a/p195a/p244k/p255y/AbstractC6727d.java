package p193e.p194a.p195a.p244k.p255y;

import android.content.ContentValues;
import android.database.Cursor;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.transport.mms.PduEntity;
import java.util.List;
import p193e.p1432d.p1436b.p1437a.p1438b.C22111f;
import p193e.p194a.p712e4.AbstractC13490i;
/* renamed from: e.a.a.k.y.d */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/y/d.class */
public interface AbstractC6727d {

    /* renamed from: e.a.a.k.y.d$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/y/d$a.class */
    public interface AbstractC6728a extends Cursor {
    }

    /* renamed from: a */
    Message mo30526a(C22111f c22111f, boolean z, String str, long j);

    /* renamed from: b */
    C22111f mo30525b(String str, long j, int i, int i2, int i3, List<String> list, AbstractC6728a abstractC6728a, String str2);

    /* renamed from: c */
    void mo30524c(PduEntity pduEntity, ContentValues contentValues);

    /* renamed from: d */
    List<PduEntity> mo30523d(Entity[] entityArr, AbstractC13490i abstractC13490i);
}
