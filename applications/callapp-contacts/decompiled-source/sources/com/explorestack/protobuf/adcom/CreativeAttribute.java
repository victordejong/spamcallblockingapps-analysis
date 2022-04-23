package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.ProtocolMessageEnum;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/CreativeAttribute.class */
public enum CreativeAttribute implements ProtocolMessageEnum {
    CREATIVE_ATTRIBUTE_INVALID(0),
    CREATIVE_ATTRIBUTE_AUDIO_AD_AUTOPLAY(1),
    CREATIVE_ATTRIBUTE_AUDIO_AD_USER_INITIATED(2),
    CREATIVE_ATTRIBUTE_EXPANDABLE_AUTOMATIC(3),
    CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_CLICK(4),
    CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_ROLLOVER(5),
    CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_AUTOPLAY(6),
    CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_USER_INITIATED(7),
    CREATIVE_ATTRIBUTE_POP(8),
    CREATIVE_ATTRIBUTE_PROVOCATIVE_SUGGESTIVE_IMAGERY(9),
    CREATIVE_ATTRIBUTE_EXTREME_ANIMATION(10),
    CREATIVE_ATTRIBUTE_SURVEYS(11),
    CREATIVE_ATTRIBUTE_TEXT_ONLY(12),
    CREATIVE_ATTRIBUTE_USER_INTERACTIVE(13),
    CREATIVE_ATTRIBUTE_ALERT_STYLE(14),
    CREATIVE_ATTRIBUTE_HAS_AUDIO_ON_OFF_BUTTON(15),
    CREATIVE_ATTRIBUTE_AD_PROVIDES_SKIP_BUTTON(16),
    CREATIVE_ATTRIBUTE_ADOBE_FLASH(17),
    CREATIVE_ATTRIBUTE_RESPONSIVE(18),
    UNRECOGNIZED(-1);
    
    public static final int CREATIVE_ATTRIBUTE_ADOBE_FLASH_VALUE = 17;
    public static final int CREATIVE_ATTRIBUTE_AD_PROVIDES_SKIP_BUTTON_VALUE = 16;
    public static final int CREATIVE_ATTRIBUTE_ALERT_STYLE_VALUE = 14;
    public static final int CREATIVE_ATTRIBUTE_AUDIO_AD_AUTOPLAY_VALUE = 1;
    public static final int CREATIVE_ATTRIBUTE_AUDIO_AD_USER_INITIATED_VALUE = 2;
    public static final int CREATIVE_ATTRIBUTE_EXPANDABLE_AUTOMATIC_VALUE = 3;
    public static final int CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_CLICK_VALUE = 4;
    public static final int CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_ROLLOVER_VALUE = 5;
    public static final int CREATIVE_ATTRIBUTE_EXTREME_ANIMATION_VALUE = 10;
    public static final int CREATIVE_ATTRIBUTE_HAS_AUDIO_ON_OFF_BUTTON_VALUE = 15;
    public static final int CREATIVE_ATTRIBUTE_INVALID_VALUE = 0;
    public static final int CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_AUTOPLAY_VALUE = 6;
    public static final int CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_USER_INITIATED_VALUE = 7;
    public static final int CREATIVE_ATTRIBUTE_POP_VALUE = 8;
    public static final int CREATIVE_ATTRIBUTE_PROVOCATIVE_SUGGESTIVE_IMAGERY_VALUE = 9;
    public static final int CREATIVE_ATTRIBUTE_RESPONSIVE_VALUE = 18;
    public static final int CREATIVE_ATTRIBUTE_SURVEYS_VALUE = 11;
    public static final int CREATIVE_ATTRIBUTE_TEXT_ONLY_VALUE = 12;
    public static final int CREATIVE_ATTRIBUTE_USER_INTERACTIVE_VALUE = 13;
    private final int value;
    private static final Internal.EnumLiteMap<CreativeAttribute> internalValueMap = new Internal.EnumLiteMap<CreativeAttribute>() { // from class: com.explorestack.protobuf.adcom.CreativeAttribute.1
        @Override // com.explorestack.protobuf.Internal.EnumLiteMap
        public final CreativeAttribute findValueByNumber(int i) {
            return CreativeAttribute.forNumber(i);
        }
    };
    private static final CreativeAttribute[] VALUES = values();

    CreativeAttribute(int i) {
        this.value = i;
    }

    public static CreativeAttribute forNumber(int i) {
        switch (i) {
            case 0:
                return CREATIVE_ATTRIBUTE_INVALID;
            case 1:
                return CREATIVE_ATTRIBUTE_AUDIO_AD_AUTOPLAY;
            case 2:
                return CREATIVE_ATTRIBUTE_AUDIO_AD_USER_INITIATED;
            case 3:
                return CREATIVE_ATTRIBUTE_EXPANDABLE_AUTOMATIC;
            case 4:
                return CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_CLICK;
            case 5:
                return CREATIVE_ATTRIBUTE_EXPANDABLE_USER_INITIATED_ROLLOVER;
            case 6:
                return CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_AUTOPLAY;
            case 7:
                return CREATIVE_ATTRIBUTE_IN_BANNER_VIDEO_AD_USER_INITIATED;
            case 8:
                return CREATIVE_ATTRIBUTE_POP;
            case 9:
                return CREATIVE_ATTRIBUTE_PROVOCATIVE_SUGGESTIVE_IMAGERY;
            case 10:
                return CREATIVE_ATTRIBUTE_EXTREME_ANIMATION;
            case 11:
                return CREATIVE_ATTRIBUTE_SURVEYS;
            case 12:
                return CREATIVE_ATTRIBUTE_TEXT_ONLY;
            case 13:
                return CREATIVE_ATTRIBUTE_USER_INTERACTIVE;
            case 14:
                return CREATIVE_ATTRIBUTE_ALERT_STYLE;
            case 15:
                return CREATIVE_ATTRIBUTE_HAS_AUDIO_ON_OFF_BUTTON;
            case 16:
                return CREATIVE_ATTRIBUTE_AD_PROVIDES_SKIP_BUTTON;
            case 17:
                return CREATIVE_ATTRIBUTE_ADOBE_FLASH;
            case 18:
                return CREATIVE_ATTRIBUTE_RESPONSIVE;
            default:
                return null;
        }
    }

    public static final Descriptors.EnumDescriptor getDescriptor() {
        return AdcomProto.getDescriptor().getEnumTypes().get(7);
    }

    public static Internal.EnumLiteMap<CreativeAttribute> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static CreativeAttribute valueOf(int i) {
        return forNumber(i);
    }

    public static CreativeAttribute valueOf(Descriptors.EnumValueDescriptor enumValueDescriptor) {
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
