package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/CategoryTaxonomy.class */
public enum CategoryTaxonomy implements ProtocolMessageEnum {
    CATEGORY_TAXONOMY_INVALID(0),
    CATEGORY_TAXONOMY_IAB_CONTENT_1_0(1),
    CATEGORY_TAXONOMY_IAB_CONTENT_2_0(2),
    CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0(3),
    UNRECOGNIZED(-1);
    
    public static final int CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0_VALUE = 3;
    public static final int CATEGORY_TAXONOMY_IAB_CONTENT_1_0_VALUE = 1;
    public static final int CATEGORY_TAXONOMY_IAB_CONTENT_2_0_VALUE = 2;
    public static final int CATEGORY_TAXONOMY_INVALID_VALUE = 0;
    private final int value;
    private static final Internal.EnumLiteMap<CategoryTaxonomy> internalValueMap = new Internal.EnumLiteMap<CategoryTaxonomy>() { // from class: com.explorestack.protobuf.adcom.CategoryTaxonomy.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final CategoryTaxonomy findValueByNumber(int i) {
            return CategoryTaxonomy.forNumber(i);
        }
    };
    private static final CategoryTaxonomy[] VALUES = values();

    CategoryTaxonomy(int i) {
        this.value = i;
    }

    public static CategoryTaxonomy forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return CATEGORY_TAXONOMY_IAB_CONTENT_1_0;
            }
            if (i == 2) {
                return CATEGORY_TAXONOMY_IAB_CONTENT_2_0;
            }
            if (i == 3) {
                return CATEGORY_TAXONOMY_IAB_AD_PRODUCT_1_0;
            }
            return null;
        }
        return CATEGORY_TAXONOMY_INVALID;
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(2);
    }

    public static Internal.EnumLiteMap<CategoryTaxonomy> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static CategoryTaxonomy valueOf(int i) {
        return forNumber(i);
    }

    public static CategoryTaxonomy valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
