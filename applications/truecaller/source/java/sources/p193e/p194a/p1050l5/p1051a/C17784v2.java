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
/* renamed from: e.a.l5.a.v2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/v2.class */
public class C17784v2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f50520f;

    /* renamed from: g */
    public static SpecificData f50521g;

    /* renamed from: h */
    public static final DatumWriter<C17784v2> f50522h;

    /* renamed from: i */
    public static final DatumReader<C17784v2> f50523i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50524a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50525b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50526c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50527d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f50528e;

    /* renamed from: e.a.l5.a.v2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/v2$b.class */
    public static class C17786b extends SpecificRecordBuilderBase<C17784v2> implements RecordBuilder<C17784v2> {

        /* renamed from: a */
        public CharSequence f50529a;

        /* renamed from: b */
        public CharSequence f50530b;

        /* renamed from: c */
        public CharSequence f50531c;

        public C17786b(C17785a c17785a) {
            super(C17784v2.f50520f);
        }

        /* renamed from: a */
        public C17784v2 build() {
            try {
                C17784v2 c17784v2 = new C17784v2();
                c17784v2.f50524a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17784v2.f50525b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17784v2.f50526c = fieldSetFlags()[2] ? this.f50529a : (CharSequence) defaultValue(fields()[2]);
                c17784v2.f50527d = fieldSetFlags()[3] ? this.f50530b : (CharSequence) defaultValue(fields()[3]);
                c17784v2.f50528e = fieldSetFlags()[4] ? this.f50531c : (CharSequence) defaultValue(fields()[4]);
                return c17784v2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppViewAction\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Application View Action Event\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"action\",\"type\":\"string\",\"doc\":\"Event action, e.g. \\\"tag\\\"\"},{\"name\":\"subAction\",\"type\":[\"null\",\"string\"],\"doc\":\"Event sub-action, e.g. \\\"button\\\"\",\"default\":null},{\"name\":\"context\",\"type\":[\"null\",\"string\"],\"doc\":\"Event context, e.g. \\\"afterCall\\\"\",\"default\":null}]}");
        f50520f = m8613i0;
        SpecificData specificData = new SpecificData();
        f50521g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50521g, m8613i0);
        f50522h = f50521g.createDatumWriter(m8613i0);
        f50523i = f50521g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50524a = null;
            } else {
                if (this.f50524a == null) {
                    this.f50524a = new C17638l3();
                }
                this.f50524a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50525b = null;
            } else {
                if (this.f50525b == null) {
                    this.f50525b = new ClientHeaderV2();
                }
                this.f50525b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50526c;
            this.f50526c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50527d = null;
            } else {
                Utf8 utf82 = this.f50527d;
                this.f50527d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50528e = null;
                return;
            }
            Utf8 utf83 = this.f50528e;
            Utf8 utf84 = null;
            if (utf83 instanceof Utf8) {
                utf84 = utf83;
            }
            this.f50528e = resolvingDecoder.readString(utf84);
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf85 = this.f50526c;
                        this.f50526c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                    } else if (pos != 3) {
                        if (pos != 4) {
                            throw new IOException("Corrupt ResolvingDecoder.");
                        }
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f50528e = null;
                        } else {
                            Utf8 utf86 = this.f50528e;
                            this.f50528e = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                        }
                    } else if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50527d = null;
                    } else {
                        Utf8 utf87 = this.f50527d;
                        this.f50527d = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50525b = null;
                } else {
                    if (this.f50525b == null) {
                        this.f50525b = new ClientHeaderV2();
                    }
                    this.f50525b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50524a = null;
            } else {
                if (this.f50524a == null) {
                    this.f50524a = new C17638l3();
                }
                this.f50524a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50524a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50524a.customEncode(encoder);
        }
        if (this.f50525b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50525b.customEncode(encoder);
        }
        encoder.writeString(this.f50526c);
        if (this.f50527d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50527d);
        }
        if (this.f50528e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f50528e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50525b;
            }
            if (i == 2) {
                return this.f50526c;
            }
            if (i == 3) {
                return this.f50527d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50528e;
        }
        return this.f50524a;
    }

    public Schema getSchema() {
        return f50520f;
    }

    public SpecificData getSpecificData() {
        return f50521g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50524a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50525b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50526c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50527d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50528e = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50523i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50522h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
