package com.mikepenz.iconics;

import android.content.Context;
import android.text.Editable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.CharacterStyle;
import android.util.Log;
import android.widget.Button;
import android.widget.TextView;
import com.mikepenz.iconics.typeface.IIcon;
import com.mikepenz.iconics.typeface.ITypeface;
import com.mikepenz.iconics.utils.GenericsUtil;
import com.mikepenz.iconics.utils.IconicsUtils;
import com.mikepenz.iconics.utils.TextStyleContainer;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/Iconics.class */
public final class Iconics {
    private static HashMap<String, ITypeface> FONTS = new HashMap<>();
    private static boolean INIT_DONE = false;
    public static final String TAG = "Iconics";

    /* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/Iconics$IconicsBuilder.class */
    public static class IconicsBuilder {
        private Context ctx;
        private List<CharacterStyle> styles = new LinkedList();
        private HashMap<String, List<CharacterStyle>> stylesFor = new HashMap<>();
        private List<ITypeface> fonts = new LinkedList();

        public IconicsBuilder ctx(Context context) {
            this.ctx = context;
            return this;
        }

        public IconicsBuilder font(ITypeface iTypeface) {
            this.fonts.add(iTypeface);
            return this;
        }

        /* renamed from: on */
        public IconicsBuilderString m319on(Spanned spanned) {
            return new IconicsBuilderString(this.ctx, this.fonts, spanned, this.styles, this.stylesFor);
        }

        /* renamed from: on */
        public IconicsBuilderString m316on(CharSequence charSequence) {
            return m315on(charSequence.toString());
        }

        /* renamed from: on */
        public IconicsBuilderString m315on(String str) {
            return m319on((Spanned) new SpannableString(str));
        }

        /* renamed from: on */
        public IconicsBuilderString m314on(StringBuilder sb) {
            return m315on(sb.toString());
        }

        /* renamed from: on */
        public IconicsBuilderView m318on(Button button) {
            return new IconicsBuilderView(this.ctx, this.fonts, button, this.styles, this.stylesFor);
        }

        /* renamed from: on */
        public IconicsBuilderView m317on(TextView textView) {
            return new IconicsBuilderView(this.ctx, this.fonts, textView, this.styles, this.stylesFor);
        }

        public IconicsBuilder style(CharacterStyle... characterStyleArr) {
            if (characterStyleArr != null && characterStyleArr.length > 0) {
                Collections.addAll(this.styles, characterStyleArr);
            }
            return this;
        }

        public IconicsBuilder styleFor(IIcon iIcon, CharacterStyle... characterStyleArr) {
            return styleFor(iIcon.getName(), characterStyleArr);
        }

        public IconicsBuilder styleFor(String str, CharacterStyle... characterStyleArr) {
            String replace = str.replace(HelpFormatter.DEFAULT_OPT_PREFIX, EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            if (!this.stylesFor.containsKey(replace)) {
                this.stylesFor.put(replace, new LinkedList());
            }
            if (characterStyleArr != null && characterStyleArr.length > 0) {
                for (CharacterStyle characterStyle : characterStyleArr) {
                    this.stylesFor.get(replace).add(characterStyle);
                }
            }
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/Iconics$IconicsBuilderString.class */
    public static class IconicsBuilderString {
        private Context ctx;
        private List<ITypeface> fonts;
        private Spanned text;
        private List<CharacterStyle> withStyles;
        private HashMap<String, List<CharacterStyle>> withStylesFor;

        public IconicsBuilderString(Context context, List<ITypeface> list, Spanned spanned, List<CharacterStyle> list2, HashMap<String, List<CharacterStyle>> hashMap) {
            this.ctx = context;
            this.fonts = list;
            this.text = spanned;
            this.withStyles = list2;
            this.withStylesFor = hashMap;
        }

        public Spanned build() {
            HashMap hashMap = new HashMap();
            for (ITypeface iTypeface : this.fonts) {
                hashMap.put(iTypeface.getMappingPrefix(), iTypeface);
            }
            return Iconics.style(this.ctx, hashMap, this.text, this.withStyles, this.withStylesFor);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/Iconics$IconicsBuilderView.class */
    public static class IconicsBuilderView {
        private Context ctx;
        private List<ITypeface> fonts;
        private TextView view;
        private List<CharacterStyle> withStyles;
        private HashMap<String, List<CharacterStyle>> withStylesFor;

        public IconicsBuilderView(Context context, List<ITypeface> list, TextView textView, List<CharacterStyle> list2, HashMap<String, List<CharacterStyle>> hashMap) {
            this.ctx = context;
            this.fonts = list;
            this.view = textView;
            this.withStyles = list2;
            this.withStylesFor = hashMap;
        }

        public void build() {
            HashMap hashMap = new HashMap();
            for (ITypeface iTypeface : this.fonts) {
                hashMap.put(iTypeface.getMappingPrefix(), iTypeface);
            }
            if (this.view.getText() instanceof Spanned) {
                this.view.setText(Iconics.style(this.ctx, hashMap, (Spanned) this.view.getText(), this.withStyles, this.withStylesFor));
            } else {
                this.view.setText(Iconics.style(this.ctx, hashMap, new SpannableString(this.view.getText()), this.withStyles, this.withStylesFor));
            }
            if (this.view instanceof Button) {
                this.view.setAllCaps(false);
            }
        }
    }

    private Iconics() {
    }

    public static ITypeface findFont(Context context, String str) {
        init(context);
        return FONTS.get(str);
    }

    public static ITypeface findFont(IIcon iIcon) {
        return iIcon.getTypeface();
    }

    public static Collection<ITypeface> getRegisteredFonts(Context context) {
        init(context);
        return FONTS.values();
    }

    public static boolean iconExists(Context context, String str) {
        try {
            findFont(context, str.substring(0, 3)).getIcon(str.replace(HelpFormatter.DEFAULT_OPT_PREFIX, EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR));
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
        if (r3.size() == 0) goto L_0x0011;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.HashMap<java.lang.String, com.mikepenz.iconics.typeface.ITypeface> init(android.content.Context r2, java.util.HashMap<java.lang.String, com.mikepenz.iconics.typeface.ITypeface> r3) {
        /*
            r0 = r2
            init(r0)
            r0 = r3
            if (r0 == 0) goto L_0x0011
            r0 = r3
            r2 = r0
            r0 = r3
            int r0 = r0.size()
            if (r0 != 0) goto L_0x0015
        L_0x0011:
            java.util.HashMap<java.lang.String, com.mikepenz.iconics.typeface.ITypeface> r0 = com.mikepenz.iconics.Iconics.FONTS
            r2 = r0
        L_0x0015:
            r0 = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.iconics.Iconics.init(android.content.Context, java.util.HashMap):java.util.HashMap");
    }

    public static void init(Context context) {
        String[] fields;
        if (!INIT_DONE) {
            for (String str : GenericsUtil.getFields(context)) {
                try {
                    ITypeface iTypeface = (ITypeface) Class.forName(str).newInstance();
                    validateFont(iTypeface);
                    FONTS.put(iTypeface.getMappingPrefix(), iTypeface);
                } catch (Exception e) {
                    Log.e("Android-Iconics", "Can't init: " + str);
                }
            }
            INIT_DONE = true;
        }
    }

    public static boolean registerFont(ITypeface iTypeface) {
        validateFont(iTypeface);
        FONTS.put(iTypeface.getMappingPrefix(), iTypeface);
        return true;
    }

    public static Spanned style(Context context, Spanned spanned) {
        return style(context, null, spanned, null, null);
    }

    public static Spanned style(Context context, HashMap<String, ITypeface> hashMap, Spanned spanned, List<CharacterStyle> list, HashMap<String, List<CharacterStyle>> hashMap2) {
        TextStyleContainer findIcons = IconicsUtils.findIcons(spanned, init(context, hashMap));
        SpannableString valueOf = SpannableString.valueOf(findIcons.spannableStringBuilder);
        IconicsUtils.applyStyles(context, valueOf, findIcons.styleContainers, list, hashMap2);
        return valueOf;
    }

    public static void styleEditable(Context context, Editable editable) {
        styleEditable(context, null, editable, null, null);
    }

    public static void styleEditable(Context context, HashMap<String, ITypeface> hashMap, Editable editable, List<CharacterStyle> list, HashMap<String, List<CharacterStyle>> hashMap2) {
        IconicsUtils.applyStyles(context, editable, IconicsUtils.findIconsFromEditable(editable, init(context, hashMap)), list, hashMap2);
    }

    private static void validateFont(ITypeface iTypeface) {
        if (iTypeface.getMappingPrefix().length() != 3) {
            throw new IllegalArgumentException("The mapping prefix of a font must be three characters long.");
        }
    }
}
