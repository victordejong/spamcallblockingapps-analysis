package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.MapEntryLite;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/MapEntry.class */
public final class MapEntry<K, V> extends AbstractMessage {
    private volatile int cachedSerializedSize;
    private final K key;
    private final Metadata<K, V> metadata;
    private final V value;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/MapEntry$Builder.class */
    public static class Builder<K, V> extends AbstractMessage.Builder<Builder<K, V>> {
        private boolean hasKey;
        private boolean hasValue;
        private K key;
        private final Metadata<K, V> metadata;
        private V value;

        private Builder(Metadata<K, V> metadata) {
            this(metadata, metadata.defaultKey, metadata.defaultValue, false, false);
        }

        private Builder(Metadata<K, V> metadata, K k, V v, boolean z, boolean z2) {
            this.metadata = metadata;
            this.key = k;
            this.value = v;
            this.hasKey = z;
            this.hasValue = z2;
        }

        private void checkFieldDescriptor(Descriptors.FieldDescriptor fieldDescriptor) {
            if (fieldDescriptor.getContainingType() != this.metadata.descriptor) {
                throw new RuntimeException("Wrong FieldDescriptor \"" + fieldDescriptor.getFullName() + "\" used in message \"" + this.metadata.descriptor.getFullName());
            }
        }

        @Override // com.explorestack.protobuf.Message.Builder
        public Builder<K, V> addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public MapEntry<K, V> build() {
            MapEntry<K, V> buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public MapEntry<K, V> buildPartial() {
            return new MapEntry<>(this.metadata, this.key, this.value);
        }

        @Override // com.explorestack.protobuf.Message.Builder
        public Builder<K, V> clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            checkFieldDescriptor(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 1) {
                clearKey();
            } else {
                clearValue();
            }
            return this;
        }

        public Builder<K, V> clearKey() {
            this.key = this.metadata.defaultKey;
            this.hasKey = false;
            return this;
        }

        public Builder<K, V> clearValue() {
            this.value = this.metadata.defaultValue;
            this.hasValue = false;
            return this;
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public Builder<K, V> clone() {
            return new Builder<>(this.metadata, this.key, this.value, this.hasKey, this.hasValue);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Map<Descriptors.FieldDescriptor, Object> getAllFields() {
            TreeMap treeMap = new TreeMap();
            for (Descriptors.FieldDescriptor fieldDescriptor : this.metadata.descriptor.getFields()) {
                if (hasField(fieldDescriptor)) {
                    treeMap.put(fieldDescriptor, getField(fieldDescriptor));
                }
            }
            return Collections.unmodifiableMap(treeMap);
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public MapEntry<K, V> getDefaultInstanceForType() {
            Metadata<K, V> metadata = this.metadata;
            return new MapEntry<>(metadata, metadata.defaultKey, this.metadata.defaultValue);
        }

        @Override // com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public Descriptors.Descriptor getDescriptorForType() {
            return this.metadata.descriptor;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
            checkFieldDescriptor(fieldDescriptor);
            Integer key = fieldDescriptor.getNumber() == 1 ? getKey() : getValue();
            Descriptors.EnumValueDescriptor enumValueDescriptor = key;
            if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.ENUM) {
                enumValueDescriptor = fieldDescriptor.getEnumType().findValueByNumberCreatingIfUnknown(((Integer) key).intValue());
            }
            return enumValueDescriptor;
        }

        public K getKey() {
            return this.key;
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public UnknownFieldSet getUnknownFields() {
            return UnknownFieldSet.getDefaultInstance();
        }

        public V getValue() {
            return this.value;
        }

        @Override // com.explorestack.protobuf.MessageOrBuilder
        public boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
            checkFieldDescriptor(fieldDescriptor);
            return fieldDescriptor.getNumber() == 1 ? this.hasKey : this.hasValue;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder
        public boolean isInitialized() {
            return MapEntry.isInitialized(this.metadata, this.value);
        }

        @Override // com.explorestack.protobuf.Message.Builder
        public Message.Builder newBuilderForField(Descriptors.FieldDescriptor fieldDescriptor) {
            checkFieldDescriptor(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 2 && fieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {
                return ((Message) this.value).newBuilderForType();
            }
            throw new RuntimeException("\"" + fieldDescriptor.getFullName() + "\" is not a message value field.");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.explorestack.protobuf.Message.Builder
        public Builder<K, V> setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            Object obj2;
            checkFieldDescriptor(fieldDescriptor);
            if (fieldDescriptor.getNumber() == 1) {
                setKey(obj);
            } else {
                if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.ENUM) {
                    obj2 = Integer.valueOf(((Descriptors.EnumValueDescriptor) obj).getNumber());
                } else {
                    obj2 = obj;
                    if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE) {
                        obj2 = obj;
                        if (obj != null) {
                            obj2 = obj;
                            if (!this.metadata.defaultValue.getClass().isInstance(obj)) {
                                obj2 = ((Message) this.metadata.defaultValue).toBuilder().mergeFrom((Message) obj).build();
                            }
                        }
                    }
                }
                setValue(obj2);
            }
            return this;
        }

        public Builder<K, V> setKey(K k) {
            this.key = k;
            this.hasKey = true;
            return this;
        }

        @Override // com.explorestack.protobuf.Message.Builder
        public Builder<K, V> setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            throw new RuntimeException("There is no repeated field in a map entry message.");
        }

        @Override // com.explorestack.protobuf.Message.Builder
        public Builder<K, V> setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return this;
        }

        public Builder<K, V> setValue(V v) {
            this.value = v;
            this.hasValue = true;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/MapEntry$Metadata.class */
    public static final class Metadata<K, V> extends MapEntryLite.Metadata<K, V> {
        public final Descriptors.Descriptor descriptor;
        public final Parser<MapEntry<K, V>> parser = new AbstractParser<MapEntry<K, V>>() { // from class: com.explorestack.protobuf.MapEntry.Metadata.1
            @Override // com.explorestack.protobuf.Parser
            public MapEntry<K, V> parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new MapEntry<>(Metadata.this, codedInputStream, extensionRegistryLite);
            }
        };

        public Metadata(Descriptors.Descriptor descriptor, MapEntry<K, V> mapEntry, WireFormat.FieldType fieldType, WireFormat.FieldType fieldType2) {
            super(fieldType, ((MapEntry) mapEntry).key, fieldType2, ((MapEntry) mapEntry).value);
            this.descriptor = descriptor;
        }
    }

    private MapEntry(Descriptors.Descriptor descriptor, WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v) {
        this.cachedSerializedSize = -1;
        this.key = k;
        this.value = v;
        this.metadata = new Metadata<>(descriptor, this, fieldType, fieldType2);
    }

    private MapEntry(Metadata<K, V> metadata, CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this.cachedSerializedSize = -1;
        try {
            this.metadata = metadata;
            Map.Entry parseEntry = MapEntryLite.parseEntry(codedInputStream, metadata, extensionRegistryLite);
            this.key = (K) parseEntry.getKey();
            this.value = (V) parseEntry.getValue();
        } catch (InvalidProtocolBufferException e) {
            throw e.setUnfinishedMessage(this);
        } catch (IOException e2) {
            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
        }
    }

    private MapEntry(Metadata metadata, K k, V v) {
        this.cachedSerializedSize = -1;
        this.key = k;
        this.value = v;
        this.metadata = metadata;
    }

    private void checkFieldDescriptor(Descriptors.FieldDescriptor fieldDescriptor) {
        if (fieldDescriptor.getContainingType() != this.metadata.descriptor) {
            throw new RuntimeException("Wrong FieldDescriptor \"" + fieldDescriptor.getFullName() + "\" used in message \"" + this.metadata.descriptor.getFullName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <V> boolean isInitialized(Metadata metadata, V v) {
        if (metadata.valueType.getJavaType() == WireFormat.JavaType.MESSAGE) {
            return ((MessageLite) v).isInitialized();
        }
        return true;
    }

    public static <K, V> MapEntry<K, V> newDefaultInstance(Descriptors.Descriptor descriptor, WireFormat.FieldType fieldType, K k, WireFormat.FieldType fieldType2, V v) {
        return new MapEntry<>(descriptor, fieldType, k, fieldType2, v);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.explorestack.protobuf.MessageOrBuilder
    public final Map<Descriptors.FieldDescriptor, Object> getAllFields() {
        TreeMap treeMap = new TreeMap();
        for (Descriptors.FieldDescriptor fieldDescriptor : this.metadata.descriptor.getFields()) {
            if (hasField(fieldDescriptor)) {
                treeMap.put(fieldDescriptor, getField(fieldDescriptor));
            }
        }
        return Collections.unmodifiableMap(treeMap);
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final MapEntry<K, V> getDefaultInstanceForType() {
        Metadata<K, V> metadata = this.metadata;
        return new MapEntry<>(metadata, metadata.defaultKey, this.metadata.defaultValue);
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public final Descriptors.Descriptor getDescriptorForType() {
        return this.metadata.descriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.explorestack.protobuf.MessageOrBuilder
    public final Object getField(Descriptors.FieldDescriptor fieldDescriptor) {
        checkFieldDescriptor(fieldDescriptor);
        Integer key = fieldDescriptor.getNumber() == 1 ? getKey() : getValue();
        Descriptors.EnumValueDescriptor enumValueDescriptor = key;
        if (fieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.ENUM) {
            enumValueDescriptor = fieldDescriptor.getEnumType().findValueByNumberCreatingIfUnknown(((Integer) key).intValue());
        }
        return enumValueDescriptor;
    }

    public final K getKey() {
        return this.key;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Metadata<K, V> getMetadata() {
        return this.metadata;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<MapEntry<K, V>> getParserForType() {
        return this.metadata.parser;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public final Object getRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public final int getRepeatedFieldCount(Descriptors.FieldDescriptor fieldDescriptor) {
        throw new RuntimeException("There is no repeated field in a map entry message.");
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        if (this.cachedSerializedSize != -1) {
            return this.cachedSerializedSize;
        }
        int computeSerializedSize = MapEntryLite.computeSerializedSize(this.metadata, this.key, this.value);
        this.cachedSerializedSize = computeSerializedSize;
        return computeSerializedSize;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return UnknownFieldSet.getDefaultInstance();
    }

    public final V getValue() {
        return this.value;
    }

    @Override // com.explorestack.protobuf.MessageOrBuilder
    public final boolean hasField(Descriptors.FieldDescriptor fieldDescriptor) {
        checkFieldDescriptor(fieldDescriptor);
        return true;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        return isInitialized(this.metadata, this.value);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder<K, V> newBuilderForType() {
        return new Builder<>(this.metadata);
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder<K, V> toBuilder() {
        return new Builder<>(this.metadata, this.key, this.value, true, true);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        MapEntryLite.writeTo(codedOutputStream, this.metadata, this.key, this.value);
    }
}
