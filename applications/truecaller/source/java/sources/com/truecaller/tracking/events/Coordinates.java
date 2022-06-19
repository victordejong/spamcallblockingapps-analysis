package com.truecaller.tracking.events;

import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
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
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/Coordinates.class */
public class Coordinates extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f15441d;

    /* renamed from: e */
    public static SpecificData f15442e;

    /* renamed from: f */
    public static final DatumWriter<Coordinates> f15443f;

    /* renamed from: g */
    public static final DatumReader<Coordinates> f15444g;
    @Deprecated

    /* renamed from: a */
    public float f15445a;
    @Deprecated

    /* renamed from: b */
    public float f15446b;
    @Deprecated

    /* renamed from: c */
    public long f15447c;

    /* renamed from: com.truecaller.tracking.events.Coordinates$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/Coordinates$b.class */
    public static class C4641b extends SpecificRecordBuilderBase<Coordinates> implements RecordBuilder<Coordinates> {

        /* renamed from: a */
        public float f15448a;

        /* renamed from: b */
        public float f15449b;

        /* renamed from: c */
        public long f15450c;

        public C4641b(C4640a c4640a) {
            super(Coordinates.f15441d);
        }

        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r0v22, types: [long] */
        /* renamed from: a */
        public Coordinates build() {
            try {
                Coordinates coordinates = new Coordinates();
                coordinates.f15445a = fieldSetFlags()[0] ? this.f15448a : ((Float) defaultValue(fields()[0])).floatValue();
                coordinates.f15446b = fieldSetFlags()[1] ? this.f15449b : ((Float) defaultValue(fields()[1])).floatValue();
                coordinates.f15447c = fieldSetFlags()[2] ? this.f15450c : ((Long) defaultValue(fields()[2])).longValue();
                return coordinates;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"Coordinates\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}");
        f15441d = m8613i0;
        SpecificData specificData = new SpecificData();
        f15442e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f15442e, m8613i0);
        f15443f = f15442e.createDatumWriter(m8613i0);
        f15444g = f15442e.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            this.f15445a = resolvingDecoder.readFloat();
            this.f15446b = resolvingDecoder.readFloat();
            this.f15447c = resolvingDecoder.readLong();
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                this.f15445a = resolvingDecoder.readFloat();
            } else if (pos == 1) {
                this.f15446b = resolvingDecoder.readFloat();
            } else if (pos != 2) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                this.f15447c = resolvingDecoder.readLong();
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeFloat(this.f15445a);
        encoder.writeFloat(this.f15446b);
        encoder.writeLong(this.f15447c);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return Float.valueOf(this.f15446b);
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Long.valueOf(this.f15447c);
        }
        return Float.valueOf(this.f15445a);
    }

    public Schema getSchema() {
        return f15441d;
    }

    public SpecificData getSpecificData() {
        return f15442e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f15445a = ((Float) obj).floatValue();
        } else if (i == 1) {
            this.f15446b = ((Float) obj).floatValue();
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f15447c = ((Long) obj).longValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f15444g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f15443f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
