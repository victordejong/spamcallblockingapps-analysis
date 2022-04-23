package com.explorestack.protobuf;

import com.explorestack.protobuf.DescriptorProtos;
import com.explorestack.protobuf.FieldSet;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.TextFormat;
import com.explorestack.protobuf.WireFormat;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.logging.Logger;
import okhttp3.internal.http2.Settings;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors.class */
public final class Descriptors {
    private static final Logger logger = Logger.getLogger(Descriptors.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.protobuf.Descriptors$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$1.class */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType;
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00fc -> B:102:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0100 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0104 -> B:72:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0108 -> B:66:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x010c -> B:80:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0110 -> B:76:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0114 -> B:90:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0118 -> B:84:0x006b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x011c -> B:100:0x0077). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0120 -> B:94:0x0083). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0124 -> B:70:0x008f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0128 -> B:64:0x009b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x012c -> B:78:0x00a7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0130 -> B:74:0x00b3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0134 -> B:88:0x00bf). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0138 -> B:82:0x00cb). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x013c -> B:98:0x00d7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0140 -> B:92:0x00e3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0144 -> B:68:0x00ef). Please submit an issue!!! */
        static {
            int[] iArr = new int[FieldDescriptor.JavaType.values().length];
            $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType = iArr;
            try {
                iArr[FieldDescriptor.JavaType.ENUM.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType[FieldDescriptor.JavaType.MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[FieldDescriptor.Type.values().length];
            $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type = iArr2;
            try {
                iArr2[FieldDescriptor.Type.INT32.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.SINT32.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.SFIXED32.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.UINT32.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.INT64.ordinal()] = 6;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.SINT64.ordinal()] = 7;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.SFIXED64.ordinal()] = 8;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.UINT64.ordinal()] = 9;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.FIXED64.ordinal()] = 10;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.FLOAT.ordinal()] = 11;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.DOUBLE.ordinal()] = 12;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.BOOL.ordinal()] = 13;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.STRING.ordinal()] = 14;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.ENUM.ordinal()] = 16;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.MESSAGE.ordinal()] = 17;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[FieldDescriptor.Type.GROUP.ordinal()] = 18;
            } catch (NoSuchFieldError e20) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$Descriptor.class */
    public static final class Descriptor extends GenericDescriptor {
        private final Descriptor containingType;
        private final EnumDescriptor[] enumTypes;
        private final FieldDescriptor[] extensions;
        private final FieldDescriptor[] fields;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private final Descriptor[] nestedTypes;
        private final OneofDescriptor[] oneofs;
        private DescriptorProtos.DescriptorProto proto;

        private Descriptor(DescriptorProtos.DescriptorProto descriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i) throws DescriptorValidationException {
            super(null);
            this.index = i;
            this.proto = descriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, descriptor, descriptorProto.getName());
            this.file = fileDescriptor;
            this.containingType = descriptor;
            this.oneofs = new OneofDescriptor[descriptorProto.getOneofDeclCount()];
            for (int i2 = 0; i2 < descriptorProto.getOneofDeclCount(); i2++) {
                this.oneofs[i2] = new OneofDescriptor(descriptorProto.getOneofDecl(i2), fileDescriptor, this, i2, null);
            }
            this.nestedTypes = new Descriptor[descriptorProto.getNestedTypeCount()];
            for (int i3 = 0; i3 < descriptorProto.getNestedTypeCount(); i3++) {
                this.nestedTypes[i3] = new Descriptor(descriptorProto.getNestedType(i3), fileDescriptor, this, i3);
            }
            this.enumTypes = new EnumDescriptor[descriptorProto.getEnumTypeCount()];
            for (int i4 = 0; i4 < descriptorProto.getEnumTypeCount(); i4++) {
                this.enumTypes[i4] = new EnumDescriptor(descriptorProto.getEnumType(i4), fileDescriptor, this, i4, null);
            }
            this.fields = new FieldDescriptor[descriptorProto.getFieldCount()];
            for (int i5 = 0; i5 < descriptorProto.getFieldCount(); i5++) {
                this.fields[i5] = new FieldDescriptor(descriptorProto.getField(i5), fileDescriptor, this, i5, false, null);
            }
            this.extensions = new FieldDescriptor[descriptorProto.getExtensionCount()];
            for (int i6 = 0; i6 < descriptorProto.getExtensionCount(); i6++) {
                this.extensions[i6] = new FieldDescriptor(descriptorProto.getExtension(i6), fileDescriptor, this, i6, true, null);
            }
            for (int i7 = 0; i7 < descriptorProto.getOneofDeclCount(); i7++) {
                OneofDescriptor[] oneofDescriptorArr = this.oneofs;
                oneofDescriptorArr[i7].fields = new FieldDescriptor[oneofDescriptorArr[i7].getFieldCount()];
                this.oneofs[i7].fieldCount = 0;
            }
            for (int i8 = 0; i8 < descriptorProto.getFieldCount(); i8++) {
                OneofDescriptor containingOneof = this.fields[i8].getContainingOneof();
                if (containingOneof != null) {
                    containingOneof.fields[OneofDescriptor.access$2008(containingOneof)] = this.fields[i8];
                }
            }
            fileDescriptor.pool.addSymbol(this);
        }

        /* synthetic */ Descriptor(DescriptorProtos.DescriptorProto descriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, AnonymousClass1 r11) throws DescriptorValidationException {
            this(descriptorProto, fileDescriptor, descriptor, i);
        }

        Descriptor(String str) throws DescriptorValidationException {
            super(null);
            String str2;
            String str3;
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf != -1) {
                str3 = str.substring(lastIndexOf + 1);
                str2 = str.substring(0, lastIndexOf);
            } else {
                str2 = "";
                str3 = str;
            }
            this.index = 0;
            this.proto = DescriptorProtos.DescriptorProto.newBuilder().setName(str3).addExtensionRange(DescriptorProtos.DescriptorProto.ExtensionRange.newBuilder().setStart(1).setEnd(536870912).build()).build();
            this.fullName = str;
            this.containingType = null;
            this.nestedTypes = new Descriptor[0];
            this.enumTypes = new EnumDescriptor[0];
            this.fields = new FieldDescriptor[0];
            this.extensions = new FieldDescriptor[0];
            this.oneofs = new OneofDescriptor[0];
            this.file = new FileDescriptor(str2, this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void crossLink() throws DescriptorValidationException {
            for (Descriptor descriptor : this.nestedTypes) {
                descriptor.crossLink();
            }
            for (FieldDescriptor fieldDescriptor : this.fields) {
                fieldDescriptor.crossLink();
            }
            for (FieldDescriptor fieldDescriptor2 : this.extensions) {
                fieldDescriptor2.crossLink();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.DescriptorProto descriptorProto) {
            this.proto = descriptorProto;
            int i = 0;
            int i2 = 0;
            while (true) {
                Descriptor[] descriptorArr = this.nestedTypes;
                if (i2 >= descriptorArr.length) {
                    break;
                }
                descriptorArr[i2].setProto(descriptorProto.getNestedType(i2));
                i2++;
            }
            int i3 = 0;
            while (true) {
                OneofDescriptor[] oneofDescriptorArr = this.oneofs;
                if (i3 >= oneofDescriptorArr.length) {
                    break;
                }
                oneofDescriptorArr[i3].setProto(descriptorProto.getOneofDecl(i3));
                i3++;
            }
            int i4 = 0;
            while (true) {
                EnumDescriptor[] enumDescriptorArr = this.enumTypes;
                if (i4 >= enumDescriptorArr.length) {
                    break;
                }
                enumDescriptorArr[i4].setProto(descriptorProto.getEnumType(i4));
                i4++;
            }
            int i5 = 0;
            while (true) {
                FieldDescriptor[] fieldDescriptorArr = this.fields;
                if (i5 < fieldDescriptorArr.length) {
                    fieldDescriptorArr[i5].setProto(descriptorProto.getField(i5));
                    i5++;
                }
            }
            while (true) {
                FieldDescriptor[] fieldDescriptorArr2 = this.extensions;
                if (i < fieldDescriptorArr2.length) {
                    fieldDescriptorArr2[i].setProto(descriptorProto.getExtension(i));
                    i++;
                } else {
                    return;
                }
            }
        }

        public final EnumDescriptor findEnumTypeByName(String str) {
            DescriptorPool descriptorPool = this.file.pool;
            GenericDescriptor findSymbol = descriptorPool.findSymbol(this.fullName + '.' + str);
            if (findSymbol == null || !(findSymbol instanceof EnumDescriptor)) {
                return null;
            }
            return (EnumDescriptor) findSymbol;
        }

        public final FieldDescriptor findFieldByName(String str) {
            DescriptorPool descriptorPool = this.file.pool;
            GenericDescriptor findSymbol = descriptorPool.findSymbol(this.fullName + '.' + str);
            if (findSymbol == null || !(findSymbol instanceof FieldDescriptor)) {
                return null;
            }
            return (FieldDescriptor) findSymbol;
        }

        public final FieldDescriptor findFieldByNumber(int i) {
            return (FieldDescriptor) this.file.pool.fieldsByNumber.get(new DescriptorPool.DescriptorIntPair(this, i));
        }

        public final Descriptor findNestedTypeByName(String str) {
            DescriptorPool descriptorPool = this.file.pool;
            GenericDescriptor findSymbol = descriptorPool.findSymbol(this.fullName + '.' + str);
            if (findSymbol == null || !(findSymbol instanceof Descriptor)) {
                return null;
            }
            return (Descriptor) findSymbol;
        }

        public final Descriptor getContainingType() {
            return this.containingType;
        }

        public final List<EnumDescriptor> getEnumTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.enumTypes));
        }

        public final List<FieldDescriptor> getExtensions() {
            return Collections.unmodifiableList(Arrays.asList(this.extensions));
        }

        public final List<FieldDescriptor> getFields() {
            return Collections.unmodifiableList(Arrays.asList(this.fields));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        public final List<Descriptor> getNestedTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.nestedTypes));
        }

        public final List<OneofDescriptor> getOneofs() {
            return Collections.unmodifiableList(Arrays.asList(this.oneofs));
        }

        public final DescriptorProtos.MessageOptions getOptions() {
            return this.proto.getOptions();
        }

        public final boolean isExtendable() {
            return this.proto.getExtensionRangeList().size() != 0;
        }

        public final boolean isExtensionNumber(int i) {
            for (DescriptorProtos.DescriptorProto.ExtensionRange extensionRange : this.proto.getExtensionRangeList()) {
                if (extensionRange.getStart() <= i && i < extensionRange.getEnd()) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isReservedName(String str) {
            Internal.checkNotNull(str);
            for (String str2 : this.proto.getReservedNameList()) {
                if (str2.equals(str)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean isReservedNumber(int i) {
            for (DescriptorProtos.DescriptorProto.ReservedRange reservedRange : this.proto.getReservedRangeList()) {
                if (reservedRange.getStart() <= i && i < reservedRange.getEnd()) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.DescriptorProto toProto() {
            return this.proto;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$DescriptorPool.class */
    public static final class DescriptorPool {
        private boolean allowUnknownDependencies;
        private final Map<String, GenericDescriptor> descriptorsByName = new HashMap();
        private final Map<DescriptorIntPair, FieldDescriptor> fieldsByNumber = new HashMap();
        private final Map<DescriptorIntPair, EnumValueDescriptor> enumValuesByNumber = new HashMap();
        private final Set<FileDescriptor> dependencies = new HashSet();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$DescriptorPool$DescriptorIntPair.class */
        public static final class DescriptorIntPair {
            private final GenericDescriptor descriptor;
            private final int number;

            DescriptorIntPair(GenericDescriptor genericDescriptor, int i) {
                this.descriptor = genericDescriptor;
                this.number = i;
            }

            public final boolean equals(Object obj) {
                if (!(obj instanceof DescriptorIntPair)) {
                    return false;
                }
                DescriptorIntPair descriptorIntPair = (DescriptorIntPair) obj;
                return this.descriptor == descriptorIntPair.descriptor && this.number == descriptorIntPair.number;
            }

            public final int hashCode() {
                return (this.descriptor.hashCode() * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.number;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$DescriptorPool$PackageDescriptor.class */
        public static final class PackageDescriptor extends GenericDescriptor {
            private final FileDescriptor file;
            private final String fullName;
            private final String name;

            PackageDescriptor(String str, String str2, FileDescriptor fileDescriptor) {
                super(null);
                this.file = fileDescriptor;
                this.fullName = str2;
                this.name = str;
            }

            @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
            public final FileDescriptor getFile() {
                return this.file;
            }

            @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
            public final String getFullName() {
                return this.fullName;
            }

            @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
            public final String getName() {
                return this.name;
            }

            @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
            public final Message toProto() {
                return this.file.toProto();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$DescriptorPool$SearchFilter.class */
        public enum SearchFilter {
            TYPES_ONLY,
            AGGREGATES_ONLY,
            ALL_SYMBOLS
        }

        DescriptorPool(FileDescriptor[] fileDescriptorArr, boolean z) {
            this.allowUnknownDependencies = z;
            for (int i = 0; i < fileDescriptorArr.length; i++) {
                this.dependencies.add(fileDescriptorArr[i]);
                importPublicDependencies(fileDescriptorArr[i]);
            }
            for (FileDescriptor fileDescriptor : this.dependencies) {
                try {
                    addPackage(fileDescriptor.getPackage(), fileDescriptor);
                } catch (DescriptorValidationException e) {
                    throw new AssertionError(e);
                }
            }
        }

        private void importPublicDependencies(FileDescriptor fileDescriptor) {
            for (FileDescriptor fileDescriptor2 : fileDescriptor.getPublicDependencies()) {
                if (this.dependencies.add(fileDescriptor2)) {
                    importPublicDependencies(fileDescriptor2);
                }
            }
        }

        static void validateSymbolName(GenericDescriptor genericDescriptor) throws DescriptorValidationException {
            String name = genericDescriptor.getName();
            if (name.length() != 0) {
                for (int i = 0; i < name.length(); i++) {
                    char charAt = name.charAt(i);
                    if (('a' > charAt || charAt > 'z') && (('A' > charAt || charAt > 'Z') && charAt != '_' && ('0' > charAt || charAt > '9' || i <= 0))) {
                        throw new DescriptorValidationException(genericDescriptor, "\"" + name + "\" is not a valid identifier.", (AnonymousClass1) null);
                    }
                }
                return;
            }
            throw new DescriptorValidationException(genericDescriptor, "Missing name.", (AnonymousClass1) null);
        }

        final void addEnumValueByNumber(EnumValueDescriptor enumValueDescriptor) {
            DescriptorIntPair descriptorIntPair = new DescriptorIntPair(enumValueDescriptor.getType(), enumValueDescriptor.getNumber());
            EnumValueDescriptor put = this.enumValuesByNumber.put(descriptorIntPair, enumValueDescriptor);
            if (put != null) {
                this.enumValuesByNumber.put(descriptorIntPair, put);
            }
        }

        final void addFieldByNumber(FieldDescriptor fieldDescriptor) throws DescriptorValidationException {
            DescriptorIntPair descriptorIntPair = new DescriptorIntPair(fieldDescriptor.getContainingType(), fieldDescriptor.getNumber());
            FieldDescriptor put = this.fieldsByNumber.put(descriptorIntPair, fieldDescriptor);
            if (put != null) {
                this.fieldsByNumber.put(descriptorIntPair, put);
                throw new DescriptorValidationException(fieldDescriptor, "Field number " + fieldDescriptor.getNumber() + " has already been used in \"" + fieldDescriptor.getContainingType().getFullName() + "\" by field \"" + put.getName() + "\".", (AnonymousClass1) null);
            }
        }

        final void addPackage(String str, FileDescriptor fileDescriptor) throws DescriptorValidationException {
            String str2;
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf == -1) {
                str2 = str;
            } else {
                addPackage(str.substring(0, lastIndexOf), fileDescriptor);
                str2 = str.substring(lastIndexOf + 1);
            }
            GenericDescriptor put = this.descriptorsByName.put(str, new PackageDescriptor(str2, str, fileDescriptor));
            if (put != null) {
                this.descriptorsByName.put(str, put);
                if (!(put instanceof PackageDescriptor)) {
                    throw new DescriptorValidationException(fileDescriptor, "\"" + str2 + "\" is already defined (as something other than a package) in file \"" + put.getFile().getName() + "\".", (AnonymousClass1) null);
                }
            }
        }

        final void addSymbol(GenericDescriptor genericDescriptor) throws DescriptorValidationException {
            validateSymbolName(genericDescriptor);
            String fullName = genericDescriptor.getFullName();
            GenericDescriptor put = this.descriptorsByName.put(fullName, genericDescriptor);
            if (put != null) {
                this.descriptorsByName.put(fullName, put);
                if (genericDescriptor.getFile() == put.getFile()) {
                    int lastIndexOf = fullName.lastIndexOf(46);
                    if (lastIndexOf == -1) {
                        throw new DescriptorValidationException(genericDescriptor, "\"" + fullName + "\" is already defined.", (AnonymousClass1) null);
                    }
                    throw new DescriptorValidationException(genericDescriptor, "\"" + fullName.substring(lastIndexOf + 1) + "\" is already defined in \"" + fullName.substring(0, lastIndexOf) + "\".", (AnonymousClass1) null);
                }
                throw new DescriptorValidationException(genericDescriptor, "\"" + fullName + "\" is already defined in file \"" + put.getFile().getName() + "\".", (AnonymousClass1) null);
            }
        }

        final GenericDescriptor findSymbol(String str) {
            return findSymbol(str, SearchFilter.ALL_SYMBOLS);
        }

        final GenericDescriptor findSymbol(String str, SearchFilter searchFilter) {
            GenericDescriptor genericDescriptor = this.descriptorsByName.get(str);
            if (genericDescriptor != null && (searchFilter == SearchFilter.ALL_SYMBOLS || ((searchFilter == SearchFilter.TYPES_ONLY && isType(genericDescriptor)) || (searchFilter == SearchFilter.AGGREGATES_ONLY && isAggregate(genericDescriptor))))) {
                return genericDescriptor;
            }
            for (FileDescriptor fileDescriptor : this.dependencies) {
                GenericDescriptor genericDescriptor2 = fileDescriptor.pool.descriptorsByName.get(str);
                if (genericDescriptor2 != null && (searchFilter == SearchFilter.ALL_SYMBOLS || ((searchFilter == SearchFilter.TYPES_ONLY && isType(genericDescriptor2)) || (searchFilter == SearchFilter.AGGREGATES_ONLY && isAggregate(genericDescriptor2))))) {
                    return genericDescriptor2;
                }
            }
            return null;
        }

        final boolean isAggregate(GenericDescriptor genericDescriptor) {
            return (genericDescriptor instanceof Descriptor) || (genericDescriptor instanceof EnumDescriptor) || (genericDescriptor instanceof PackageDescriptor) || (genericDescriptor instanceof ServiceDescriptor);
        }

        final boolean isType(GenericDescriptor genericDescriptor) {
            return (genericDescriptor instanceof Descriptor) || (genericDescriptor instanceof EnumDescriptor);
        }

        final GenericDescriptor lookupSymbol(String str, GenericDescriptor genericDescriptor, SearchFilter searchFilter) throws DescriptorValidationException {
            GenericDescriptor genericDescriptor2;
            String str2;
            if (str.startsWith(".")) {
                str2 = str.substring(1);
                genericDescriptor2 = findSymbol(str2, searchFilter);
            } else {
                int indexOf = str.indexOf(46);
                String substring = indexOf == -1 ? str : str.substring(0, indexOf);
                StringBuilder sb = new StringBuilder(genericDescriptor.getFullName());
                while (true) {
                    int lastIndexOf = sb.lastIndexOf(".");
                    if (lastIndexOf == -1) {
                        genericDescriptor2 = findSymbol(str, searchFilter);
                        str2 = str;
                        break;
                    }
                    int i = lastIndexOf + 1;
                    sb.setLength(i);
                    sb.append(substring);
                    GenericDescriptor findSymbol = findSymbol(sb.toString(), SearchFilter.AGGREGATES_ONLY);
                    if (findSymbol != null) {
                        if (indexOf != -1) {
                            sb.setLength(i);
                            sb.append(str);
                            genericDescriptor2 = findSymbol(sb.toString(), searchFilter);
                        } else {
                            genericDescriptor2 = findSymbol;
                        }
                        str2 = sb.toString();
                    } else {
                        sb.setLength(lastIndexOf);
                    }
                }
            }
            if (genericDescriptor2 != null) {
                return genericDescriptor2;
            }
            if (!this.allowUnknownDependencies || searchFilter != SearchFilter.TYPES_ONLY) {
                throw new DescriptorValidationException(genericDescriptor, "\"" + str + "\" is not defined.", (AnonymousClass1) null);
            }
            Logger logger = Descriptors.logger;
            logger.warning("The descriptor for message type \"" + str + "\" can not be found and a placeholder is created for it");
            Descriptor descriptor = new Descriptor(str2);
            this.dependencies.add(descriptor.getFile());
            return descriptor;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$DescriptorValidationException.class */
    public static class DescriptorValidationException extends Exception {
        private static final long serialVersionUID = 5750205775490483148L;
        private final String description;
        private final String name;
        private final Message proto;

        private DescriptorValidationException(FileDescriptor fileDescriptor, String str) {
            super(fileDescriptor.getName() + ": " + str);
            this.name = fileDescriptor.getName();
            this.proto = fileDescriptor.toProto();
            this.description = str;
        }

        /* synthetic */ DescriptorValidationException(FileDescriptor fileDescriptor, String str, AnonymousClass1 r7) {
            this(fileDescriptor, str);
        }

        private DescriptorValidationException(GenericDescriptor genericDescriptor, String str) {
            super(genericDescriptor.getFullName() + ": " + str);
            this.name = genericDescriptor.getFullName();
            this.proto = genericDescriptor.toProto();
            this.description = str;
        }

        /* synthetic */ DescriptorValidationException(GenericDescriptor genericDescriptor, String str, AnonymousClass1 r7) {
            this(genericDescriptor, str);
        }

        private DescriptorValidationException(GenericDescriptor genericDescriptor, String str, Throwable th) {
            this(genericDescriptor, str);
            initCause(th);
        }

        /* synthetic */ DescriptorValidationException(GenericDescriptor genericDescriptor, String str, Throwable th, AnonymousClass1 r9) {
            this(genericDescriptor, str, th);
        }

        public String getDescription() {
            return this.description;
        }

        public Message getProblemProto() {
            return this.proto;
        }

        public String getProblemSymbolName() {
            return this.name;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$EnumDescriptor.class */
    public static final class EnumDescriptor extends GenericDescriptor implements Internal.EnumLiteMap<EnumValueDescriptor> {
        private final Descriptor containingType;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private DescriptorProtos.EnumDescriptorProto proto;
        private final WeakHashMap<Integer, WeakReference<EnumValueDescriptor>> unknownValues;
        private EnumValueDescriptor[] values;

        private EnumDescriptor(DescriptorProtos.EnumDescriptorProto enumDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i) throws DescriptorValidationException {
            super(null);
            this.unknownValues = new WeakHashMap<>();
            this.index = i;
            this.proto = enumDescriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, descriptor, enumDescriptorProto.getName());
            this.file = fileDescriptor;
            this.containingType = descriptor;
            if (enumDescriptorProto.getValueCount() != 0) {
                this.values = new EnumValueDescriptor[enumDescriptorProto.getValueCount()];
                for (int i2 = 0; i2 < enumDescriptorProto.getValueCount(); i2++) {
                    this.values[i2] = new EnumValueDescriptor(enumDescriptorProto.getValue(i2), fileDescriptor, this, i2, null);
                }
                fileDescriptor.pool.addSymbol(this);
                return;
            }
            throw new DescriptorValidationException(this, "Enums must contain at least one value.", (AnonymousClass1) null);
        }

        /* synthetic */ EnumDescriptor(DescriptorProtos.EnumDescriptorProto enumDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, AnonymousClass1 r11) throws DescriptorValidationException {
            this(enumDescriptorProto, fileDescriptor, descriptor, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.EnumDescriptorProto enumDescriptorProto) {
            this.proto = enumDescriptorProto;
            int i = 0;
            while (true) {
                EnumValueDescriptor[] enumValueDescriptorArr = this.values;
                if (i < enumValueDescriptorArr.length) {
                    enumValueDescriptorArr[i].setProto(enumDescriptorProto.getValue(i));
                    i++;
                } else {
                    return;
                }
            }
        }

        public final EnumValueDescriptor findValueByName(String str) {
            DescriptorPool descriptorPool = this.file.pool;
            GenericDescriptor findSymbol = descriptorPool.findSymbol(this.fullName + '.' + str);
            if (findSymbol == null || !(findSymbol instanceof EnumValueDescriptor)) {
                return null;
            }
            return (EnumValueDescriptor) findSymbol;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final EnumValueDescriptor findValueByNumber(int i) {
            return (EnumValueDescriptor) this.file.pool.enumValuesByNumber.get(new DescriptorPool.DescriptorIntPair(this, i));
        }

        public final EnumValueDescriptor findValueByNumberCreatingIfUnknown(int i) {
            EnumValueDescriptor enumValueDescriptor;
            EnumValueDescriptor findValueByNumber = findValueByNumber(i);
            if (findValueByNumber != null) {
                return findValueByNumber;
            }
            synchronized (this) {
                Integer valueOf = Integer.valueOf(i);
                WeakReference<EnumValueDescriptor> weakReference = this.unknownValues.get(valueOf);
                if (weakReference != null) {
                    findValueByNumber = weakReference.get();
                }
                enumValueDescriptor = findValueByNumber;
                if (findValueByNumber == null) {
                    enumValueDescriptor = new EnumValueDescriptor(this.file, this, valueOf, (AnonymousClass1) null);
                    this.unknownValues.put(valueOf, new WeakReference<>(enumValueDescriptor));
                }
            }
            return enumValueDescriptor;
        }

        public final Descriptor getContainingType() {
            return this.containingType;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        public final DescriptorProtos.EnumOptions getOptions() {
            return this.proto.getOptions();
        }

        final int getUnknownEnumValueDescriptorCount() {
            return this.unknownValues.size();
        }

        public final List<EnumValueDescriptor> getValues() {
            return Collections.unmodifiableList(Arrays.asList(this.values));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.EnumDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$EnumValueDescriptor.class */
    public static final class EnumValueDescriptor extends GenericDescriptor implements Internal.EnumLite {
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private DescriptorProtos.EnumValueDescriptorProto proto;
        private final EnumDescriptor type;

        private EnumValueDescriptor(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto, FileDescriptor fileDescriptor, EnumDescriptor enumDescriptor, int i) throws DescriptorValidationException {
            super(null);
            this.index = i;
            this.proto = enumValueDescriptorProto;
            this.file = fileDescriptor;
            this.type = enumDescriptor;
            this.fullName = enumDescriptor.getFullName() + '.' + enumValueDescriptorProto.getName();
            fileDescriptor.pool.addSymbol(this);
            fileDescriptor.pool.addEnumValueByNumber(this);
        }

        /* synthetic */ EnumValueDescriptor(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto, FileDescriptor fileDescriptor, EnumDescriptor enumDescriptor, int i, AnonymousClass1 r11) throws DescriptorValidationException {
            this(enumValueDescriptorProto, fileDescriptor, enumDescriptor, i);
        }

        private EnumValueDescriptor(FileDescriptor fileDescriptor, EnumDescriptor enumDescriptor, Integer num) {
            super(null);
            DescriptorProtos.EnumValueDescriptorProto build = DescriptorProtos.EnumValueDescriptorProto.newBuilder().setName("UNKNOWN_ENUM_VALUE_" + enumDescriptor.getName() + "_" + num).setNumber(num.intValue()).build();
            this.index = -1;
            this.proto = build;
            this.file = fileDescriptor;
            this.type = enumDescriptor;
            this.fullName = enumDescriptor.getFullName() + '.' + build.getName();
        }

        /* synthetic */ EnumValueDescriptor(FileDescriptor fileDescriptor, EnumDescriptor enumDescriptor, Integer num, AnonymousClass1 r9) {
            this(fileDescriptor, enumDescriptor, num);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.EnumValueDescriptorProto enumValueDescriptorProto) {
            this.proto = enumValueDescriptorProto;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        @Override // com.explorestack.protobuf.Internal.EnumLite
        public final int getNumber() {
            return this.proto.getNumber();
        }

        public final DescriptorProtos.EnumValueOptions getOptions() {
            return this.proto.getOptions();
        }

        public final EnumDescriptor getType() {
            return this.type;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.EnumValueDescriptorProto toProto() {
            return this.proto;
        }

        public final String toString() {
            return this.proto.getName();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$FieldDescriptor.class */
    public static final class FieldDescriptor extends GenericDescriptor implements FieldSet.FieldDescriptorLite<FieldDescriptor>, Comparable<FieldDescriptor> {
        private static final WireFormat.FieldType[] table = WireFormat.FieldType.values();
        private OneofDescriptor containingOneof;
        private Descriptor containingType;
        private Object defaultValue;
        private EnumDescriptor enumType;
        private final Descriptor extensionScope;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private final String jsonName;
        private Descriptor messageType;
        private DescriptorProtos.FieldDescriptorProto proto;
        private Type type;

        /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType.class */
        public enum JavaType {
            INT(0),
            LONG(0L),
            FLOAT(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED)),
            DOUBLE(Double.valueOf(0.0d)),
            BOOLEAN(Boolean.FALSE),
            STRING(""),
            BYTE_STRING(ByteString.EMPTY),
            ENUM(null),
            MESSAGE(null);
            
            private final Object defaultDefault;

            JavaType(Object obj) {
                this.defaultDefault = obj;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$FieldDescriptor$Type.class */
        public enum Type {
            DOUBLE(JavaType.DOUBLE),
            FLOAT(JavaType.FLOAT),
            INT64(JavaType.LONG),
            UINT64(JavaType.LONG),
            INT32(JavaType.INT),
            FIXED64(JavaType.LONG),
            FIXED32(JavaType.INT),
            BOOL(JavaType.BOOLEAN),
            STRING(JavaType.STRING),
            GROUP(JavaType.MESSAGE),
            MESSAGE(JavaType.MESSAGE),
            BYTES(JavaType.BYTE_STRING),
            UINT32(JavaType.INT),
            ENUM(JavaType.ENUM),
            SFIXED32(JavaType.INT),
            SFIXED64(JavaType.LONG),
            SINT32(JavaType.INT),
            SINT64(JavaType.LONG);
            
            private JavaType javaType;

            Type(JavaType javaType) {
                this.javaType = javaType;
            }

            public static Type valueOf(DescriptorProtos.FieldDescriptorProto.Type type) {
                return values()[type.getNumber() - 1];
            }

            public final JavaType getJavaType() {
                return this.javaType;
            }

            public final DescriptorProtos.FieldDescriptorProto.Type toProto() {
                return DescriptorProtos.FieldDescriptorProto.Type.forNumber(ordinal() + 1);
            }
        }

        static {
            if (Type.values().length != DescriptorProtos.FieldDescriptorProto.Type.values().length) {
                throw new RuntimeException("descriptor.proto has a new declared type but Descriptors.java wasn't updated.");
            }
        }

        private FieldDescriptor(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, boolean z) throws DescriptorValidationException {
            super(null);
            this.index = i;
            this.proto = fieldDescriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, descriptor, fieldDescriptorProto.getName());
            this.file = fileDescriptor;
            if (fieldDescriptorProto.hasJsonName()) {
                this.jsonName = fieldDescriptorProto.getJsonName();
            } else {
                this.jsonName = fieldNameToJsonName(fieldDescriptorProto.getName());
            }
            if (fieldDescriptorProto.hasType()) {
                this.type = Type.valueOf(fieldDescriptorProto.getType());
            }
            if (getNumber() > 0) {
                if (z) {
                    if (fieldDescriptorProto.hasExtendee()) {
                        this.containingType = null;
                        if (descriptor != null) {
                            this.extensionScope = descriptor;
                        } else {
                            this.extensionScope = null;
                        }
                        if (!fieldDescriptorProto.hasOneofIndex()) {
                            this.containingOneof = null;
                        } else {
                            throw new DescriptorValidationException(this, "FieldDescriptorProto.oneof_index set for extension field.", (AnonymousClass1) null);
                        }
                    } else {
                        throw new DescriptorValidationException(this, "FieldDescriptorProto.extendee not set for extension field.", (AnonymousClass1) null);
                    }
                } else if (!fieldDescriptorProto.hasExtendee()) {
                    this.containingType = descriptor;
                    if (!fieldDescriptorProto.hasOneofIndex()) {
                        this.containingOneof = null;
                    } else if (fieldDescriptorProto.getOneofIndex() < 0 || fieldDescriptorProto.getOneofIndex() >= descriptor.toProto().getOneofDeclCount()) {
                        throw new DescriptorValidationException(this, "FieldDescriptorProto.oneof_index is out of range for type " + descriptor.getName(), (AnonymousClass1) null);
                    } else {
                        OneofDescriptor oneofDescriptor = descriptor.getOneofs().get(fieldDescriptorProto.getOneofIndex());
                        this.containingOneof = oneofDescriptor;
                        OneofDescriptor.access$2008(oneofDescriptor);
                    }
                    this.extensionScope = null;
                } else {
                    throw new DescriptorValidationException(this, "FieldDescriptorProto.extendee set for non-extension field.", (AnonymousClass1) null);
                }
                fileDescriptor.pool.addSymbol(this);
                return;
            }
            throw new DescriptorValidationException(this, "Field numbers must be positive integers.", (AnonymousClass1) null);
        }

        /* synthetic */ FieldDescriptor(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, boolean z, AnonymousClass1 r13) throws DescriptorValidationException {
            this(fieldDescriptorProto, fileDescriptor, descriptor, i, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void crossLink() throws DescriptorValidationException {
            if (this.proto.hasExtendee()) {
                GenericDescriptor lookupSymbol = this.file.pool.lookupSymbol(this.proto.getExtendee(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
                if (lookupSymbol instanceof Descriptor) {
                    this.containingType = (Descriptor) lookupSymbol;
                    if (!getContainingType().isExtensionNumber(getNumber())) {
                        throw new DescriptorValidationException(this, "\"" + getContainingType().getFullName() + "\" does not declare " + getNumber() + " as an extension number.", (AnonymousClass1) null);
                    }
                } else {
                    throw new DescriptorValidationException(this, "\"" + this.proto.getExtendee() + "\" is not a message type.", (AnonymousClass1) null);
                }
            }
            if (this.proto.hasTypeName()) {
                GenericDescriptor lookupSymbol2 = this.file.pool.lookupSymbol(this.proto.getTypeName(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
                if (!this.proto.hasType()) {
                    if (lookupSymbol2 instanceof Descriptor) {
                        this.type = Type.MESSAGE;
                    } else if (lookupSymbol2 instanceof EnumDescriptor) {
                        this.type = Type.ENUM;
                    } else {
                        throw new DescriptorValidationException(this, "\"" + this.proto.getTypeName() + "\" is not a type.", (AnonymousClass1) null);
                    }
                }
                if (getJavaType() == JavaType.MESSAGE) {
                    if (lookupSymbol2 instanceof Descriptor) {
                        this.messageType = (Descriptor) lookupSymbol2;
                        if (this.proto.hasDefaultValue()) {
                            throw new DescriptorValidationException(this, "Messages can't have default values.", (AnonymousClass1) null);
                        }
                    } else {
                        throw new DescriptorValidationException(this, "\"" + this.proto.getTypeName() + "\" is not a message type.", (AnonymousClass1) null);
                    }
                } else if (getJavaType() != JavaType.ENUM) {
                    throw new DescriptorValidationException(this, "Field with primitive type has type_name.", (AnonymousClass1) null);
                } else if (lookupSymbol2 instanceof EnumDescriptor) {
                    this.enumType = (EnumDescriptor) lookupSymbol2;
                } else {
                    throw new DescriptorValidationException(this, "\"" + this.proto.getTypeName() + "\" is not an enum type.", (AnonymousClass1) null);
                }
            } else if (getJavaType() == JavaType.MESSAGE || getJavaType() == JavaType.ENUM) {
                throw new DescriptorValidationException(this, "Field with message or enum type missing type_name.", (AnonymousClass1) null);
            }
            if (!this.proto.getOptions().getPacked() || isPackable()) {
                if (this.proto.hasDefaultValue()) {
                    if (!isRepeated()) {
                        try {
                            switch (AnonymousClass1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[getType().ordinal()]) {
                                case 1:
                                case 2:
                                case 3:
                                    this.defaultValue = Integer.valueOf(TextFormat.parseInt32(this.proto.getDefaultValue()));
                                    break;
                                case 4:
                                case 5:
                                    this.defaultValue = Integer.valueOf(TextFormat.parseUInt32(this.proto.getDefaultValue()));
                                    break;
                                case 6:
                                case 7:
                                case 8:
                                    this.defaultValue = Long.valueOf(TextFormat.parseInt64(this.proto.getDefaultValue()));
                                    break;
                                case 9:
                                case 10:
                                    this.defaultValue = Long.valueOf(TextFormat.parseUInt64(this.proto.getDefaultValue()));
                                    break;
                                case 11:
                                    if (!this.proto.getDefaultValue().equals("inf")) {
                                        if (!this.proto.getDefaultValue().equals("-inf")) {
                                            if (!this.proto.getDefaultValue().equals("nan")) {
                                                this.defaultValue = Float.valueOf(this.proto.getDefaultValue());
                                                break;
                                            } else {
                                                this.defaultValue = Float.valueOf(Float.NaN);
                                                break;
                                            }
                                        } else {
                                            this.defaultValue = Float.valueOf(Float.NEGATIVE_INFINITY);
                                            break;
                                        }
                                    } else {
                                        this.defaultValue = Float.valueOf(Float.POSITIVE_INFINITY);
                                        break;
                                    }
                                case 12:
                                    if (!this.proto.getDefaultValue().equals("inf")) {
                                        if (!this.proto.getDefaultValue().equals("-inf")) {
                                            if (!this.proto.getDefaultValue().equals("nan")) {
                                                this.defaultValue = Double.valueOf(this.proto.getDefaultValue());
                                                break;
                                            } else {
                                                this.defaultValue = Double.valueOf(Double.NaN);
                                                break;
                                            }
                                        } else {
                                            this.defaultValue = Double.valueOf(Double.NEGATIVE_INFINITY);
                                            break;
                                        }
                                    } else {
                                        this.defaultValue = Double.valueOf(Double.POSITIVE_INFINITY);
                                        break;
                                    }
                                case 13:
                                    this.defaultValue = Boolean.valueOf(this.proto.getDefaultValue());
                                    break;
                                case 14:
                                    this.defaultValue = this.proto.getDefaultValue();
                                    break;
                                case 15:
                                    try {
                                        this.defaultValue = TextFormat.unescapeBytes(this.proto.getDefaultValue());
                                        break;
                                    } catch (TextFormat.InvalidEscapeSequenceException e) {
                                        throw new DescriptorValidationException(this, "Couldn't parse default value: " + e.getMessage(), e, null);
                                    }
                                case 16:
                                    EnumValueDescriptor findValueByName = this.enumType.findValueByName(this.proto.getDefaultValue());
                                    this.defaultValue = findValueByName;
                                    if (findValueByName == null) {
                                        throw new DescriptorValidationException(this, "Unknown enum default value: \"" + this.proto.getDefaultValue() + '\"', (AnonymousClass1) null);
                                    }
                                    break;
                                case 17:
                                case 18:
                                    throw new DescriptorValidationException(this, "Message type had default value.", (AnonymousClass1) null);
                            }
                        } catch (NumberFormatException e2) {
                            throw new DescriptorValidationException(this, "Could not parse default value: \"" + this.proto.getDefaultValue() + '\"', e2, null);
                        }
                    } else {
                        throw new DescriptorValidationException(this, "Repeated fields cannot have default values.", (AnonymousClass1) null);
                    }
                } else if (isRepeated()) {
                    this.defaultValue = Collections.emptyList();
                } else {
                    int i = AnonymousClass1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType[getJavaType().ordinal()];
                    if (i == 1) {
                        this.defaultValue = this.enumType.getValues().get(0);
                    } else if (i != 2) {
                        this.defaultValue = getJavaType().defaultDefault;
                    } else {
                        this.defaultValue = null;
                    }
                }
                if (!isExtension()) {
                    this.file.pool.addFieldByNumber(this);
                }
                Descriptor descriptor = this.containingType;
                if (descriptor != null && descriptor.getOptions().getMessageSetWireFormat()) {
                    if (!isExtension()) {
                        throw new DescriptorValidationException(this, "MessageSets cannot have fields, only extensions.", (AnonymousClass1) null);
                    } else if (!isOptional() || getType() != Type.MESSAGE) {
                        throw new DescriptorValidationException(this, "Extensions of MessageSets must be optional messages.", (AnonymousClass1) null);
                    }
                }
            } else {
                throw new DescriptorValidationException(this, "[packed = true] can only be specified for repeated primitive fields.", (AnonymousClass1) null);
            }
        }

        private static String fieldNameToJsonName(String str) {
            int length = str.length();
            StringBuilder sb = new StringBuilder(length);
            boolean z = false;
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt == '_') {
                    z = true;
                } else if (z) {
                    char c2 = charAt;
                    if ('a' <= charAt) {
                        c2 = charAt;
                        if (charAt <= 'z') {
                            c2 = (char) ((charAt - 'a') + 65);
                        }
                    }
                    sb.append(c2);
                    z = false;
                } else {
                    sb.append(charAt);
                }
            }
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.FieldDescriptorProto fieldDescriptorProto) {
            this.proto = fieldDescriptorProto;
        }

        public final int compareTo(FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.containingType == this.containingType) {
                return getNumber() - fieldDescriptor.getNumber();
            }
            throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
        }

        public final OneofDescriptor getContainingOneof() {
            return this.containingOneof;
        }

        public final Descriptor getContainingType() {
            return this.containingType;
        }

        public final Object getDefaultValue() {
            if (getJavaType() != JavaType.MESSAGE) {
                return this.defaultValue;
            }
            throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
        }

        @Override // com.explorestack.protobuf.FieldSet.FieldDescriptorLite
        public final EnumDescriptor getEnumType() {
            if (getJavaType() == JavaType.ENUM) {
                return this.enumType;
            }
            throw new UnsupportedOperationException(String.format("This field is not of enum type. (%s)", this.fullName));
        }

        public final Descriptor getExtensionScope() {
            if (isExtension()) {
                return this.extensionScope;
            }
            throw new UnsupportedOperationException(String.format("This field is not an extension. (%s)", this.fullName));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        public final JavaType getJavaType() {
            return this.type.getJavaType();
        }

        public final String getJsonName() {
            return this.jsonName;
        }

        @Override // com.explorestack.protobuf.FieldSet.FieldDescriptorLite
        public final WireFormat.JavaType getLiteJavaType() {
            return getLiteType().getJavaType();
        }

        @Override // com.explorestack.protobuf.FieldSet.FieldDescriptorLite
        public final WireFormat.FieldType getLiteType() {
            return table[this.type.ordinal()];
        }

        public final Descriptor getMessageType() {
            if (getJavaType() == JavaType.MESSAGE) {
                return this.messageType;
            }
            throw new UnsupportedOperationException(String.format("This field is not of message type. (%s)", this.fullName));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        @Override // com.explorestack.protobuf.FieldSet.FieldDescriptorLite
        public final int getNumber() {
            return this.proto.getNumber();
        }

        public final DescriptorProtos.FieldOptions getOptions() {
            return this.proto.getOptions();
        }

        public final Type getType() {
            return this.type;
        }

        public final boolean hasDefaultValue() {
            return this.proto.hasDefaultValue();
        }

        @Override // com.explorestack.protobuf.FieldSet.FieldDescriptorLite
        public final MessageLite.Builder internalMergeFrom(MessageLite.Builder builder, MessageLite messageLite) {
            return ((Message.Builder) builder).mergeFrom((Message) messageLite);
        }

        public final boolean isExtension() {
            return this.proto.hasExtendee();
        }

        public final boolean isMapField() {
            return getType() == Type.MESSAGE && isRepeated() && getMessageType().getOptions().getMapEntry();
        }

        public final boolean isOptional() {
            return this.proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_OPTIONAL;
        }

        public final boolean isPackable() {
            return isRepeated() && getLiteType().isPackable();
        }

        @Override // com.explorestack.protobuf.FieldSet.FieldDescriptorLite
        public final boolean isPacked() {
            if (!isPackable()) {
                return false;
            }
            return getFile().getSyntax() == FileDescriptor.Syntax.PROTO2 ? getOptions().getPacked() : !getOptions().hasPacked() || getOptions().getPacked();
        }

        @Override // com.explorestack.protobuf.FieldSet.FieldDescriptorLite
        public final boolean isRepeated() {
            return this.proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REPEATED;
        }

        public final boolean isRequired() {
            return this.proto.getLabel() == DescriptorProtos.FieldDescriptorProto.Label.LABEL_REQUIRED;
        }

        public final boolean needsUtf8Check() {
            if (this.type != Type.STRING) {
                return false;
            }
            if (!getContainingType().getOptions().getMapEntry() && getFile().getSyntax() != FileDescriptor.Syntax.PROTO3) {
                return getFile().getOptions().getJavaStringCheckUtf8();
            }
            return true;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.FieldDescriptorProto toProto() {
            return this.proto;
        }

        public final String toString() {
            return getFullName();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$FileDescriptor.class */
    public static final class FileDescriptor extends GenericDescriptor {
        private final FileDescriptor[] dependencies;
        private final EnumDescriptor[] enumTypes;
        private final FieldDescriptor[] extensions;
        private final Descriptor[] messageTypes;
        private final DescriptorPool pool;
        private DescriptorProtos.FileDescriptorProto proto;
        private final FileDescriptor[] publicDependencies;
        private final ServiceDescriptor[] services;

        @Deprecated
        /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner.class */
        public interface InternalDescriptorAssigner {
            ExtensionRegistry assignDescriptors(FileDescriptor fileDescriptor);
        }

        /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$FileDescriptor$Syntax.class */
        public enum Syntax {
            UNKNOWN("unknown"),
            PROTO2("proto2"),
            PROTO3("proto3");
            
            private final String name;

            Syntax(String str) {
                this.name = str;
            }
        }

        private FileDescriptor(DescriptorProtos.FileDescriptorProto fileDescriptorProto, FileDescriptor[] fileDescriptorArr, DescriptorPool descriptorPool, boolean z) throws DescriptorValidationException {
            super(null);
            this.pool = descriptorPool;
            this.proto = fileDescriptorProto;
            this.dependencies = (FileDescriptor[]) fileDescriptorArr.clone();
            HashMap hashMap = new HashMap();
            for (FileDescriptor fileDescriptor : fileDescriptorArr) {
                hashMap.put(fileDescriptor.getName(), fileDescriptor);
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < fileDescriptorProto.getPublicDependencyCount(); i++) {
                int publicDependency = fileDescriptorProto.getPublicDependency(i);
                if (publicDependency < 0 || publicDependency >= fileDescriptorProto.getDependencyCount()) {
                    throw new DescriptorValidationException(this, "Invalid public dependency index.", (AnonymousClass1) null);
                }
                String dependency = fileDescriptorProto.getDependency(publicDependency);
                FileDescriptor fileDescriptor2 = (FileDescriptor) hashMap.get(dependency);
                if (fileDescriptor2 != null) {
                    arrayList.add(fileDescriptor2);
                } else if (!z) {
                    throw new DescriptorValidationException(this, "Invalid public dependency: ".concat(String.valueOf(dependency)), (AnonymousClass1) null);
                }
            }
            FileDescriptor[] fileDescriptorArr2 = new FileDescriptor[arrayList.size()];
            this.publicDependencies = fileDescriptorArr2;
            arrayList.toArray(fileDescriptorArr2);
            descriptorPool.addPackage(getPackage(), this);
            this.messageTypes = new Descriptor[fileDescriptorProto.getMessageTypeCount()];
            for (int i2 = 0; i2 < fileDescriptorProto.getMessageTypeCount(); i2++) {
                this.messageTypes[i2] = new Descriptor(fileDescriptorProto.getMessageType(i2), this, null, i2, null);
            }
            this.enumTypes = new EnumDescriptor[fileDescriptorProto.getEnumTypeCount()];
            for (int i3 = 0; i3 < fileDescriptorProto.getEnumTypeCount(); i3++) {
                this.enumTypes[i3] = new EnumDescriptor(fileDescriptorProto.getEnumType(i3), this, null, i3, null);
            }
            this.services = new ServiceDescriptor[fileDescriptorProto.getServiceCount()];
            for (int i4 = 0; i4 < fileDescriptorProto.getServiceCount(); i4++) {
                this.services[i4] = new ServiceDescriptor(fileDescriptorProto.getService(i4), this, i4, null);
            }
            this.extensions = new FieldDescriptor[fileDescriptorProto.getExtensionCount()];
            for (int i5 = 0; i5 < fileDescriptorProto.getExtensionCount(); i5++) {
                this.extensions[i5] = new FieldDescriptor(fileDescriptorProto.getExtension(i5), this, null, i5, true, null);
            }
        }

        FileDescriptor(String str, Descriptor descriptor) throws DescriptorValidationException {
            super(null);
            DescriptorPool descriptorPool = new DescriptorPool(new FileDescriptor[0], true);
            this.pool = descriptorPool;
            DescriptorProtos.FileDescriptorProto.Builder newBuilder = DescriptorProtos.FileDescriptorProto.newBuilder();
            this.proto = newBuilder.setName(descriptor.getFullName() + ".placeholder.proto").setPackage(str).addMessageType(descriptor.toProto()).build();
            this.dependencies = new FileDescriptor[0];
            this.publicDependencies = new FileDescriptor[0];
            this.messageTypes = new Descriptor[]{descriptor};
            this.enumTypes = new EnumDescriptor[0];
            this.services = new ServiceDescriptor[0];
            this.extensions = new FieldDescriptor[0];
            descriptorPool.addPackage(str, this);
            descriptorPool.addSymbol(descriptor);
        }

        public static FileDescriptor buildFrom(DescriptorProtos.FileDescriptorProto fileDescriptorProto, FileDescriptor[] fileDescriptorArr) throws DescriptorValidationException {
            return buildFrom(fileDescriptorProto, fileDescriptorArr, false);
        }

        public static FileDescriptor buildFrom(DescriptorProtos.FileDescriptorProto fileDescriptorProto, FileDescriptor[] fileDescriptorArr, boolean z) throws DescriptorValidationException {
            FileDescriptor fileDescriptor = new FileDescriptor(fileDescriptorProto, fileDescriptorArr, new DescriptorPool(fileDescriptorArr, z), z);
            fileDescriptor.crossLink();
            return fileDescriptor;
        }

        private void crossLink() throws DescriptorValidationException {
            for (Descriptor descriptor : this.messageTypes) {
                descriptor.crossLink();
            }
            for (ServiceDescriptor serviceDescriptor : this.services) {
                serviceDescriptor.crossLink();
            }
            for (FieldDescriptor fieldDescriptor : this.extensions) {
                fieldDescriptor.crossLink();
            }
        }

        private static FileDescriptor[] findDescriptors(Class<?> cls, String[] strArr, String[] strArr2) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < strArr.length; i++) {
                try {
                    arrayList.add((FileDescriptor) cls.getClassLoader().loadClass(strArr[i]).getField("descriptor").get(null));
                } catch (Exception e) {
                    Logger logger = Descriptors.logger;
                    logger.warning("Descriptors for \"" + strArr2[i] + "\" can not be found.");
                }
            }
            return (FileDescriptor[]) arrayList.toArray(new FileDescriptor[0]);
        }

        public static FileDescriptor internalBuildGeneratedFileFrom(String[] strArr, Class<?> cls, String[] strArr2, String[] strArr3) {
            return internalBuildGeneratedFileFrom(strArr, findDescriptors(cls, strArr2, strArr3));
        }

        public static FileDescriptor internalBuildGeneratedFileFrom(String[] strArr, FileDescriptor[] fileDescriptorArr) {
            try {
                DescriptorProtos.FileDescriptorProto parseFrom = DescriptorProtos.FileDescriptorProto.parseFrom(latin1Cat(strArr));
                try {
                    return buildFrom(parseFrom, fileDescriptorArr, true);
                } catch (DescriptorValidationException e) {
                    throw new IllegalArgumentException("Invalid embedded descriptor for \"" + parseFrom.getName() + "\".", e);
                }
            } catch (InvalidProtocolBufferException e2) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e2);
            }
        }

        @Deprecated
        public static void internalBuildGeneratedFileFrom(String[] strArr, Class<?> cls, String[] strArr2, String[] strArr3, InternalDescriptorAssigner internalDescriptorAssigner) {
            internalBuildGeneratedFileFrom(strArr, findDescriptors(cls, strArr2, strArr3), internalDescriptorAssigner);
        }

        @Deprecated
        public static void internalBuildGeneratedFileFrom(String[] strArr, FileDescriptor[] fileDescriptorArr, InternalDescriptorAssigner internalDescriptorAssigner) {
            byte[] latin1Cat = latin1Cat(strArr);
            try {
                DescriptorProtos.FileDescriptorProto parseFrom = DescriptorProtos.FileDescriptorProto.parseFrom(latin1Cat);
                try {
                    FileDescriptor buildFrom = buildFrom(parseFrom, fileDescriptorArr, true);
                    ExtensionRegistry assignDescriptors = internalDescriptorAssigner.assignDescriptors(buildFrom);
                    if (assignDescriptors != null) {
                        try {
                            buildFrom.setProto(DescriptorProtos.FileDescriptorProto.parseFrom(latin1Cat, assignDescriptors));
                        } catch (InvalidProtocolBufferException e) {
                            throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e);
                        }
                    }
                } catch (DescriptorValidationException e2) {
                    throw new IllegalArgumentException("Invalid embedded descriptor for \"" + parseFrom.getName() + "\".", e2);
                }
            } catch (InvalidProtocolBufferException e3) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e3);
            }
        }

        public static void internalUpdateFileDescriptor(FileDescriptor fileDescriptor, ExtensionRegistry extensionRegistry) {
            try {
                fileDescriptor.setProto(DescriptorProtos.FileDescriptorProto.parseFrom(fileDescriptor.proto.toByteString(), extensionRegistry));
            } catch (InvalidProtocolBufferException e) {
                throw new IllegalArgumentException("Failed to parse protocol buffer descriptor for generated code.", e);
            }
        }

        private static byte[] latin1Cat(String[] strArr) {
            if (strArr.length == 1) {
                return strArr[0].getBytes(Internal.ISO_8859_1);
            }
            StringBuilder sb = new StringBuilder();
            for (String str : strArr) {
                sb.append(str);
            }
            return sb.toString().getBytes(Internal.ISO_8859_1);
        }

        private void setProto(DescriptorProtos.FileDescriptorProto fileDescriptorProto) {
            this.proto = fileDescriptorProto;
            int i = 0;
            int i2 = 0;
            while (true) {
                Descriptor[] descriptorArr = this.messageTypes;
                if (i2 >= descriptorArr.length) {
                    break;
                }
                descriptorArr[i2].setProto(fileDescriptorProto.getMessageType(i2));
                i2++;
            }
            int i3 = 0;
            while (true) {
                EnumDescriptor[] enumDescriptorArr = this.enumTypes;
                if (i3 >= enumDescriptorArr.length) {
                    break;
                }
                enumDescriptorArr[i3].setProto(fileDescriptorProto.getEnumType(i3));
                i3++;
            }
            int i4 = 0;
            while (true) {
                ServiceDescriptor[] serviceDescriptorArr = this.services;
                if (i4 < serviceDescriptorArr.length) {
                    serviceDescriptorArr[i4].setProto(fileDescriptorProto.getService(i4));
                    i4++;
                }
            }
            while (true) {
                FieldDescriptor[] fieldDescriptorArr = this.extensions;
                if (i < fieldDescriptorArr.length) {
                    fieldDescriptorArr[i].setProto(fileDescriptorProto.getExtension(i));
                    i++;
                } else {
                    return;
                }
            }
        }

        public final EnumDescriptor findEnumTypeByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String str2 = getPackage();
            String str3 = str;
            if (!str2.isEmpty()) {
                str3 = str2 + '.' + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str3);
            if (findSymbol == null || !(findSymbol instanceof EnumDescriptor) || findSymbol.getFile() != this) {
                return null;
            }
            return (EnumDescriptor) findSymbol;
        }

        public final FieldDescriptor findExtensionByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String str2 = getPackage();
            String str3 = str;
            if (!str2.isEmpty()) {
                str3 = str2 + '.' + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str3);
            if (findSymbol == null || !(findSymbol instanceof FieldDescriptor) || findSymbol.getFile() != this) {
                return null;
            }
            return (FieldDescriptor) findSymbol;
        }

        public final Descriptor findMessageTypeByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String str2 = getPackage();
            String str3 = str;
            if (!str2.isEmpty()) {
                str3 = str2 + '.' + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str3);
            if (findSymbol == null || !(findSymbol instanceof Descriptor) || findSymbol.getFile() != this) {
                return null;
            }
            return (Descriptor) findSymbol;
        }

        public final ServiceDescriptor findServiceByName(String str) {
            if (str.indexOf(46) != -1) {
                return null;
            }
            String str2 = getPackage();
            String str3 = str;
            if (!str2.isEmpty()) {
                str3 = str2 + '.' + str;
            }
            GenericDescriptor findSymbol = this.pool.findSymbol(str3);
            if (findSymbol == null || !(findSymbol instanceof ServiceDescriptor) || findSymbol.getFile() != this) {
                return null;
            }
            return (ServiceDescriptor) findSymbol;
        }

        public final List<FileDescriptor> getDependencies() {
            return Collections.unmodifiableList(Arrays.asList(this.dependencies));
        }

        public final List<EnumDescriptor> getEnumTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.enumTypes));
        }

        public final List<FieldDescriptor> getExtensions() {
            return Collections.unmodifiableList(Arrays.asList(this.extensions));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.proto.getName();
        }

        public final List<Descriptor> getMessageTypes() {
            return Collections.unmodifiableList(Arrays.asList(this.messageTypes));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        public final DescriptorProtos.FileOptions getOptions() {
            return this.proto.getOptions();
        }

        public final String getPackage() {
            return this.proto.getPackage();
        }

        public final List<FileDescriptor> getPublicDependencies() {
            return Collections.unmodifiableList(Arrays.asList(this.publicDependencies));
        }

        public final List<ServiceDescriptor> getServices() {
            return Collections.unmodifiableList(Arrays.asList(this.services));
        }

        public final Syntax getSyntax() {
            return Syntax.PROTO3.name.equals(this.proto.getSyntax()) ? Syntax.PROTO3 : Syntax.PROTO2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean supportsUnknownEnumValue() {
            return getSyntax() == Syntax.PROTO3;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.FileDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$GenericDescriptor.class */
    public static abstract class GenericDescriptor {
        private GenericDescriptor() {
        }

        /* synthetic */ GenericDescriptor(AnonymousClass1 r3) {
            this();
        }

        public abstract FileDescriptor getFile();

        public abstract String getFullName();

        public abstract String getName();

        public abstract Message toProto();
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$MethodDescriptor.class */
    public static final class MethodDescriptor extends GenericDescriptor {
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private Descriptor inputType;
        private Descriptor outputType;
        private DescriptorProtos.MethodDescriptorProto proto;
        private final ServiceDescriptor service;

        private MethodDescriptor(DescriptorProtos.MethodDescriptorProto methodDescriptorProto, FileDescriptor fileDescriptor, ServiceDescriptor serviceDescriptor, int i) throws DescriptorValidationException {
            super(null);
            this.index = i;
            this.proto = methodDescriptorProto;
            this.file = fileDescriptor;
            this.service = serviceDescriptor;
            this.fullName = serviceDescriptor.getFullName() + '.' + methodDescriptorProto.getName();
            fileDescriptor.pool.addSymbol(this);
        }

        /* synthetic */ MethodDescriptor(DescriptorProtos.MethodDescriptorProto methodDescriptorProto, FileDescriptor fileDescriptor, ServiceDescriptor serviceDescriptor, int i, AnonymousClass1 r11) throws DescriptorValidationException {
            this(methodDescriptorProto, fileDescriptor, serviceDescriptor, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void crossLink() throws DescriptorValidationException {
            GenericDescriptor lookupSymbol = this.file.pool.lookupSymbol(this.proto.getInputType(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
            if (lookupSymbol instanceof Descriptor) {
                this.inputType = (Descriptor) lookupSymbol;
                GenericDescriptor lookupSymbol2 = this.file.pool.lookupSymbol(this.proto.getOutputType(), this, DescriptorPool.SearchFilter.TYPES_ONLY);
                if (lookupSymbol2 instanceof Descriptor) {
                    this.outputType = (Descriptor) lookupSymbol2;
                    return;
                }
                throw new DescriptorValidationException(this, "\"" + this.proto.getOutputType() + "\" is not a message type.", (AnonymousClass1) null);
            }
            throw new DescriptorValidationException(this, "\"" + this.proto.getInputType() + "\" is not a message type.", (AnonymousClass1) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.MethodDescriptorProto methodDescriptorProto) {
            this.proto = methodDescriptorProto;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        public final Descriptor getInputType() {
            return this.inputType;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        public final DescriptorProtos.MethodOptions getOptions() {
            return this.proto.getOptions();
        }

        public final Descriptor getOutputType() {
            return this.outputType;
        }

        public final ServiceDescriptor getService() {
            return this.service;
        }

        public final boolean isClientStreaming() {
            return this.proto.getClientStreaming();
        }

        public final boolean isServerStreaming() {
            return this.proto.getServerStreaming();
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.MethodDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$OneofDescriptor.class */
    public static final class OneofDescriptor extends GenericDescriptor {
        private Descriptor containingType;
        private int fieldCount;
        private FieldDescriptor[] fields;
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private DescriptorProtos.OneofDescriptorProto proto;

        private OneofDescriptor(DescriptorProtos.OneofDescriptorProto oneofDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i) throws DescriptorValidationException {
            super(null);
            this.proto = oneofDescriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, descriptor, oneofDescriptorProto.getName());
            this.file = fileDescriptor;
            this.index = i;
            this.containingType = descriptor;
            this.fieldCount = 0;
        }

        /* synthetic */ OneofDescriptor(DescriptorProtos.OneofDescriptorProto oneofDescriptorProto, FileDescriptor fileDescriptor, Descriptor descriptor, int i, AnonymousClass1 r11) throws DescriptorValidationException {
            this(oneofDescriptorProto, fileDescriptor, descriptor, i);
        }

        static /* synthetic */ int access$2008(OneofDescriptor oneofDescriptor) {
            int i = oneofDescriptor.fieldCount;
            oneofDescriptor.fieldCount = i + 1;
            return i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.OneofDescriptorProto oneofDescriptorProto) {
            this.proto = oneofDescriptorProto;
        }

        public final Descriptor getContainingType() {
            return this.containingType;
        }

        public final FieldDescriptor getField(int i) {
            return this.fields[i];
        }

        public final int getFieldCount() {
            return this.fieldCount;
        }

        public final List<FieldDescriptor> getFields() {
            return Collections.unmodifiableList(Arrays.asList(this.fields));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        public final DescriptorProtos.OneofOptions getOptions() {
            return this.proto.getOptions();
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.OneofDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/Descriptors$ServiceDescriptor.class */
    public static final class ServiceDescriptor extends GenericDescriptor {
        private final FileDescriptor file;
        private final String fullName;
        private final int index;
        private MethodDescriptor[] methods;
        private DescriptorProtos.ServiceDescriptorProto proto;

        private ServiceDescriptor(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto, FileDescriptor fileDescriptor, int i) throws DescriptorValidationException {
            super(null);
            this.index = i;
            this.proto = serviceDescriptorProto;
            this.fullName = Descriptors.computeFullName(fileDescriptor, null, serviceDescriptorProto.getName());
            this.file = fileDescriptor;
            this.methods = new MethodDescriptor[serviceDescriptorProto.getMethodCount()];
            for (int i2 = 0; i2 < serviceDescriptorProto.getMethodCount(); i2++) {
                this.methods[i2] = new MethodDescriptor(serviceDescriptorProto.getMethod(i2), fileDescriptor, this, i2, null);
            }
            fileDescriptor.pool.addSymbol(this);
        }

        /* synthetic */ ServiceDescriptor(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto, FileDescriptor fileDescriptor, int i, AnonymousClass1 r9) throws DescriptorValidationException {
            this(serviceDescriptorProto, fileDescriptor, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void crossLink() throws DescriptorValidationException {
            for (MethodDescriptor methodDescriptor : this.methods) {
                methodDescriptor.crossLink();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProto(DescriptorProtos.ServiceDescriptorProto serviceDescriptorProto) {
            this.proto = serviceDescriptorProto;
            int i = 0;
            while (true) {
                MethodDescriptor[] methodDescriptorArr = this.methods;
                if (i < methodDescriptorArr.length) {
                    methodDescriptorArr[i].setProto(serviceDescriptorProto.getMethod(i));
                    i++;
                } else {
                    return;
                }
            }
        }

        public final MethodDescriptor findMethodByName(String str) {
            DescriptorPool descriptorPool = this.file.pool;
            GenericDescriptor findSymbol = descriptorPool.findSymbol(this.fullName + '.' + str);
            if (findSymbol == null || !(findSymbol instanceof MethodDescriptor)) {
                return null;
            }
            return (MethodDescriptor) findSymbol;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final FileDescriptor getFile() {
            return this.file;
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getFullName() {
            return this.fullName;
        }

        public final int getIndex() {
            return this.index;
        }

        public final List<MethodDescriptor> getMethods() {
            return Collections.unmodifiableList(Arrays.asList(this.methods));
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final String getName() {
            return this.proto.getName();
        }

        public final DescriptorProtos.ServiceOptions getOptions() {
            return this.proto.getOptions();
        }

        @Override // com.explorestack.protobuf.Descriptors.GenericDescriptor
        public final DescriptorProtos.ServiceDescriptorProto toProto() {
            return this.proto;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String computeFullName(FileDescriptor fileDescriptor, Descriptor descriptor, String str) {
        if (descriptor != null) {
            return descriptor.getFullName() + '.' + str;
        }
        String str2 = fileDescriptor.getPackage();
        if (str2.isEmpty()) {
            return str;
        }
        return str2 + '.' + str;
    }
}
