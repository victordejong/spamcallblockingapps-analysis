package com.explorestack.protobuf;

import com.explorestack.protobuf.MapEntryLite;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/MapFieldSchemaLite.class */
class MapFieldSchemaLite implements MapFieldSchema {
    private static <K, V> int getSerializedSizeLite(int i, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        MapEntryLite mapEntryLite = (MapEntryLite) obj2;
        int i2 = 0;
        if (mapFieldLite.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : mapFieldLite.entrySet()) {
            i2 += mapEntryLite.computeMessageSize(i, entry.getKey(), entry.getValue());
        }
        return i2;
    }

    private static <K, V> MapFieldLite<K, V> mergeFromLite(Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        MapFieldLite<K, V> mapFieldLite2 = (MapFieldLite) obj2;
        MapFieldLite<K, V> mapFieldLite3 = mapFieldLite;
        if (!mapFieldLite2.isEmpty()) {
            mapFieldLite3 = mapFieldLite;
            if (!mapFieldLite.isMutable()) {
                mapFieldLite3 = mapFieldLite.mutableCopy();
            }
            mapFieldLite3.mergeFrom(mapFieldLite2);
        }
        return mapFieldLite3;
    }

    @Override // com.explorestack.protobuf.MapFieldSchema
    public Map<?, ?> forMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.explorestack.protobuf.MapFieldSchema
    public MapEntryLite.Metadata<?, ?> forMapMetadata(Object obj) {
        return ((MapEntryLite) obj).getMetadata();
    }

    @Override // com.explorestack.protobuf.MapFieldSchema
    public Map<?, ?> forMutableMapData(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.explorestack.protobuf.MapFieldSchema
    public int getSerializedSize(int i, Object obj, Object obj2) {
        return getSerializedSizeLite(i, obj, obj2);
    }

    @Override // com.explorestack.protobuf.MapFieldSchema
    public boolean isImmutable(Object obj) {
        return !((MapFieldLite) obj).isMutable();
    }

    @Override // com.explorestack.protobuf.MapFieldSchema
    public Object mergeFrom(Object obj, Object obj2) {
        return mergeFromLite(obj, obj2);
    }

    @Override // com.explorestack.protobuf.MapFieldSchema
    public Object newMapField(Object obj) {
        return MapFieldLite.emptyMapField().mutableCopy();
    }

    @Override // com.explorestack.protobuf.MapFieldSchema
    public Object toImmutable(Object obj) {
        ((MapFieldLite) obj).makeImmutable();
        return obj;
    }
}
