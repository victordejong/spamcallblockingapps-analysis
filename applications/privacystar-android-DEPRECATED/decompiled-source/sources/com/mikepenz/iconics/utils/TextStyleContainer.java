package com.mikepenz.iconics.utils;

import android.text.SpannableStringBuilder;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/utils/TextStyleContainer.class */
public class TextStyleContainer {
    public SpannableStringBuilder spannableStringBuilder;
    public LinkedList<StyleContainer> styleContainers;

    public TextStyleContainer(SpannableStringBuilder spannableStringBuilder, LinkedList<StyleContainer> linkedList) {
        this.spannableStringBuilder = spannableStringBuilder;
        this.styleContainers = linkedList;
    }
}
