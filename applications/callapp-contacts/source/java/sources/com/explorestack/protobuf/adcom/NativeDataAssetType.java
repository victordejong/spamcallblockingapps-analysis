package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/NativeDataAssetType.class */
public enum NativeDataAssetType implements ProtocolMessageEnum {
    NATIVE_DATA_ASSET_TYPE_INVALID(0),
    NATIVE_DATA_ASSET_TYPE_SPONSORED(1),
    NATIVE_DATA_ASSET_TYPE_DESC(2),
    NATIVE_DATA_ASSET_TYPE_RATING(3),
    NATIVE_DATA_ASSET_TYPE_LIKES(4),
    NATIVE_DATA_ASSET_TYPE_DOWNLOADS(5),
    NATIVE_DATA_ASSET_TYPE_PRICE(6),
    NATIVE_DATA_ASSET_TYPE_SALE_PRICE(7),
    NATIVE_DATA_ASSET_TYPE_PHONE(8),
    NATIVE_DATA_ASSET_TYPE_ADDRESS(9),
    NATIVE_DATA_ASSET_TYPE_DESC2(10),
    NATIVE_DATA_ASSET_TYPE_DISPLAY_URL(11),
    NATIVE_DATA_ASSET_TYPE_CTA_TEXT(12),
    UNRECOGNIZED(-1);
    
    public static final int NATIVE_DATA_ASSET_TYPE_ADDRESS_VALUE = 9;
    public static final int NATIVE_DATA_ASSET_TYPE_CTA_TEXT_VALUE = 12;
    public static final int NATIVE_DATA_ASSET_TYPE_DESC2_VALUE = 10;
    public static final int NATIVE_DATA_ASSET_TYPE_DESC_VALUE = 2;
    public static final int NATIVE_DATA_ASSET_TYPE_DISPLAY_URL_VALUE = 11;
    public static final int NATIVE_DATA_ASSET_TYPE_DOWNLOADS_VALUE = 5;
    public static final int NATIVE_DATA_ASSET_TYPE_INVALID_VALUE = 0;
    public static final int NATIVE_DATA_ASSET_TYPE_LIKES_VALUE = 4;
    public static final int NATIVE_DATA_ASSET_TYPE_PHONE_VALUE = 8;
    public static final int NATIVE_DATA_ASSET_TYPE_PRICE_VALUE = 6;
    public static final int NATIVE_DATA_ASSET_TYPE_RATING_VALUE = 3;
    public static final int NATIVE_DATA_ASSET_TYPE_SALE_PRICE_VALUE = 7;
    public static final int NATIVE_DATA_ASSET_TYPE_SPONSORED_VALUE = 1;
    private final int value;
    private static final Internal.EnumLiteMap<NativeDataAssetType> internalValueMap = new Internal.EnumLiteMap<NativeDataAssetType>() { // from class: com.explorestack.protobuf.adcom.NativeDataAssetType.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final NativeDataAssetType findValueByNumber(int i) {
            return NativeDataAssetType.forNumber(i);
        }
    };
    private static final NativeDataAssetType[] VALUES = values();

    NativeDataAssetType(int i) {
        this.value = i;
    }

    public static NativeDataAssetType forNumber(int i) {
        switch (i) {
            case 0:
                return NATIVE_DATA_ASSET_TYPE_INVALID;
            case 1:
                return NATIVE_DATA_ASSET_TYPE_SPONSORED;
            case 2:
                return NATIVE_DATA_ASSET_TYPE_DESC;
            case 3:
                return NATIVE_DATA_ASSET_TYPE_RATING;
            case 4:
                return NATIVE_DATA_ASSET_TYPE_LIKES;
            case 5:
                return NATIVE_DATA_ASSET_TYPE_DOWNLOADS;
            case 6:
                return NATIVE_DATA_ASSET_TYPE_PRICE;
            case 7:
                return NATIVE_DATA_ASSET_TYPE_SALE_PRICE;
            case 8:
                return NATIVE_DATA_ASSET_TYPE_PHONE;
            case 9:
                return NATIVE_DATA_ASSET_TYPE_ADDRESS;
            case 10:
                return NATIVE_DATA_ASSET_TYPE_DESC2;
            case 11:
                return NATIVE_DATA_ASSET_TYPE_DISPLAY_URL;
            case 12:
                return NATIVE_DATA_ASSET_TYPE_CTA_TEXT;
            default:
                return null;
        }
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(20);
    }

    public static Internal.EnumLiteMap<NativeDataAssetType> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static NativeDataAssetType valueOf(int i) {
        return forNumber(i);
    }

    public static NativeDataAssetType valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            return enumValueDescriptor.getIndex() == -1 ? UNRECOGNIZED : VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }

    @Override // com.explorestack.protobuf.ProtocolMessageEnum
    public final Descriptors.EnumDescriptor getDescriptorForType() {
        return getDescriptor();
    }

    @Override // com.explorestack.protobuf.ProtocolMessageEnum, com.explorestack.protobuf.Internal.EnumLite
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Override // com.explorestack.protobuf.ProtocolMessageEnum
    public final Descriptors.EnumValueDescriptor getValueDescriptor() {
        return getDescriptor().getValues().get(ordinal());
    }
}
