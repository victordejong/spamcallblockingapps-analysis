package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Extension;
import com.explorestack.protobuf.GeneratedMessage;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import okhttp3.internal.http2.Settings;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ExtensionRegistry.class */
public class ExtensionRegistry extends ExtensionRegistryLite {
    static final ExtensionRegistry EMPTY_REGISTRY = new ExtensionRegistry(true);
    private final Map<String, ExtensionInfo> immutableExtensionsByName;
    private final Map<DescriptorIntPair, ExtensionInfo> immutableExtensionsByNumber;
    private final Map<String, ExtensionInfo> mutableExtensionsByName;
    private final Map<DescriptorIntPair, ExtensionInfo> mutableExtensionsByNumber;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.protobuf.ExtensionRegistry$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ExtensionRegistry$1.class */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$protobuf$Extension$ExtensionType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Extension.ExtensionType.values().length];
            $SwitchMap$com$google$protobuf$Extension$ExtensionType = iArr;
            try {
                iArr[Extension.ExtensionType.IMMUTABLE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$protobuf$Extension$ExtensionType[Extension.ExtensionType.MUTABLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ExtensionRegistry$DescriptorIntPair.class */
    public static final class DescriptorIntPair {
        private final Descriptors.Descriptor descriptor;
        private final int number;

        DescriptorIntPair(Descriptors.Descriptor descriptor, int i) {
            this.descriptor = descriptor;
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

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ExtensionRegistry$ExtensionInfo.class */
    public static final class ExtensionInfo {
        public final Message defaultInstance;
        public final Descriptors.FieldDescriptor descriptor;

        private ExtensionInfo(Descriptors.FieldDescriptor fieldDescriptor) {
            this.descriptor = fieldDescriptor;
            this.defaultInstance = null;
        }

        private ExtensionInfo(Descriptors.FieldDescriptor fieldDescriptor, Message message) {
            this.descriptor = fieldDescriptor;
            this.defaultInstance = message;
        }

        /* synthetic */ ExtensionInfo(Descriptors.FieldDescriptor fieldDescriptor, Message message, AnonymousClass1 r7) {
            this(fieldDescriptor, message);
        }
    }

    private ExtensionRegistry() {
        this.immutableExtensionsByName = new HashMap();
        this.mutableExtensionsByName = new HashMap();
        this.immutableExtensionsByNumber = new HashMap();
        this.mutableExtensionsByNumber = new HashMap();
    }

    private ExtensionRegistry(ExtensionRegistry extensionRegistry) {
        super(extensionRegistry);
        this.immutableExtensionsByName = Collections.unmodifiableMap(extensionRegistry.immutableExtensionsByName);
        this.mutableExtensionsByName = Collections.unmodifiableMap(extensionRegistry.mutableExtensionsByName);
        this.immutableExtensionsByNumber = Collections.unmodifiableMap(extensionRegistry.immutableExtensionsByNumber);
        this.mutableExtensionsByNumber = Collections.unmodifiableMap(extensionRegistry.mutableExtensionsByNumber);
    }

    ExtensionRegistry(boolean z) {
        super(EMPTY_REGISTRY_LITE);
        this.immutableExtensionsByName = Collections.emptyMap();
        this.mutableExtensionsByName = Collections.emptyMap();
        this.immutableExtensionsByNumber = Collections.emptyMap();
        this.mutableExtensionsByNumber = Collections.emptyMap();
    }

    private void add(ExtensionInfo extensionInfo, Extension.ExtensionType extensionType) {
        Map<DescriptorIntPair, ExtensionInfo> map;
        Map<String, ExtensionInfo> map2;
        if (extensionInfo.descriptor.isExtension()) {
            int i = AnonymousClass1.$SwitchMap$com$google$protobuf$Extension$ExtensionType[extensionType.ordinal()];
            if (i == 1) {
                map2 = this.immutableExtensionsByName;
                map = this.immutableExtensionsByNumber;
            } else if (i == 2) {
                map2 = this.mutableExtensionsByName;
                map = this.mutableExtensionsByNumber;
            } else {
                return;
            }
            map2.put(extensionInfo.descriptor.getFullName(), extensionInfo);
            map.put(new DescriptorIntPair(extensionInfo.descriptor.getContainingType(), extensionInfo.descriptor.getNumber()), extensionInfo);
            Descriptors.FieldDescriptor fieldDescriptor = extensionInfo.descriptor;
            if (fieldDescriptor.getContainingType().getOptions().getMessageSetWireFormat() && fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE && fieldDescriptor.isOptional() && fieldDescriptor.getExtensionScope() == fieldDescriptor.getMessageType()) {
                map2.put(fieldDescriptor.getMessageType().getFullName(), extensionInfo);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field.");
    }

    public static ExtensionRegistry getEmptyRegistry() {
        return EMPTY_REGISTRY;
    }

    static ExtensionInfo newExtensionInfo(Extension<?, ?> extension) {
        if (extension.getDescriptor().getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            return new ExtensionInfo(extension.getDescriptor(), null, null);
        }
        if (extension.getMessageDefaultInstance() != null) {
            return new ExtensionInfo(extension.getDescriptor(), extension.getMessageDefaultInstance(), null);
        }
        throw new IllegalStateException("Registered message-type extension had null default instance: " + extension.getDescriptor().getFullName());
    }

    public static ExtensionRegistry newInstance() {
        return new ExtensionRegistry();
    }

    public void add(Descriptors.FieldDescriptor fieldDescriptor) {
        if (fieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            ExtensionInfo extensionInfo = new ExtensionInfo(fieldDescriptor, null, null);
            add(extensionInfo, Extension.ExtensionType.IMMUTABLE);
            add(extensionInfo, Extension.ExtensionType.MUTABLE);
            return;
        }
        throw new IllegalArgumentException("ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension.");
    }

    public void add(Descriptors.FieldDescriptor fieldDescriptor, Message message) {
        if (fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
            add(new ExtensionInfo(fieldDescriptor, message, null), Extension.ExtensionType.IMMUTABLE);
            return;
        }
        throw new IllegalArgumentException("ExtensionRegistry.add() provided a default instance for a non-message extension.");
    }

    public void add(Extension<?, ?> extension) {
        if (extension.getExtensionType() == Extension.ExtensionType.IMMUTABLE || extension.getExtensionType() == Extension.ExtensionType.MUTABLE) {
            add(newExtensionInfo(extension), extension.getExtensionType());
        }
    }

    public void add(GeneratedMessage.GeneratedExtension<?, ?> generatedExtension) {
        add((Extension<?, ?>) generatedExtension);
    }

    @Deprecated
    public ExtensionInfo findExtensionByName(String str) {
        return findImmutableExtensionByName(str);
    }

    @Deprecated
    public ExtensionInfo findExtensionByNumber(Descriptors.Descriptor descriptor, int i) {
        return findImmutableExtensionByNumber(descriptor, i);
    }

    public ExtensionInfo findImmutableExtensionByName(String str) {
        return this.immutableExtensionsByName.get(str);
    }

    public ExtensionInfo findImmutableExtensionByNumber(Descriptors.Descriptor descriptor, int i) {
        return this.immutableExtensionsByNumber.get(new DescriptorIntPair(descriptor, i));
    }

    public ExtensionInfo findMutableExtensionByName(String str) {
        return this.mutableExtensionsByName.get(str);
    }

    public ExtensionInfo findMutableExtensionByNumber(Descriptors.Descriptor descriptor, int i) {
        return this.mutableExtensionsByNumber.get(new DescriptorIntPair(descriptor, i));
    }

    public Set<ExtensionInfo> getAllImmutableExtensionsByExtendedType(String str) {
        HashSet hashSet = new HashSet();
        for (DescriptorIntPair descriptorIntPair : this.immutableExtensionsByNumber.keySet()) {
            if (descriptorIntPair.descriptor.getFullName().equals(str)) {
                hashSet.add(this.immutableExtensionsByNumber.get(descriptorIntPair));
            }
        }
        return hashSet;
    }

    public Set<ExtensionInfo> getAllMutableExtensionsByExtendedType(String str) {
        HashSet hashSet = new HashSet();
        for (DescriptorIntPair descriptorIntPair : this.mutableExtensionsByNumber.keySet()) {
            if (descriptorIntPair.descriptor.getFullName().equals(str)) {
                hashSet.add(this.mutableExtensionsByNumber.get(descriptorIntPair));
            }
        }
        return hashSet;
    }

    @Override // com.explorestack.protobuf.ExtensionRegistryLite
    public ExtensionRegistry getUnmodifiable() {
        return new ExtensionRegistry(this);
    }
}
