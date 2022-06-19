package org.bluecabin.textoo;

import android.text.Spanned;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/Textoo.class */
public final class Textoo {
    private Textoo() {
    }

    public static SpannedConfigurator config(Spanned spanned) {
        return ConfiguratorFactory.getInstance().createSpannedConfigurator(createContext(), spanned);
    }

    public static StringConfigurator config(String str) {
        return ConfiguratorFactory.getInstance().createStringConfigurator(createContext(), str);
    }

    public static TextViewConfigurator config(TextView textView) {
        return ConfiguratorFactory.getInstance().createTextViewConfigurator(createContext(), textView);
    }

    protected static TextooContext createContext() {
        return new TextooContext();
    }
}
