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
/* renamed from: e.a.l5.a.r1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/r1.class */
public class C17721r1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: r */
    public static final Schema f50171r;

    /* renamed from: s */
    public static SpecificData f50172s;

    /* renamed from: t */
    public static final DatumWriter<C17721r1> f50173t;

    /* renamed from: u */
    public static final DatumReader<C17721r1> f50174u;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50175a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50176b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50177c;
    @Deprecated

    /* renamed from: d */
    public boolean f50178d;
    @Deprecated

    /* renamed from: e */
    public boolean f50179e;
    @Deprecated

    /* renamed from: f */
    public Boolean f50180f;
    @Deprecated

    /* renamed from: g */
    public Boolean f50181g;
    @Deprecated

    /* renamed from: h */
    public Boolean f50182h;
    @Deprecated

    /* renamed from: i */
    public Boolean f50183i;
    @Deprecated

    /* renamed from: j */
    public Boolean f50184j;
    @Deprecated

    /* renamed from: k */
    public Boolean f50185k;
    @Deprecated

    /* renamed from: l */
    public Boolean f50186l;
    @Deprecated

    /* renamed from: m */
    public Boolean f50187m;
    @Deprecated

    /* renamed from: n */
    public Boolean f50188n;
    @Deprecated

    /* renamed from: o */
    public Boolean f50189o;
    @Deprecated

    /* renamed from: p */
    public Boolean f50190p;
    @Deprecated

    /* renamed from: q */
    public Boolean f50191q;

    /* renamed from: e.a.l5.a.r1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/r1$b.class */
    public static class C17723b extends SpecificRecordBuilderBase<C17721r1> implements RecordBuilder<C17721r1> {

        /* renamed from: a */
        public CharSequence f50192a;

        /* renamed from: b */
        public boolean f50193b;

        /* renamed from: c */
        public boolean f50194c;

        /* renamed from: d */
        public Boolean f50195d;

        /* renamed from: e */
        public Boolean f50196e;

        /* renamed from: f */
        public Boolean f50197f;

        /* renamed from: g */
        public Boolean f50198g;

        /* renamed from: h */
        public Boolean f50199h;

        /* renamed from: i */
        public Boolean f50200i;

        /* renamed from: j */
        public Boolean f50201j;

        /* renamed from: k */
        public Boolean f50202k;

        /* renamed from: l */
        public Boolean f50203l;

        /* renamed from: m */
        public Boolean f50204m;

        /* renamed from: n */
        public Boolean f50205n;

        /* renamed from: o */
        public Boolean f50206o;

        public C17723b(C17722a c17722a) {
            super(C17721r1.f50171r);
        }

        /* renamed from: a */
        public C17721r1 build() {
            try {
                C17721r1 c17721r1 = new C17721r1();
                c17721r1.f50175a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17721r1.f50176b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17721r1.f50177c = fieldSetFlags()[2] ? this.f50192a : (CharSequence) defaultValue(fields()[2]);
                c17721r1.f50178d = fieldSetFlags()[3] ? this.f50193b : ((Boolean) defaultValue(fields()[3])).booleanValue();
                c17721r1.f50179e = fieldSetFlags()[4] ? this.f50194c : ((Boolean) defaultValue(fields()[4])).booleanValue();
                c17721r1.f50180f = fieldSetFlags()[5] ? this.f50195d : (Boolean) defaultValue(fields()[5]);
                c17721r1.f50181g = fieldSetFlags()[6] ? this.f50196e : (Boolean) defaultValue(fields()[6]);
                c17721r1.f50182h = fieldSetFlags()[7] ? this.f50197f : (Boolean) defaultValue(fields()[7]);
                c17721r1.f50183i = fieldSetFlags()[8] ? this.f50198g : (Boolean) defaultValue(fields()[8]);
                c17721r1.f50184j = fieldSetFlags()[9] ? this.f50199h : (Boolean) defaultValue(fields()[9]);
                c17721r1.f50185k = fieldSetFlags()[10] ? this.f50200i : (Boolean) defaultValue(fields()[10]);
                c17721r1.f50186l = fieldSetFlags()[11] ? this.f50201j : (Boolean) defaultValue(fields()[11]);
                c17721r1.f50187m = fieldSetFlags()[12] ? this.f50202k : (Boolean) defaultValue(fields()[12]);
                c17721r1.f50188n = fieldSetFlags()[13] ? this.f50203l : (Boolean) defaultValue(fields()[13]);
                c17721r1.f50189o = fieldSetFlags()[14] ? this.f50204m : (Boolean) defaultValue(fields()[14]);
                c17721r1.f50190p = fieldSetFlags()[15] ? this.f50205n : (Boolean) defaultValue(fields()[15]);
                c17721r1.f50191q = fieldSetFlags()[16] ? this.f50206o : (Boolean) defaultValue(fields()[16]);
                return c17721r1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppPermissionState\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Application permissions state\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"dialerAppPackage\",\"type\":[\"null\",\"string\"],\"doc\":\"Current user default dialer app. eg. \\\"com.truecaller\\\"\"},{\"name\":\"notificationsShow\",\"type\":\"boolean\",\"doc\":\"If application can show a notification\"},{\"name\":\"notificationsAccess\",\"type\":\"boolean\",\"doc\":\"Application has permission to listen and modify all notifications\"},{\"name\":\"camera\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has access to camera\"},{\"name\":\"contacts\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has access to contacts\"},{\"name\":\"storage\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has access to external storage\"},{\"name\":\"phone\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to read phone state\"},{\"name\":\"location\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to access user location\"},{\"name\":\"drawOnTop\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to draw on top of other apps\"},{\"name\":\"batteryOptimization\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application is in power whitelist\"},{\"name\":\"settingsWrite\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application can modify system settings\"},{\"name\":\"callerIdApp\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application is set as \\\"Call screening app\\\"\"},{\"name\":\"callLog\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to read call logs\",\"default\":null},{\"name\":\"microphone\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to use microphone\",\"default\":null},{\"name\":\"accessibility\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Application has permission to use accessibility features\",\"default\":null}]}");
        f50171r = m8613i0;
        SpecificData specificData = new SpecificData();
        f50172s = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50172s, m8613i0);
        f50173t = f50172s.createDatumWriter(m8613i0);
        f50174u = f50172s.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50175a = null;
            } else {
                if (this.f50175a == null) {
                    this.f50175a = new C17638l3();
                }
                this.f50175a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50176b = null;
            } else {
                if (this.f50176b == null) {
                    this.f50176b = new ClientHeaderV2();
                }
                this.f50176b.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50177c = null;
            } else {
                Utf8 utf8 = this.f50177c;
                this.f50177c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            }
            this.f50178d = resolvingDecoder.readBoolean();
            this.f50179e = resolvingDecoder.readBoolean();
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50180f = null;
            } else {
                this.f50180f = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50181g = null;
            } else {
                this.f50181g = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50182h = null;
            } else {
                this.f50182h = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50183i = null;
            } else {
                this.f50183i = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50184j = null;
            } else {
                this.f50184j = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50185k = null;
            } else {
                this.f50185k = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50186l = null;
            } else {
                this.f50186l = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50187m = null;
            } else {
                this.f50187m = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50188n = null;
            } else {
                this.f50188n = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50189o = null;
            } else {
                this.f50189o = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50190p = null;
            } else {
                this.f50190p = Boolean.valueOf(resolvingDecoder.readBoolean());
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f50191q = Boolean.valueOf(resolvingDecoder.readBoolean());
                return;
            }
            resolvingDecoder.readNull();
            this.f50191q = null;
            return;
        }
        for (int i = 0; i < 17; i++) {
            switch (readFieldOrderIfDiff[i].pos()) {
                case 0:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50175a = null;
                        break;
                    } else {
                        if (this.f50175a == null) {
                            this.f50175a = new C17638l3();
                        }
                        this.f50175a.customDecode(resolvingDecoder);
                        break;
                    }
                case 1:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50176b = null;
                        break;
                    } else {
                        if (this.f50176b == null) {
                            this.f50176b = new ClientHeaderV2();
                        }
                        this.f50176b.customDecode(resolvingDecoder);
                        break;
                    }
                case 2:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50177c = null;
                        break;
                    } else {
                        Utf8 utf82 = this.f50177c;
                        this.f50177c = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
                        break;
                    }
                case 3:
                    this.f50178d = resolvingDecoder.readBoolean();
                    break;
                case 4:
                    this.f50179e = resolvingDecoder.readBoolean();
                    break;
                case 5:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50180f = null;
                        break;
                    } else {
                        this.f50180f = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 6:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50181g = null;
                        break;
                    } else {
                        this.f50181g = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 7:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50182h = null;
                        break;
                    } else {
                        this.f50182h = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 8:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50183i = null;
                        break;
                    } else {
                        this.f50183i = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 9:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50184j = null;
                        break;
                    } else {
                        this.f50184j = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 10:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50185k = null;
                        break;
                    } else {
                        this.f50185k = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 11:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50186l = null;
                        break;
                    } else {
                        this.f50186l = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 12:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50187m = null;
                        break;
                    } else {
                        this.f50187m = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 13:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50188n = null;
                        break;
                    } else {
                        this.f50188n = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 14:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50189o = null;
                        break;
                    } else {
                        this.f50189o = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 15:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50190p = null;
                        break;
                    } else {
                        this.f50190p = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                case 16:
                    if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50191q = null;
                        break;
                    } else {
                        this.f50191q = Boolean.valueOf(resolvingDecoder.readBoolean());
                        break;
                    }
                default:
                    throw new IOException("Corrupt ResolvingDecoder.");
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50175a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50175a.customEncode(encoder);
        }
        if (this.f50176b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50176b.customEncode(encoder);
        }
        if (this.f50177c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f50177c);
        }
        encoder.writeBoolean(this.f50178d);
        encoder.writeBoolean(this.f50179e);
        if (this.f50180f == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50180f.booleanValue());
        }
        if (this.f50181g == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50181g.booleanValue());
        }
        if (this.f50182h == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50182h.booleanValue());
        }
        if (this.f50183i == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50183i.booleanValue());
        }
        if (this.f50184j == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50184j.booleanValue());
        }
        if (this.f50185k == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50185k.booleanValue());
        }
        if (this.f50186l == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50186l.booleanValue());
        }
        if (this.f50187m == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50187m.booleanValue());
        }
        if (this.f50188n == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50188n.booleanValue());
        }
        if (this.f50189o == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50189o.booleanValue());
        }
        if (this.f50190p == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeBoolean(this.f50190p.booleanValue());
        }
        if (this.f50191q == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeBoolean(this.f50191q.booleanValue());
    }

    public Object get(int i) {
        switch (i) {
            case 0:
                return this.f50175a;
            case 1:
                return this.f50176b;
            case 2:
                return this.f50177c;
            case 3:
                return Boolean.valueOf(this.f50178d);
            case 4:
                return Boolean.valueOf(this.f50179e);
            case 5:
                return this.f50180f;
            case 6:
                return this.f50181g;
            case 7:
                return this.f50182h;
            case 8:
                return this.f50183i;
            case 9:
                return this.f50184j;
            case 10:
                return this.f50185k;
            case 11:
                return this.f50186l;
            case 12:
                return this.f50187m;
            case 13:
                return this.f50188n;
            case 14:
                return this.f50189o;
            case 15:
                return this.f50190p;
            case 16:
                return this.f50191q;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public Schema getSchema() {
        return f50171r;
    }

    public SpecificData getSpecificData() {
        return f50172s;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        switch (i) {
            case 0:
                this.f50175a = (C17638l3) obj;
                return;
            case 1:
                this.f50176b = (ClientHeaderV2) obj;
                return;
            case 2:
                this.f50177c = (CharSequence) obj;
                return;
            case 3:
                this.f50178d = ((Boolean) obj).booleanValue();
                return;
            case 4:
                this.f50179e = ((Boolean) obj).booleanValue();
                return;
            case 5:
                this.f50180f = (Boolean) obj;
                return;
            case 6:
                this.f50181g = (Boolean) obj;
                return;
            case 7:
                this.f50182h = (Boolean) obj;
                return;
            case 8:
                this.f50183i = (Boolean) obj;
                return;
            case 9:
                this.f50184j = (Boolean) obj;
                return;
            case 10:
                this.f50185k = (Boolean) obj;
                return;
            case 11:
                this.f50186l = (Boolean) obj;
                return;
            case 12:
                this.f50187m = (Boolean) obj;
                return;
            case 13:
                this.f50188n = (Boolean) obj;
                return;
            case 14:
                this.f50189o = (Boolean) obj;
                return;
            case 15:
                this.f50190p = (Boolean) obj;
                return;
            case 16:
                this.f50191q = (Boolean) obj;
                return;
            default:
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50174u.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50173t.write(this, SpecificData.getEncoder(objectOutput));
    }
}
