package p193e.p194a.p1146q2;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.tracking.events.ClientHeaderV2;
import com.truecaller.tracking.events.EventRecordVersionedV2;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import org.apache.avro.Schema;
import org.apache.avro.generic.GenericDatumWriter;
import org.apache.avro.generic.GenericRecord;
import org.apache.avro.io.BinaryDecoder;
import org.apache.avro.io.BinaryEncoder;
import org.apache.avro.io.DecoderFactory;
import org.apache.avro.io.EncoderFactory;
import org.apache.avro.specific.SpecificDatumReader;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.l;
import s1.z.c.l;
/* renamed from: e.a.q2.y */
/* loaded from: classes4-dex2jar.jar:e/a/q2/y.class */
public final class C19596y {

    /* renamed from: a */
    public static final SpecificDatumReader<EventRecordVersionedV2> f54464a = new SpecificDatumReader<>(EventRecordVersionedV2.f15451f);

    /* renamed from: a */
    public static final EventRecordVersionedV2 m13118a(byte[] bArr) {
        Object obj;
        l.e(bArr, RemoteMessageConst.DATA);
        try {
            obj = f54464a.read((Object) null, DecoderFactory.get().binaryDecoder(bArr, (BinaryDecoder) null));
        } catch (Throwable th) {
            obj = C25225a.m3935a0(th);
        }
        Object obj2 = obj;
        if (obj instanceof l.a) {
            obj2 = null;
        }
        EventRecordVersionedV2 eventRecordVersionedV2 = (EventRecordVersionedV2) obj2;
        EventRecordVersionedV2 eventRecordVersionedV22 = null;
        if (eventRecordVersionedV2 != null) {
            eventRecordVersionedV22 = null;
            if (eventRecordVersionedV2.f15455a >= 79) {
                eventRecordVersionedV22 = eventRecordVersionedV2.f15459e != 2 ? null : eventRecordVersionedV2;
            }
        }
        return eventRecordVersionedV22;
    }

    /* renamed from: b */
    public static final void m13117b(GenericRecord genericRecord, OutputStream outputStream) throws IOException {
        s1.z.c.l.e(genericRecord, "event");
        s1.z.c.l.e(outputStream, "out");
        GenericDatumWriter genericDatumWriter = new GenericDatumWriter(genericRecord.getSchema());
        BinaryEncoder binaryEncoder = EncoderFactory.get().binaryEncoder(outputStream, (BinaryEncoder) null);
        genericDatumWriter.write(genericRecord, binaryEncoder);
        binaryEncoder.flush();
    }

    /* renamed from: c */
    public static final byte[] m13116c(GenericRecord genericRecord) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m13117b(genericRecord, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        s1.z.c.l.d(byteArray, "out.toByteArray()");
        return byteArray;
    }

    /* renamed from: d */
    public static final byte[] m13115d(ClientHeaderV2 clientHeaderV2, GenericRecord genericRecord) throws IOException {
        s1.z.c.l.e(clientHeaderV2, "header");
        s1.z.c.l.e(genericRecord, "record");
        Schema schema = EventRecordVersionedV2.f15451f;
        EventRecordVersionedV2.C4643b c4643b = new EventRecordVersionedV2.C4643b(null);
        c4643b.validate(c4643b.fields()[0], 293);
        c4643b.f15460a = 293;
        c4643b.fieldSetFlags()[0] = true;
        c4643b.validate(c4643b.fields()[4], 2);
        c4643b.f15464e = 2;
        c4643b.fieldSetFlags()[4] = true;
        Schema schema2 = genericRecord.getSchema();
        s1.z.c.l.d(schema2, "record.schema");
        String name = schema2.getName();
        c4643b.validate(c4643b.fields()[1], name);
        c4643b.f15461b = name;
        c4643b.fieldSetFlags()[1] = true;
        ByteBuffer wrap = ByteBuffer.wrap(m13116c(clientHeaderV2));
        c4643b.validate(c4643b.fields()[2], wrap);
        c4643b.f15462c = wrap;
        c4643b.fieldSetFlags()[2] = true;
        ByteBuffer wrap2 = ByteBuffer.wrap(m13116c(genericRecord));
        c4643b.validate(c4643b.fields()[3], wrap2);
        c4643b.f15463d = wrap2;
        c4643b.fieldSetFlags()[3] = true;
        EventRecordVersionedV2 build = c4643b.build();
        s1.z.c.l.d(build, "event");
        return m13116c(build);
    }
}
