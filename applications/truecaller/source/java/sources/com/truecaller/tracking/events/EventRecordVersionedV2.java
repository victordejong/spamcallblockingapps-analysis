package com.truecaller.tracking.events;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.nio.ByteBuffer;
import org.apache.avro.AvroMissingFieldException;
import org.apache.avro.AvroRuntimeException;
import org.apache.avro.Schema;
import org.apache.avro.data.RecordBuilder;
import org.apache.avro.io.DatumReader;
import org.apache.avro.io.DatumWriter;
import org.apache.avro.io.Encoder;
import org.apache.avro.io.ResolvingDecoder;
import org.apache.avro.message.BinaryMessageDecoder;
import org.apache.avro.message.BinaryMessageEncoder;
import org.apache.avro.specific.SpecificData;
import org.apache.avro.specific.SpecificRecord;
import org.apache.avro.specific.SpecificRecordBase;
import org.apache.avro.specific.SpecificRecordBuilderBase;
import org.apache.avro.util.Utf8;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/EventRecordVersionedV2.class */
public class EventRecordVersionedV2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f15451f;

    /* renamed from: g */
    public static SpecificData f15452g;

    /* renamed from: h */
    public static final DatumWriter<EventRecordVersionedV2> f15453h;

    /* renamed from: i */
    public static final DatumReader<EventRecordVersionedV2> f15454i;
    @Deprecated

    /* renamed from: a */
    public int f15455a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f15456b;
    @Deprecated

    /* renamed from: c */
    public ByteBuffer f15457c;
    @Deprecated

    /* renamed from: d */
    public ByteBuffer f15458d;
    @Deprecated

    /* renamed from: e */
    public int f15459e;

    /* renamed from: com.truecaller.tracking.events.EventRecordVersionedV2$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/EventRecordVersionedV2$b.class */
    public static class C4643b extends SpecificRecordBuilderBase<EventRecordVersionedV2> implements RecordBuilder<EventRecordVersionedV2> {

        /* renamed from: a */
        public int f15460a;

        /* renamed from: b */
        public CharSequence f15461b;

        /* renamed from: c */
        public ByteBuffer f15462c;

        /* renamed from: d */
        public ByteBuffer f15463d;

        /* renamed from: e */
        public int f15464e;

        public C4643b(C4642a c4642a) {
            super(EventRecordVersionedV2.f15451f);
        }

        /* renamed from: a */
        public EventRecordVersionedV2 build() {
            try {
                EventRecordVersionedV2 eventRecordVersionedV2 = new EventRecordVersionedV2();
                eventRecordVersionedV2.f15455a = fieldSetFlags()[0] ? this.f15460a : ((Integer) defaultValue(fields()[0])).intValue();
                eventRecordVersionedV2.f15456b = fieldSetFlags()[1] ? this.f15461b : (CharSequence) defaultValue(fields()[1]);
                eventRecordVersionedV2.f15457c = fieldSetFlags()[2] ? this.f15462c : (ByteBuffer) defaultValue(fields()[2]);
                eventRecordVersionedV2.f15458d = fieldSetFlags()[3] ? this.f15463d : (ByteBuffer) defaultValue(fields()[3]);
                eventRecordVersionedV2.f15459e = fieldSetFlags()[4] ? this.f15464e : ((Integer) defaultValue(fields()[4])).intValue();
                return eventRecordVersionedV2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"EventRecordVersionedV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"schemaId\",\"type\":\"int\"},{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"header\",\"type\":\"bytes\"},{\"name\":\"body\",\"type\":\"bytes\"},{\"name\":\"headerVersion\",\"type\":\"int\",\"default\":2}]}");
        f15451f = m8613i0;
        SpecificData specificData = new SpecificData();
        f15452g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f15452g, m8613i0);
        f15453h = f15452g.createDatumWriter(m8613i0);
        f15454i = f15452g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            this.f15455a = resolvingDecoder.readInt();
            Utf8 utf82 = this.f15456b;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f15456b = resolvingDecoder.readString(utf8);
            this.f15457c = resolvingDecoder.readBytes(this.f15457c);
            this.f15458d = resolvingDecoder.readBytes(this.f15458d);
            this.f15459e = resolvingDecoder.readInt();
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                this.f15455a = resolvingDecoder.readInt();
            } else if (pos == 1) {
                Utf8 utf83 = this.f15456b;
                this.f15456b = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            } else if (pos == 2) {
                this.f15457c = resolvingDecoder.readBytes(this.f15457c);
            } else if (pos == 3) {
                this.f15458d = resolvingDecoder.readBytes(this.f15458d);
            } else if (pos != 4) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                this.f15459e = resolvingDecoder.readInt();
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeInt(this.f15455a);
        encoder.writeString(this.f15456b);
        encoder.writeBytes(this.f15457c);
        encoder.writeBytes(this.f15458d);
        encoder.writeInt(this.f15459e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f15456b;
            }
            if (i == 2) {
                return this.f15457c;
            }
            if (i == 3) {
                return this.f15458d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Integer.valueOf(this.f15459e);
        }
        return Integer.valueOf(this.f15455a);
    }

    public Schema getSchema() {
        return f15451f;
    }

    public SpecificData getSpecificData() {
        return f15452g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f15455a = ((Integer) obj).intValue();
        } else if (i == 1) {
            this.f15456b = (CharSequence) obj;
        } else if (i == 2) {
            this.f15457c = (ByteBuffer) obj;
        } else if (i == 3) {
            this.f15458d = (ByteBuffer) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f15459e = ((Integer) obj).intValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f15454i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f15453h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
