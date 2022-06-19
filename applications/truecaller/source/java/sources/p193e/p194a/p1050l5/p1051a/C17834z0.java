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
import org.apache.avro.util.Utf8;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.z0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/z0.class */
public class C17834z0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f50759e;

    /* renamed from: f */
    public static SpecificData f50760f;

    /* renamed from: g */
    public static final DatumWriter<C17834z0> f50761g;

    /* renamed from: h */
    public static final DatumReader<C17834z0> f50762h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50763a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50764b;
    @Deprecated

    /* renamed from: c */
    public List<C17843z3> f50765c;
    @Deprecated

    /* renamed from: d */
    public List<CharSequence> f50766d;

    /* renamed from: e.a.l5.a.z0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/z0$b.class */
    public static class C17836b extends SpecificRecordBuilderBase<C17834z0> implements RecordBuilder<C17834z0> {

        /* renamed from: a */
        public List<C17843z3> f50767a;

        /* renamed from: b */
        public List<CharSequence> f50768b;

        public C17836b(C17835a c17835a) {
            super(C17834z0.f50759e);
        }

        /* renamed from: a */
        public C17834z0 build() {
            try {
                C17834z0 c17834z0 = new C17834z0();
                c17834z0.f50763a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17834z0.f50764b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17834z0.f50765c = fieldSetFlags()[2] ? this.f50767a : (List) defaultValue(fields()[2]);
                c17834z0.f50766d = fieldSetFlags()[3] ? this.f50768b : (List) defaultValue(fields()[3]);
                return c17834z0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppInstalledPackagesV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"installedPackages\",\"type\":[\"null\",{\"type\":\"array\",\"items\":{\"type\":\"record\",\"name\":\"PackageDetails\",\"fields\":[{\"name\":\"appName\",\"type\":\"string\"},{\"name\":\"versionId\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"versionCode\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"installedDate\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"updatedDate\",\"type\":[\"null\",\"string\"],\"default\":null}]}}],\"doc\":\"list of packageName values on user's device\",\"default\":null},{\"name\":\"uninstalledPackages\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"doc\":\"list of uninstalled packageName values on user's device\",\"default\":null}]}");
        f50759e = m8613i0;
        SpecificData specificData = new SpecificData();
        f50760f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50760f, m8613i0);
        f50761g = f50760f.createDatumWriter(m8613i0);
        f50762h = f50760f.createDatumReader(m8613i0);
    }

    /* JADX WARN: Type inference failed for: r0v124, types: [long] */
    /* JADX WARN: Type inference failed for: r0v135, types: [long] */
    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    /* JADX WARN: Type inference failed for: r0v169, types: [long] */
    /* JADX WARN: Type inference failed for: r0v177, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        char c;
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        List<CharSequence> list = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50763a = null;
            } else {
                if (this.f50763a == null) {
                    this.f50763a = new C17638l3();
                }
                this.f50763a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50764b = null;
            } else {
                if (this.f50764b == null) {
                    this.f50764b = new ClientHeaderV2();
                }
                this.f50764b.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50765c = null;
            } else {
                char readArrayStart = resolvingDecoder.readArrayStart();
                List<C17843z3> list2 = this.f50765c;
                if (list2 == null) {
                    list2 = new GenericData.Array<>(readArrayStart, (Schema) C22128a.m8706H1(f50759e, "installedPackages", 1));
                    this.f50765c = list2;
                } else {
                    list2.clear();
                }
                GenericData.Array array = list2 instanceof GenericData.Array ? list2 : null;
                while (0 < readArrayStart) {
                    while (readArrayStart != 0) {
                        C17843z3 c17843z3 = array != null ? (C17843z3) array.peek() : null;
                        C17843z3 c17843z32 = c17843z3;
                        if (c17843z3 == null) {
                            c17843z32 = new C17843z3();
                        }
                        c17843z32.customDecode(resolvingDecoder);
                        list2.add(c17843z32);
                        readArrayStart--;
                    }
                    readArrayStart = resolvingDecoder.arrayNext();
                }
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50766d = null;
                return;
            }
            char readArrayStart2 = resolvingDecoder.readArrayStart();
            List<CharSequence> list3 = this.f50766d;
            if (list3 == null) {
                list3 = new GenericData.Array<>(readArrayStart2, (Schema) C22128a.m8706H1(f50759e, "uninstalledPackages", 1));
                this.f50766d = list3;
            } else {
                list3.clear();
            }
            GenericData.Array array2 = list3 instanceof GenericData.Array ? list3 : null;
            while (0 < readArrayStart2) {
                while (readArrayStart2 != 0) {
                    Utf8 utf8 = array2 != null ? (CharSequence) array2.peek() : null;
                    readArrayStart2 = C22128a.m8594n(resolvingDecoder, utf8 instanceof Utf8 ? utf8 : null, list3, readArrayStart2, 1L);
                }
                readArrayStart2 = resolvingDecoder.arrayNext();
            }
            return;
        }
        char c2 = 0;
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        if (pos != 3) {
                            throw new IOException("Corrupt ResolvingDecoder.");
                        }
                        if (resolvingDecoder.readIndex() == 1) {
                            char readArrayStart3 = resolvingDecoder.readArrayStart();
                            List<CharSequence> list4 = this.f50766d;
                            if (list4 == null) {
                                list4 = new GenericData.Array<>(readArrayStart3, (Schema) C22128a.m8706H1(f50759e, "uninstalledPackages", 1));
                                this.f50766d = list4;
                            } else {
                                list4.clear();
                            }
                            GenericData.Array array3 = list4 instanceof GenericData.Array ? list4 : null;
                            while (true) {
                                c = c2;
                                if (c2 >= readArrayStart3) {
                                    break;
                                }
                                char c3 = readArrayStart3;
                                while (c3 != c2) {
                                    Utf8 utf82 = array3 != null ? (CharSequence) array3.peek() : null;
                                    c3 = C22128a.m8594n(resolvingDecoder, utf82 instanceof Utf8 ? utf82 : null, list4, c3, 1L);
                                    c2 = 0;
                                }
                                readArrayStart3 = resolvingDecoder.arrayNext();
                                c2 = 0;
                            }
                        } else {
                            resolvingDecoder.readNull();
                            this.f50766d = list;
                        }
                    } else if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f50765c = null;
                        list = null;
                        c2 = 0;
                    } else {
                        char readArrayStart4 = resolvingDecoder.readArrayStart();
                        List<C17843z3> list5 = this.f50765c;
                        if (list5 == null) {
                            list5 = new GenericData.Array<>(readArrayStart4, (Schema) C22128a.m8706H1(f50759e, "installedPackages", 1));
                            this.f50765c = list5;
                        } else {
                            list5.clear();
                        }
                        GenericData.Array array4 = list5 instanceof GenericData.Array ? list5 : null;
                        while (0 < readArrayStart4) {
                            while (readArrayStart4 != 0) {
                                C17843z3 c17843z33 = array4 != null ? (C17843z3) array4.peek() : null;
                                C17843z3 c17843z34 = c17843z33;
                                if (c17843z33 == null) {
                                    c17843z34 = new C17843z3();
                                }
                                c17843z34.customDecode(resolvingDecoder);
                                list5.add(c17843z34);
                                readArrayStart4--;
                            }
                            readArrayStart4 = resolvingDecoder.arrayNext();
                        }
                        c = 0;
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50764b = null;
                } else {
                    if (this.f50764b == null) {
                        this.f50764b = new ClientHeaderV2();
                    }
                    this.f50764b.customDecode(resolvingDecoder);
                    c = c2;
                }
                c2 = c;
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50763a = null;
            } else {
                if (this.f50763a == null) {
                    this.f50763a = new C17638l3();
                }
                this.f50763a.customDecode(resolvingDecoder);
            }
            list = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50763a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50763a.customEncode(encoder);
        }
        if (this.f50764b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50764b.customEncode(encoder);
        }
        if (this.f50765c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            long size = this.f50765c.size();
            encoder.writeArrayStart();
            encoder.setItemCount(size);
            char c = 0;
            for (C17843z3 c17843z3 : this.f50765c) {
                c++;
                encoder.startItem();
                c17843z3.customEncode(encoder);
            }
            encoder.writeArrayEnd();
            if (c != size) {
                throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size, ", but element count was "), c, StringConstant.DOT));
            }
        }
        if (this.f50766d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        long size2 = this.f50766d.size();
        encoder.writeArrayStart();
        encoder.setItemCount(size2);
        char c2 = 0;
        for (CharSequence charSequence : this.f50766d) {
            c2++;
            encoder.startItem();
            encoder.writeString(charSequence);
        }
        encoder.writeArrayEnd();
        if (c2 != size2) {
            throw new ConcurrentModificationException(C22128a.m8693K2(C22128a.m8712G("Array-size written was ", size2, ", but element count was "), c2, StringConstant.DOT));
        }
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50764b;
            }
            if (i == 2) {
                return this.f50765c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50766d;
        }
        return this.f50763a;
    }

    public Schema getSchema() {
        return f50759e;
    }

    public SpecificData getSpecificData() {
        return f50760f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50763a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50764b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50765c = (List) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50766d = (List) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50762h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50761g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
