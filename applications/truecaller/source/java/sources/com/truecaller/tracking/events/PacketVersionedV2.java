package com.truecaller.tracking.events;

import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ConcurrentModificationException;
import java.util.List;
import org.apache.avro.AvroMissingFieldException;
import org.apache.avro.AvroRuntimeException;
import org.apache.avro.Schema;
import org.apache.avro.data.RecordBuilder;
import org.apache.avro.generic.GenericData;
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
/* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/PacketVersionedV2.class */
public class PacketVersionedV2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: b */
    public static final Schema f15465b;

    /* renamed from: c */
    public static SpecificData f15466c;

    /* renamed from: d */
    public static final DatumWriter<PacketVersionedV2> f15467d;

    /* renamed from: e */
    public static final DatumReader<PacketVersionedV2> f15468e;
    @Deprecated

    /* renamed from: a */
    public List<EventRecordVersionedV2> f15469a;

    /* renamed from: com.truecaller.tracking.events.PacketVersionedV2$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/PacketVersionedV2$b.class */
    public static class C4645b extends SpecificRecordBuilderBase<PacketVersionedV2> implements RecordBuilder<PacketVersionedV2> {

        /* renamed from: a */
        public List<EventRecordVersionedV2> f15470a;

        public C4645b(C4644a c4644a) {
            super(PacketVersionedV2.f15465b);
        }

        /* renamed from: a */
        public PacketVersionedV2 build() {
            try {
                PacketVersionedV2 packetVersionedV2 = new PacketVersionedV2();
                packetVersionedV2.f15469a = fieldSetFlags()[0] ? this.f15470a : (List) defaultValue(fields()[0]);
                return packetVersionedV2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"PacketVersionedV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"events\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"EventRecordVersionedV2\",\"fields\":[{\"name\":\"schemaId\",\"type\":\"int\"},{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"header\",\"type\":\"bytes\"},{\"name\":\"body\",\"type\":\"bytes\"},{\"name\":\"headerVersion\",\"type\":\"int\",\"default\":2}]}}}]}");
        f15465b = m8613i0;
        SpecificData specificData = new SpecificData();
        f15466c = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f15466c, m8613i0);
        f15467d = f15466c.createDatumWriter(m8613i0);
        f15468e = f15466c.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<EventRecordVersionedV2> list = this.f15469a;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f15465b.getField("events").schema());
                this.f15469a = list;
            } else {
                list.clear();
            }
            GenericData.Array array = list instanceof GenericData.Array ? list : null;
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    EventRecordVersionedV2 eventRecordVersionedV2 = array != null ? (EventRecordVersionedV2) array.peek() : null;
                    EventRecordVersionedV2 eventRecordVersionedV22 = eventRecordVersionedV2;
                    if (eventRecordVersionedV2 == null) {
                        eventRecordVersionedV22 = new EventRecordVersionedV2();
                    }
                    eventRecordVersionedV22.customDecode(resolvingDecoder);
                    list.add(eventRecordVersionedV22);
                    readArrayStart--;
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            return;
        }
        for (int i = 0; i < 1; i++) {
            if (readFieldOrderIfDiff[i].pos() != 0) {
                throw new IOException("Corrupt ResolvingDecoder.");
            }
            char readArrayStart2 = resolvingDecoder.readArrayStart();
            List<EventRecordVersionedV2> list2 = this.f15469a;
            if (list2 == null) {
                list2 = new GenericData.Array<>(readArrayStart2, f15465b.getField("events").schema());
                this.f15469a = list2;
            } else {
                list2.clear();
            }
            GenericData.Array array2 = list2 instanceof GenericData.Array ? list2 : null;
            while (0 < readArrayStart2) {
                while (readArrayStart2 != 0) {
                    EventRecordVersionedV2 eventRecordVersionedV23 = array2 != null ? (EventRecordVersionedV2) array2.peek() : null;
                    EventRecordVersionedV2 eventRecordVersionedV24 = eventRecordVersionedV23;
                    if (eventRecordVersionedV23 == null) {
                        eventRecordVersionedV24 = new EventRecordVersionedV2();
                    }
                    eventRecordVersionedV24.customDecode(resolvingDecoder);
                    list2.add(eventRecordVersionedV24);
                    readArrayStart2--;
                }
                readArrayStart2 = resolvingDecoder.arrayNext();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        long size = this.f15469a.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (EventRecordVersionedV2 eventRecordVersionedV2 : this.f15469a) {
            c++;
            encoder.startItem();
            eventRecordVersionedV2.customEncode(encoder);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        if (i == 0) {
            return this.f15469a;
        }
        throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
    }

    public Schema getSchema() {
        return f15465b;
    }

    public SpecificData getSpecificData() {
        return f15466c;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f15469a = (List) obj;
            return;
        }
        throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f15468e.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f15467d.write(this, SpecificData.getEncoder(objectOutput));
    }
}
