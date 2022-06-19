package p193e.p194a.p195a.p244k.p245a.p247f2;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import android.os.Environment;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.transport.p170im.legacy.ImAttachmentMigratorWorker;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1392y2.p1394q.AbstractC21780a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6130c;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.k;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.k.a.f2.c */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/f2/c.class */
public final class C6553c implements AbstractC6551a {

    /* renamed from: a */
    public final ContentResolver f21627a;

    /* renamed from: b */
    public final AbstractC6115g f21628b;

    /* renamed from: c */
    public final AbstractC8571b f21629c;

    /* renamed from: d */
    public final AbstractC6392i0 f21630d;

    /* renamed from: e */
    public final AbstractC19219a0 f21631e;

    /* renamed from: f */
    public final AbstractC19462a f21632f;

    /* renamed from: g */
    public final AbstractC21780a f21633g;

    /* renamed from: e.a.a.k.a.f2.c$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/f2/c$a.class */
    public static final class C6554a extends m implements l<OutputStream, s> {

        /* renamed from: b */
        public final /* synthetic */ InputStream f21634b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6554a(InputStream inputStream) {
            super(1);
            this.f21634b = inputStream;
        }

        /* renamed from: d */
        public Object m30772d(Object obj) {
            OutputStream outputStream = (OutputStream) obj;
            s1.z.c.l.e(outputStream, "it");
            InputStream inputStream = this.f21634b;
            s1.z.c.l.d(inputStream, "input");
            C25225a.m3960U(inputStream, outputStream, 0, 2);
            return s.a;
        }
    }

    @Inject
    public C6553c(ContentResolver contentResolver, AbstractC6115g abstractC6115g, AbstractC8571b abstractC8571b, AbstractC6392i0 abstractC6392i0, AbstractC19219a0 abstractC19219a0, AbstractC19462a abstractC19462a, AbstractC21780a abstractC21780a) {
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(abstractC6115g, "cursorsFactory");
        s1.z.c.l.e(abstractC8571b, "storeHelper");
        s1.z.c.l.e(abstractC6392i0, "messageSettings");
        s1.z.c.l.e(abstractC19219a0, "permissionUtil");
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(abstractC21780a, "backgroundWorkTrigger");
        this.f21627a = contentResolver;
        this.f21628b = abstractC6115g;
        this.f21629c = abstractC8571b;
        this.f21630d = abstractC6392i0;
        this.f21631e = abstractC19219a0;
        this.f21632f = abstractC19462a;
        this.f21633g = abstractC21780a;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p247f2.AbstractC6551a
    /* renamed from: a */
    public boolean mo30777a() {
        return this.f21630d.mo31026n3() && this.f21631e.mo13823j() && this.f21631e.mo13830c() && s1.z.c.l.a(Environment.getExternalStorageState(), "mounted");
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p247f2.AbstractC6551a
    /* renamed from: b */
    public void mo30776b() {
        int i;
        if (!mo30777a()) {
            return;
        }
        C6555d m30774d = m30774d(false);
        C6555d m30774d2 = m30774d(true);
        File file = new File(Environment.getExternalStorageDirectory(), "Truecaller");
        File[] listFiles = file.listFiles(C6552b.f21626a);
        if (listFiles != null) {
            for (File file2 : listFiles) {
                File[] listFiles2 = file2.listFiles();
                if (listFiles2 == null) {
                    listFiles2 = new File[0];
                }
                if (listFiles2.length <= 1) {
                    C19291g.m13543i1(new File(file2, ".nomedia"));
                    C19291g.m13543i1(file2);
                }
            }
        }
        C19291g.m13543i1(file);
        this.f21630d.mo31009q2(false);
        C6555d[] c6555dArr = {m30774d, m30774d2};
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 < 2) {
                i3 += c6555dArr[i2].f21635a;
                i2++;
            }
        }
        for (i = 0; i < 2; i++) {
            int i4 = c6555dArr[i].f21636b;
        }
        Math.pow(10.0d, Math.floor(Math.log10(i3)));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.p247f2.AbstractC6551a
    /* renamed from: c */
    public void mo30775c() {
        if (mo30777a()) {
            this.f21633g.mo9086b(ImAttachmentMigratorWorker.f13775d);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public final C6555d m30774d(boolean z) {
        AbstractC6130c mo31775q = this.f21628b.mo31775q(this.f21627a.query(C8582g0.m28296x(), null, C22128a.m8599l2("\n            type != ?\n            AND message_id IN (\n                SELECT _id\n                FROM msg_messages\n                WHERE transport = 2 AND (status & 1) = ", z ? 1 : 0, "\n            )\n        "), new String[]{"text/plain"}, null));
        int i = 0;
        if (mo31775q != null) {
            int i2 = 0;
            while (true) {
                try {
                    BinaryEntity binaryEntity = null;
                    if (!mo31775q.moveToNext()) {
                        C25225a.m4016G(mo31775q, null);
                        return new C6555d(i, i2);
                    }
                    Entity entity = mo31775q.getEntity();
                    if (entity instanceof BinaryEntity) {
                        binaryEntity = entity;
                    }
                    BinaryEntity binaryEntity2 = binaryEntity;
                    if (binaryEntity2 != null && !this.f21629c.mo28368c(binaryEntity2.f13173i) && !this.f21629c.mo28370a(binaryEntity2.f13173i)) {
                        int i3 = i + 1;
                        i = i3;
                        if (m30773e(binaryEntity2, z)) {
                            i2++;
                            i = i3;
                        }
                    }
                } finally {
                    try {
                        throw th;
                    } catch (Throwable th) {
                    }
                }
            }
        } else {
            return new C6555d(0, 0);
        }
    }

    /* renamed from: e */
    public final boolean m30773e(BinaryEntity binaryEntity, boolean z) {
        try {
            InputStream openInputStream = this.f21627a.openInputStream(binaryEntity.f13173i);
            if (openInputStream == null) {
                return false;
            }
            k m15256L0 = C18334g0.m15256L0(this.f21629c, binaryEntity.f13306a, binaryEntity.f13307b, !z, 0, new C6554a(openInputStream), 8, null);
            C25225a.m4016G(openInputStream, null);
            if (m15256L0 == null) {
                return false;
            }
            Uri uri = (Uri) m15256L0.a;
            ContentResolver contentResolver = this.f21627a;
            Uri m28296x = C8582g0.m28296x();
            ContentValues contentValues = new ContentValues();
            contentValues.put("entity_info1", uri.toString());
            if (contentResolver.update(m28296x, contentValues, "_id = ?", new String[]{String.valueOf(binaryEntity.f13306a)}) == 0) {
                return false;
            }
            C19286f.m13693K(this.f21627a, binaryEntity.f13173i);
            return true;
        } catch (IOException | RuntimeException e) {
            return false;
        }
    }
}
