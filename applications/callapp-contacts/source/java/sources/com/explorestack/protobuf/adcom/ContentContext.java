package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/ContentContext.class */
public enum ContentContext implements ProtocolMessageEnum {
    CONTENT_CONTEXT_INVALID(0),
    CONTENT_CONTEXT_VIDEO(1),
    CONTENT_CONTEXT_GAME(2),
    CONTENT_CONTEXT_MUSIC(3),
    CONTENT_CONTEXT_APPLICATION(4),
    CONTENT_CONTEXT_TEXT(5),
    CONTENT_CONTEXT_OTHER(6),
    CONTENT_CONTEXT_UNKNOWN(7),
    UNRECOGNIZED(-1);
    
    public static final int CONTENT_CONTEXT_APPLICATION_VALUE = 4;
    public static final int CONTENT_CONTEXT_GAME_VALUE = 2;
    public static final int CONTENT_CONTEXT_INVALID_VALUE = 0;
    public static final int CONTENT_CONTEXT_MUSIC_VALUE = 3;
    public static final int CONTENT_CONTEXT_OTHER_VALUE = 6;
    public static final int CONTENT_CONTEXT_TEXT_VALUE = 5;
    public static final int CONTENT_CONTEXT_UNKNOWN_VALUE = 7;
    public static final int CONTENT_CONTEXT_VIDEO_VALUE = 1;
    private final int value;
    private static final Internal.EnumLiteMap<ContentContext> internalValueMap = new Internal.EnumLiteMap<ContentContext>() { // from class: com.explorestack.protobuf.adcom.ContentContext.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final ContentContext findValueByNumber(int i) {
            return ContentContext.forNumber(i);
        }
    };
    private static final ContentContext[] VALUES = values();

    ContentContext(int i) {
        this.value = i;
    }

    public static ContentContext forNumber(int i) {
        switch (i) {
            case 0:
                return CONTENT_CONTEXT_INVALID;
            case 1:
                return CONTENT_CONTEXT_VIDEO;
            case 2:
                return CONTENT_CONTEXT_GAME;
            case 3:
                return CONTENT_CONTEXT_MUSIC;
            case 4:
                return CONTENT_CONTEXT_APPLICATION;
            case 5:
                return CONTENT_CONTEXT_TEXT;
            case 6:
                return CONTENT_CONTEXT_OTHER;
            case 7:
                return CONTENT_CONTEXT_UNKNOWN;
            default:
                return null;
        }
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(6);
    }

    public static Internal.EnumLiteMap<ContentContext> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static ContentContext valueOf(int i) {
        return forNumber(i);
    }

    public static ContentContext valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
