package p193e.p194a.p1050l5.p1051a;

import com.truecaller.tracking.events.ClientHeaderV2;
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
import org.apache.avro.util.Utf8;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.r */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/r.class */
public class C17715r extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f50143e;

    /* renamed from: f */
    public static SpecificData f50144f;

    /* renamed from: g */
    public static final DatumWriter<C17715r> f50145g;

    /* renamed from: h */
    public static final DatumReader<C17715r> f50146h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50147a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50148b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50149c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50150d;

    /* renamed from: e.a.l5.a.r$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/r$b.class */
    public static class C17717b extends SpecificRecordBuilderBase<C17715r> implements RecordBuilder<C17715r> {

        /* renamed from: a */
        public CharSequence f50151a;

        /* renamed from: b */
        public CharSequence f50152b;

        public C17717b() {
            super(C17715r.f50143e);
        }

        public C17717b(C17716a c17716a) {
            super(C17715r.f50143e);
        }

        /* renamed from: a */
        public C17715r build() {
            try {
                C17715r c17715r = new C17715r();
                c17715r.f50147a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17715r.f50148b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17715r.f50149c = fieldSetFlags()[2] ? this.f50151a : (CharSequence) defaultValue(fields()[2]);
                c17715r.f50150d = fieldSetFlags()[3] ? this.f50152b : (CharSequence) defaultValue(fields()[3]);
                return c17715r;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17717b m15831b(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f50151a = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: c */
        public C17717b m15830c(CharSequence charSequence) {
            validate(fields()[3], charSequence);
            this.f50152b = charSequence;
            fieldSetFlags()[3] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCallAlertNotificationShown\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"User received call alert notification\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"action\",\"type\":\"string\",\"doc\":\"Action taken\"},{\"name\":\"callContextMessageId\",\"type\":[\"null\",\"string\"],\"doc\":\"Possible call context message id, if it was passed\",\"default\":null}]}");
        f50143e = m8613i0;
        SpecificData specificData = new SpecificData();
        f50144f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50144f, m8613i0);
        f50145g = f50144f.createDatumWriter(m8613i0);
        f50146h = f50144f.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17717b m15833a() {
        return new C17717b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50147a = null;
            } else {
                if (this.f50147a == null) {
                    this.f50147a = new C17638l3();
                }
                this.f50147a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50148b = null;
            } else {
                if (this.f50148b == null) {
                    this.f50148b = new ClientHeaderV2();
                }
                this.f50148b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50149c;
            this.f50149c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50150d = null;
                return;
            }
            Utf8 utf82 = this.f50150d;
            Utf8 utf83 = null;
            if (utf82 instanceof Utf8) {
                utf83 = utf82;
            }
            this.f50150d = resolvingDecoder.readString(utf83);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf84 = this.f50149c;
                        this.f50149c = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f50150d = null;
                        } else {
                            Utf8 utf85 = this.f50150d;
                            this.f50150d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50148b = null;
                } else {
                    if (this.f50148b == null) {
                        this.f50148b = new ClientHeaderV2();
                    }
                    this.f50148b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50147a = null;
            } else {
                if (this.f50147a == null) {
                    this.f50147a = new C17638l3();
                }
                this.f50147a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50147a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50147a.customEncode(encoder);
        }
        if (this.f50148b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50148b.customEncode(encoder);
        }
        encoder.writeString(this.f50149c);
        if (this.f50150d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f50150d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50148b;
            }
            if (i == 2) {
                return this.f50149c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50150d;
        }
        return this.f50147a;
    }

    public Schema getSchema() {
        return f50143e;
    }

    public SpecificData getSpecificData() {
        return f50144f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50147a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50148b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50149c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50150d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50146h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50145g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
