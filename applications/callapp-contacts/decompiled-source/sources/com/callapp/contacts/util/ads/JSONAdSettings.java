package com.callapp.contacts.util.ads;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/JSONAdSettings.class */
public class JSONAdSettings {
    public static final int ANIMATION_BLINK = 5;
    public static final int ANIMATION_EXPAND_AND_FLIP = 4;
    public static final int ANIMATION_FLIP = 3;
    public static final int ANIMATION_SLIDE = 1;
    public static final int LAYOUT_CARD_BIG_COLOR = 18;
    public static final int LAYOUT_CARD_SMALL_WITH_IMAGE = 15;
    public static final int LAYOUT_CARD_SMALL_WITH_IMAGE_COLOR = 17;
    public static final int LAYOUT_CARD_SMALL_WITH_IMAGE_CONTRAST = 19;
    public static final int LAYOUT_WITH_DESCRIPTION_TEXT = 13;
    public static final int NO_ANIMATION = 2;
    @JsonProperty("closeButton")
    private boolean addCloseButton;
    @JsonProperty("animation")
    private int animation;
    @JsonProperty("group")
    private int group;
    @JsonProperty("layout")
    private int layout;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/JSONAdSettings$AdItemAnimation.class */
    public @interface AdItemAnimation {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/JSONAdSettings$AdItemLayout.class */
    public @interface AdItemLayout {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONAdSettings jSONAdSettings = (JSONAdSettings) obj;
        return this.group == jSONAdSettings.group && this.layout == jSONAdSettings.layout && this.animation == jSONAdSettings.animation && this.addCloseButton == jSONAdSettings.addCloseButton;
    }

    public int getAnimation() {
        return this.animation;
    }

    public int getGroup() {
        return this.group;
    }

    public int getLayout() {
        return this.layout;
    }

    public int hashCode() {
        return (((((this.group * 31) + this.layout) * 31) + this.animation) * 31) + (this.addCloseButton ? 1 : 0);
    }

    public boolean shouldAddCloseButton() {
        return this.addCloseButton;
    }
}
