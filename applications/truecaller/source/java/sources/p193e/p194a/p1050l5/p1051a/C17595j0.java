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
/* renamed from: e.a.l5.a.j0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/j0.class */
public class C17595j0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: d */
    public static final Schema f49549d;

    /* renamed from: e */
    public static SpecificData f49550e;

    /* renamed from: f */
    public static final DatumWriter<C17595j0> f49551f;

    /* renamed from: g */
    public static final DatumReader<C17595j0> f49552g;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49553a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49554b;
    @Deprecated

    /* renamed from: c */
    public List<C17727r3> f49555c;

    /* renamed from: e.a.l5.a.j0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/j0$b.class */
    public static class C17597b extends SpecificRecordBuilderBase<C17595j0> implements RecordBuilder<C17595j0> {

        /* renamed from: a */
        public List<C17727r3> f49556a;

        public C17597b(C17596a c17596a) {
            super(C17595j0.f49549d);
        }

        /* renamed from: a */
        public C17595j0 build() {
            try {
                C17595j0 c17595j0 = new C17595j0();
                c17595j0.f49553a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17595j0.f49554b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17595j0.f49555c = fieldSetFlags()[2] ? this.f49556a : (List) defaultValue(fields()[2]);
                return c17595j0;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCreateGroupChatMembersAdded\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Group chat initial members are added, step 2/4 in process\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"participants\",\"type\":{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"ImParticipant\",\"fields\":[{\"name\":\"imId\",\"type\":\"string\"},{\"name\":\"phoneNumber\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"info\",\"type\":{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}}]}}}]}");
        f49549d = m8613i0;
        SpecificData specificData = new SpecificData();
        f49550e = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49550e, m8613i0);
        f49551f = f49550e.createDatumWriter(m8613i0);
        f49552g = f49550e.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49553a = null;
            } else {
                if (this.f49553a == null) {
                    this.f49553a = new C17638l3();
                }
                this.f49553a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49554b = null;
            } else {
                if (this.f49554b == null) {
                    this.f49554b = new ClientHeaderV2();
                }
                this.f49554b.customDecode(resolvingDecoder);
            }
            char readArrayStart = resolvingDecoder.readArrayStart();
            List<C17727r3> list = this.f49555c;
            if (list == null) {
                list = new GenericData.Array<>(readArrayStart, f49549d.getField("participants").schema());
                this.f49555c = list;
            } else {
                list.clear();
            }
            GenericData.Array array = list instanceof GenericData.Array ? list : null;
            while (0 < readArrayStart) {
                while (readArrayStart != 0) {
                    C17727r3 c17727r3 = array != null ? (C17727r3) array.peek() : null;
                    C17727r3 c17727r32 = c17727r3;
                    if (c17727r3 == null) {
                        c17727r32 = new C17727r3();
                    }
                    c17727r32.customDecode(resolvingDecoder);
                    list.add(c17727r32);
                    readArrayStart--;
                }
                readArrayStart = resolvingDecoder.arrayNext();
            }
            return;
        }
        for (int i = 0; i < 3; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    }
                    char readArrayStart2 = resolvingDecoder.readArrayStart();
                    List<C17727r3> list2 = this.f49555c;
                    if (list2 == null) {
                        list2 = new GenericData.Array<>(readArrayStart2, f49549d.getField("participants").schema());
                        this.f49555c = list2;
                    } else {
                        list2.clear();
                    }
                    GenericData.Array array2 = list2 instanceof GenericData.Array ? list2 : null;
                    while (0 < readArrayStart2) {
                        while (readArrayStart2 != 0) {
                            C17727r3 c17727r33 = array2 != null ? (C17727r3) array2.peek() : null;
                            C17727r3 c17727r34 = c17727r33;
                            if (c17727r33 == null) {
                                c17727r34 = new C17727r3();
                            }
                            c17727r34.customDecode(resolvingDecoder);
                            list2.add(c17727r34);
                            readArrayStart2--;
                        }
                        readArrayStart2 = resolvingDecoder.arrayNext();
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49554b = null;
                } else {
                    if (this.f49554b == null) {
                        this.f49554b = new ClientHeaderV2();
                    }
                    this.f49554b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49553a = null;
            } else {
                if (this.f49553a == null) {
                    this.f49553a = new C17638l3();
                }
                this.f49553a.customDecode(resolvingDecoder);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49553a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49553a.customEncode(encoder);
        }
        if (this.f49554b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49554b.customEncode(encoder);
        }
        long size = this.f49555c.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size);
        char c = 0;
        for (C17727r3 c17727r3 : this.f49555c) {
            c++;
            encoder.startItem();
            c17727r3.customEncode(encoder);
        }
        encoder.writeArrayEnd();
        if (c == size) {
            return;
        }
        throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49554b;
            }
            if (i != 2) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49555c;
        }
        return this.f49553a;
    }

    public Schema getSchema() {
        return f49549d;
    }

    public SpecificData getSpecificData() {
        return f49550e;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49553a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49554b = (ClientHeaderV2) obj;
        } else if (i != 2) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49555c = (List) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49552g.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49551f.write(this, SpecificData.getEncoder(objectOutput));
    }
}
