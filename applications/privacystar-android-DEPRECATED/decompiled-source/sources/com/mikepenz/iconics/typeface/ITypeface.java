package com.mikepenz.iconics.typeface;

import android.content.Context;
import android.graphics.Typeface;
import java.util.Collection;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/typeface/ITypeface.class */
public interface ITypeface {
    String getAuthor();

    HashMap<String, Character> getCharacters();

    String getDescription();

    String getFontName();

    IIcon getIcon(String str);

    int getIconCount();

    Collection<String> getIcons();

    String getLicense();

    String getLicenseUrl();

    String getMappingPrefix();

    Typeface getTypeface(Context context);

    String getUrl();

    String getVersion();
}
