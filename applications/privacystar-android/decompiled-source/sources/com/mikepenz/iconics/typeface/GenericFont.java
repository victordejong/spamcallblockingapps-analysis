package com.mikepenz.iconics.typeface;

import android.content.Context;
import android.graphics.Typeface;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.Collection;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/typeface/GenericFont.class */
public class GenericFont implements ITypeface {
    private String mAuthor;
    private HashMap<String, Character> mChars;
    private String mFontFile;
    private String mFontName;
    private String mMappingPrefix;
    private Typeface typeface;

    /* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/typeface/GenericFont$Icon.class */
    public class Icon implements IIcon {
        private char aChar;
        private String mName;
        private ITypeface mTypeface;

        public Icon(char c) {
            this.aChar = c;
        }

        public Icon(String str, char c) {
            this.mName = str;
            this.aChar = c;
        }

        @Override // com.mikepenz.iconics.typeface.IIcon
        public char getCharacter() {
            return this.aChar;
        }

        @Override // com.mikepenz.iconics.typeface.IIcon
        public String getFormattedName() {
            return "{" + getName() + "}";
        }

        @Override // com.mikepenz.iconics.typeface.IIcon
        public String getName() {
            return this.mName != null ? this.mName : String.valueOf(this.aChar);
        }

        @Override // com.mikepenz.iconics.typeface.IIcon
        public ITypeface getTypeface() {
            return this.mTypeface != null ? this.mTypeface : GenericFont.this;
        }

        public Icon withTypeface(ITypeface iTypeface) {
            this.mTypeface = iTypeface;
            return this;
        }
    }

    protected GenericFont() {
        this.typeface = null;
        this.mChars = new HashMap<>();
    }

    public GenericFont(String str, String str2) {
        this("GenericFont", "GenericAuthor", str, str2);
    }

    public GenericFont(String str, String str2, String str3, String str4) {
        this.typeface = null;
        this.mChars = new HashMap<>();
        if (str3.length() != 3) {
            new IllegalArgumentException("MappingPrefix must be 3 char long");
        }
        this.mFontName = str;
        this.mAuthor = str2;
        this.mMappingPrefix = str3;
        this.mFontFile = str4;
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public String getAuthor() {
        return this.mAuthor;
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public HashMap<String, Character> getCharacters() {
        return new HashMap<>();
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public String getDescription() {
        return "";
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public String getFontName() {
        return this.mFontName;
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public IIcon getIcon(String str) {
        return new Icon(this.mChars.get(str).charValue()).withTypeface(this);
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public int getIconCount() {
        return this.mChars.size();
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public Collection<String> getIcons() {
        return this.mChars.keySet();
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public String getLicense() {
        return "";
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public String getLicenseUrl() {
        return "";
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public String getMappingPrefix() {
        return this.mMappingPrefix;
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public Typeface getTypeface(Context context) {
        if (this.typeface == null) {
            try {
                this.typeface = Typeface.createFromAsset(context.getAssets(), this.mFontFile);
            } catch (Exception e) {
                return null;
            }
        }
        return this.typeface;
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public String getUrl() {
        return "";
    }

    @Override // com.mikepenz.iconics.typeface.ITypeface
    public String getVersion() {
        return "1.0.0";
    }

    public void registerIcon(String str, char c) {
        HashMap<String, Character> hashMap = this.mChars;
        hashMap.put(this.mMappingPrefix + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + str, Character.valueOf(c));
    }
}
