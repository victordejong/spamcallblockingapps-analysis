package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/PlaybackMethod.class */
public enum PlaybackMethod implements ProtocolMessageEnum {
    PLAYBACK_METHOD_INVALID(0),
    PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_ON(1),
    PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_OFF(2),
    PLAYBACK_METHOD_ON_CLICK_SOUND_ON(3),
    PLAYBACK_METHOD_ON_MOUSE_OVER_SOUND_ON(4),
    PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_ON(5),
    PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_OFF(6),
    UNRECOGNIZED(-1);
    
    public static final int PLAYBACK_METHOD_INVALID_VALUE = 0;
    public static final int PLAYBACK_METHOD_ON_CLICK_SOUND_ON_VALUE = 3;
    public static final int PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_OFF_VALUE = 6;
    public static final int PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_ON_VALUE = 5;
    public static final int PLAYBACK_METHOD_ON_MOUSE_OVER_SOUND_ON_VALUE = 4;
    public static final int PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_OFF_VALUE = 2;
    public static final int PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_ON_VALUE = 1;
    private final int value;
    private static final Internal.EnumLiteMap<PlaybackMethod> internalValueMap = new Internal.EnumLiteMap<PlaybackMethod>() { // from class: com.explorestack.protobuf.adcom.PlaybackMethod.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final PlaybackMethod findValueByNumber(int i) {
            return PlaybackMethod.forNumber(i);
        }
    };
    private static final PlaybackMethod[] VALUES = values();

    PlaybackMethod(int i) {
        this.value = i;
    }

    public static PlaybackMethod forNumber(int i) {
        switch (i) {
            case 0:
                return PLAYBACK_METHOD_INVALID;
            case 1:
                return PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_ON;
            case 2:
                return PLAYBACK_METHOD_ON_PAGE_LOAD_SOUND_OFF;
            case 3:
                return PLAYBACK_METHOD_ON_CLICK_SOUND_ON;
            case 4:
                return PLAYBACK_METHOD_ON_MOUSE_OVER_SOUND_ON;
            case 5:
                return PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_ON;
            case 6:
                return PLAYBACK_METHOD_ON_ENTERING_VIEWPORT_SOUND_OFF;
            default:
                return null;
        }
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(24);
    }

    public static Internal.EnumLiteMap<PlaybackMethod> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static PlaybackMethod valueOf(int i) {
        return forNumber(i);
    }

    public static PlaybackMethod valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
