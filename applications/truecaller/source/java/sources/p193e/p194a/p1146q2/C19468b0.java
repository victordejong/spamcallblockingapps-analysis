package p193e.p194a.p1146q2;

import android.database.sqlite.SQLiteException;
import android.location.Location;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.analytics.EventsUploadResult;
import com.truecaller.log.AssertionUtil;
import com.truecaller.tracking.events.App;
import com.truecaller.tracking.events.ClientHeaderV2;
import com.truecaller.tracking.events.Coordinates;
import com.truecaller.tracking.events.EventRecordVersionedV2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import org.apache.avro.AvroRuntimeException;
import org.apache.avro.Schema;
import org.apache.avro.generic.GenericRecord;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.p1148b1.AbstractC19469a;
import p193e.p194a.p1146q2.p1148b1.AbstractC19472d;
import p193e.p194a.p1146q2.p1148b1.C19471c;
import p193e.p194a.p1146q2.p1151d1.C19492c;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p614c3.AbstractC10925a;
import u3.e0;
/* renamed from: e.a.q2.b0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/b0.class */
public final class C19468b0 implements AbstractC19463a0 {

    /* renamed from: a */
    public final C19509i f54054a;

    /* renamed from: b */
    public final AbstractC19469a f54055b;

    /* renamed from: c */
    public final AbstractC19472d f54056c;

    /* renamed from: d */
    public final AbstractC19483c0 f54057d;

    /* renamed from: e */
    public final AbstractC19321u f54058e;

    /* renamed from: f */
    public final AbstractC19506g0 f54059f;

    /* renamed from: g */
    public final C19492c f54060g;

    /* renamed from: h */
    public final TelephonyManager f54061h;

    /* renamed from: i */
    public long f54062i = 0;

    @Inject
    public C19468b0(C19509i c19509i, AbstractC19469a abstractC19469a, AbstractC19472d abstractC19472d, AbstractC19483c0 abstractC19483c0, AbstractC19321u abstractC19321u, AbstractC19506g0 abstractC19506g0, C19492c c19492c, TelephonyManager telephonyManager) {
        this.f54054a = c19509i;
        this.f54055b = abstractC19469a;
        this.f54056c = abstractC19472d;
        this.f54057d = abstractC19483c0;
        this.f54058e = abstractC19321u;
        this.f54059f = abstractC19506g0;
        this.f54061h = telephonyManager;
        this.f54060g = c19492c;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19463a0
    /* renamed from: a */
    public void mo13111a(GenericRecord genericRecord) {
        byte[] m13302e = m13302e(genericRecord);
        if (m13302e != null) {
            String str = genericRecord.getSchema().getName() + StringConstant.SPACE + genericRecord;
            try {
                this.f54056c.mo13301a(new C19471c(0L, m13302e));
            } catch (SQLiteException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
        }
    }

    @Override // p193e.p194a.p1146q2.AbstractC19463a0
    /* renamed from: b */
    public AbstractC19891x<EventsUploadResult> mo13110b(GenericRecord genericRecord, e0 e0Var) {
        byte[] m13302e = m13302e(genericRecord);
        if (m13302e == null) {
            return AbstractC19891x.m11834h(EventsUploadResult.FAILURE);
        }
        boolean z = false;
        if (this.f54054a.m13259b() != -1) {
            try {
                EventRecordVersionedV2 m13118a = C19596y.m13118a(m13302e);
                ArrayList<EventRecordVersionedV2> arrayList = new ArrayList<>();
                arrayList.add(m13118a);
                z = this.f54057d.mo13292b(this.f54054a, e0Var, arrayList);
            } catch (AvroRuntimeException | IOException e) {
                genericRecord.getSchema().getName();
                z = false;
            }
        }
        if (z) {
            return AbstractC19891x.m11834h(EventsUploadResult.SUCCESS);
        }
        try {
            this.f54056c.mo13301a(new C19471c(0L, m13302e));
        } catch (SQLiteException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
        }
        return AbstractC19891x.m11834h(EventsUploadResult.QUEUED);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19463a0
    /* renamed from: c */
    public AbstractC19891x<Boolean> mo13109c(e0 e0Var) {
        try {
            return AbstractC19891x.m11834h(Boolean.valueOf(this.f54057d.mo13293a(this.f54054a, e0Var)));
        } catch (SQLiteException | IOException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return AbstractC19891x.m11834h(Boolean.FALSE);
        }
    }

    /* renamed from: d */
    public final ClientHeaderV2 m13303d(Long l) throws AvroRuntimeException {
        String name;
        Coordinates coordinates;
        Schema schema = App.f15409e;
        App.C4637b c4637b = new App.C4637b(null);
        String str = this.f54054a.f54130a;
        c4637b.validate(c4637b.fields()[0], str);
        c4637b.f15417a = str;
        c4637b.fieldSetFlags()[0] = true;
        AbstractC10925a abstractC10925a = (AbstractC10925a) this.f54054a.f54133d.get();
        if (abstractC10925a == null || (name = abstractC10925a.getName()) == null) {
            throw new NullPointerException("BuildHelper was not injected");
        }
        c4637b.validate(c4637b.fields()[2], name);
        c4637b.f15419c = name;
        c4637b.fieldSetFlags()[2] = true;
        String str2 = this.f54054a.f54131b;
        c4637b.validate(c4637b.fields()[1], str2);
        c4637b.f15418b = str2;
        c4637b.fieldSetFlags()[1] = true;
        String str3 = this.f54054a.f54132c;
        c4637b.validate(c4637b.fields()[3], str3);
        c4637b.f15420d = str3;
        c4637b.fieldSetFlags()[3] = true;
        App build = c4637b.build();
        Schema schema2 = ClientHeaderV2.f15421i;
        ClientHeaderV2.C4639b c4639b = new ClientHeaderV2.C4639b(null);
        if (this.f54062i == 0) {
            this.f54062i = this.f54055b.getLong("analyticsLastEventId", System.currentTimeMillis());
        }
        AbstractC19469a abstractC19469a = this.f54055b;
        long j = this.f54062i + 1;
        this.f54062i = j;
        abstractC19469a.putLong("analyticsLastEventId", j);
        long j2 = this.f54062i;
        c4639b.validate(c4639b.fields()[0], Long.valueOf(j2));
        c4639b.f15433a = j2;
        c4639b.fieldSetFlags()[0] = true;
        long currentTimeMillis = System.currentTimeMillis();
        c4639b.validate(c4639b.fields()[1], Long.valueOf(currentTimeMillis));
        c4639b.f15434b = currentTimeMillis;
        c4639b.fieldSetFlags()[1] = true;
        String valueOf = l == null ? null : String.valueOf(l);
        c4639b.validate(c4639b.fields()[2], valueOf);
        c4639b.f15435c = valueOf;
        c4639b.fieldSetFlags()[2] = true;
        String str4 = (String) this.f54060g.f54103a.getValue();
        c4639b.validate(c4639b.fields()[3], str4);
        c4639b.f15436d = str4;
        c4639b.fieldSetFlags()[3] = true;
        c4639b.validate(c4639b.fields()[4], build);
        c4639b.f15437e = build;
        c4639b.fieldSetFlags()[4] = true;
        String mo13431b = this.f54058e.mo13431b();
        c4639b.validate(c4639b.fields()[5], mo13431b);
        c4639b.f15438f = mo13431b;
        c4639b.fieldSetFlags()[5] = true;
        String networkOperatorName = this.f54061h.getNetworkOperatorName();
        c4639b.validate(c4639b.fields()[6], networkOperatorName);
        c4639b.f15439g = networkOperatorName;
        c4639b.fieldSetFlags()[6] = true;
        Location mo13261a = this.f54059f.mo13261a();
        if (mo13261a == null) {
            coordinates = null;
        } else {
            Schema schema3 = Coordinates.f15441d;
            Coordinates.C4641b c4641b = new Coordinates.C4641b(null);
            float latitude = (float) mo13261a.getLatitude();
            c4641b.validate(c4641b.fields()[0], Float.valueOf(latitude));
            c4641b.f15448a = latitude;
            c4641b.fieldSetFlags()[0] = true;
            float longitude = (float) mo13261a.getLongitude();
            c4641b.validate(c4641b.fields()[1], Float.valueOf(longitude));
            c4641b.f15449b = longitude;
            c4641b.fieldSetFlags()[1] = true;
            long millis = TimeUnit.NANOSECONDS.toMillis(SystemClock.elapsedRealtimeNanos() - mo13261a.getElapsedRealtimeNanos());
            c4641b.validate(c4641b.fields()[2], Long.valueOf(millis));
            c4641b.f15450c = millis;
            c4641b.fieldSetFlags()[2] = true;
            coordinates = c4641b.build();
        }
        c4639b.validate(c4639b.fields()[7], coordinates);
        c4639b.f15440h = coordinates;
        c4639b.fieldSetFlags()[7] = true;
        return c4639b.build();
    }

    /* renamed from: e */
    public final byte[] m13302e(GenericRecord genericRecord) {
        Long valueOf = Long.valueOf(this.f54054a.m13259b());
        Long l = valueOf;
        if (valueOf.longValue() == -1) {
            l = null;
        }
        try {
            return C19596y.m13115d(m13303d(l), genericRecord);
        } catch (IOException | AvroRuntimeException e) {
            genericRecord.getSchema().getName();
            AssertionUtil.reportThrowableButNeverCrash(e);
            return null;
        }
    }
}
