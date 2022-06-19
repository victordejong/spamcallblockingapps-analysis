package p193e.p194a.p1050l5.p1051a;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.tracking.events.ClientHeaderV2;
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
/* renamed from: e.a.l5.a.f1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/f1.class */
public class C17526f1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49205f;

    /* renamed from: g */
    public static SpecificData f49206g;

    /* renamed from: h */
    public static final DatumWriter<C17526f1> f49207h;

    /* renamed from: i */
    public static final DatumReader<C17526f1> f49208i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49209a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49210b;
    @Deprecated

    /* renamed from: c */
    public boolean f49211c;
    @Deprecated

    /* renamed from: d */
    public List<C17800w3> f49212d;
    @Deprecated

    /* renamed from: e */
    public List<C17787v3> f49213e;

    /* renamed from: e.a.l5.a.f1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/f1$b.class */
    public static class C17528b extends SpecificRecordBuilderBase<C17526f1> implements RecordBuilder<C17526f1> {

        /* renamed from: a */
        public boolean f49214a;

        /* renamed from: b */
        public List<C17800w3> f49215b;

        /* renamed from: c */
        public List<C17787v3> f49216c;

        public C17528b(C17527a c17527a) {
            super(C17526f1.f49205f);
        }

        /* renamed from: a */
        public C17526f1 build() {
            try {
                C17526f1 c17526f1 = new C17526f1();
                c17526f1.f49209a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17526f1.f49210b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17526f1.f49211c = fieldSetFlags()[2] ? this.f49214a : ((Boolean) defaultValue(fields()[2])).booleanValue();
                c17526f1.f49212d = fieldSetFlags()[3] ? this.f49215b : (List) defaultValue(fields()[3]);
                c17526f1.f49213e = fieldSetFlags()[4] ? this.f49216c : (List) defaultValue(fields()[4]);
                return c17526f1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppNotificationSettings\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"globalSetting\",\"type\":\"boolean\",\"doc\":\"Global user notification setting\"},{\"name\":\"groups\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"NotificationGroup\",\"fields\":[{\"name\":\"id\",\"type\":\"string\",\"doc\":\"Group id\"},{\"name\":\"groupSetting\",\"type\":\"boolean\",\"doc\":\"Group level notification setting\"},{\"name\":\"channels\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"NotificationChannel\",\"fields\":[{\"name\":\"id\",\"type\":\"string\",\"doc\":\"Unique id of the channel\"},{\"name\":\"channelSetting\",\"type\":\"boolean\",\"doc\":\"User setting for the channel\"}]}},\"doc\":\"Channels which belong to this group\"}]}},\"doc\":\"Notification groups\"},{\"name\":\"otherChannels\",\"type\":{\"type\":\"array\",\"items\":\"NotificationChannel\"},\"doc\":\"Notification channels without a group\"}]}");
        f49205f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49206g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49206g, m8613i0);
        f49207h = f49206g.createDatumWriter(m8613i0);
        f49208i = f49206g.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /* JADX WARN: Type inference failed for: r0v131, types: [long] */
    /* JADX WARN: Type inference failed for: r0v146, types: [long] */
    /* JADX WARN: Type inference failed for: r0v154, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49209a = null;
            } else {
                if (this.f49209a == null) {
                    this.f49209a = new C17638l3();
                }
                this.f49209a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49210b = null;
            } else {
                if (this.f49210b == null) {
                    this.f49210b = new ClientHeaderV2();
                }
                this.f49210b.customDecode(resolvingDecoder);
            }
            this.f49211c = resolvingDecoder.readBoolean();
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<C17800w3> list = this.f49212d;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f49205f.getField("groups").schema());
                this.f49212d = list;
            } else {
                list.clear();
            }
            GenericData.Array array = list instanceof GenericData.Array ? list : null;
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    C17800w3 c17800w3 = array != null ? (C17800w3) array.peek() : null;
                    C17800w3 c17800w32 = c17800w3;
                    if (c17800w3 == null) {
                        c17800w32 = new C17800w3();
                    }
                    c17800w32.customDecode(resolvingDecoder);
                    list.add(c17800w32);
                    readArrayStart--;
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            char readArrayStart2 = resolvingDecoder.readArrayStart();
            List<C17787v3> list2 = this.f49213e;
            if (list2 == null) {
                list2 = new GenericData.Array<>(readArrayStart2, f49205f.getField("otherChannels").schema());
                this.f49213e = list2;
            } else {
                list2.clear();
            }
            GenericData.Array array2 = list2 instanceof GenericData.Array ? list2 : null;
            while (0 < readArrayStart2) {
                while (readArrayStart2 != 0) {
                    C17787v3 c17787v3 = array2 != null ? (C17787v3) array2.peek() : null;
                    C17787v3 c17787v32 = c17787v3;
                    if (c17787v3 == null) {
                        c17787v32 = new C17787v3();
                    }
                    c17787v32.customDecode(resolvingDecoder);
                    list2.add(c17787v32);
                    readArrayStart2--;
                }
                readArrayStart2 = resolvingDecoder.arrayNext();
            }
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        this.f49211c = resolvingDecoder.readBoolean();
                    } else if (pos == 3) {
                        char readArrayStart3 = resolvingDecoder.readArrayStart();
                        List<C17800w3> list3 = this.f49212d;
                        if (list3 == null) {
                            list3 = new GenericData.Array<>(readArrayStart3, f49205f.getField("groups").schema());
                            this.f49212d = list3;
                        } else {
                            list3.clear();
                        }
                        GenericData.Array array3 = list3 instanceof GenericData.Array ? list3 : null;
                        while (0 < readArrayStart3) {
                            while (readArrayStart3 != 0) {
                                C17800w3 c17800w33 = array3 != null ? (C17800w3) array3.peek() : null;
                                C17800w3 c17800w34 = c17800w33;
                                if (c17800w33 == null) {
                                    c17800w34 = new C17800w3();
                                }
                                c17800w34.customDecode(resolvingDecoder);
                                list3.add(c17800w34);
                                readArrayStart3--;
                            }
                            readArrayStart3 = resolvingDecoder.arrayNext();
                        }
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        char readArrayStart4 = resolvingDecoder.readArrayStart();
                        List<C17787v3> list4 = this.f49213e;
                        if (list4 == null) {
                            list4 = new GenericData.Array<>(readArrayStart4, f49205f.getField("otherChannels").schema());
                            this.f49213e = list4;
                        } else {
                            list4.clear();
                        }
                        GenericData.Array array4 = list4 instanceof GenericData.Array ? list4 : null;
                        while (0 < readArrayStart4) {
                            while (readArrayStart4 != 0) {
                                C17787v3 c17787v33 = array4 != null ? (C17787v3) array4.peek() : null;
                                C17787v3 c17787v34 = c17787v33;
                                if (c17787v33 == null) {
                                    c17787v34 = new C17787v3();
                                }
                                c17787v34.customDecode(resolvingDecoder);
                                list4.add(c17787v34);
                                readArrayStart4--;
                            }
                            readArrayStart4 = resolvingDecoder.arrayNext();
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49210b = null;
                } else {
                    if (this.f49210b == null) {
                        this.f49210b = new ClientHeaderV2();
                    }
                    this.f49210b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49209a = null;
            } else {
                if (this.f49209a == null) {
                    this.f49209a = new C17638l3();
                }
                this.f49209a.customDecode(resolvingDecoder);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49209a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49209a.customEncode(encoder);
        }
        if (this.f49210b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49210b.customEncode(encoder);
        }
        encoder.writeBoolean(this.f49211c);
        long size = this.f49212d.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (C17800w3 c17800w3 : this.f49212d) {
            c++;
            encoder.startItem();
            c17800w3.customEncode(encoder);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            long size2 = this.f49213e.size();
            encoder.writeArrayStart();
            encoder.setItemCount(size2);
            char c2 = 0;
            for (C17787v3 c17787v3 : this.f49213e) {
                c2++;
                encoder.startItem();
                encoder.writeString(c17787v3.f50536a);
                encoder.writeBoolean(c17787v3.f50537b);
            }
            encoder.writeArrayEnd();
            if (c2 != size2) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size2, ", but element count was "), c2, StringConstant.DOT));
            }
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49210b;
            }
            if (i == 2) {
                return Boolean.valueOf(this.f49211c);
            }
            if (i == 3) {
                return this.f49212d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49213e;
        }
        return this.f49209a;
    }

    public Schema getSchema() {
        return f49205f;
    }

    public SpecificData getSpecificData() {
        return f49206g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49209a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49210b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49211c = ((Boolean) obj).booleanValue();
        } else if (i == 3) {
            this.f49212d = (List) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49213e = (List) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49208i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49207h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
