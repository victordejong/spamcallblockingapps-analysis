package org.bluecabin.textoo;

import android.text.Spanned;
import android.widget.TextView;
import org.bluecabin.textoo.impl.SpannedConfiguratorImpl;
import org.bluecabin.textoo.impl.StringConfiguratorImpl;
import org.bluecabin.textoo.impl.TextViewConfiguratorImpl;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/ConfiguratorFactory.class */
public final class ConfiguratorFactory {
    private static final ConfiguratorFactory _instance = new ConfiguratorFactory();

    private ConfiguratorFactory() {
    }

    public static ConfiguratorFactory getInstance() {
        return _instance;
    }

    public SpannedConfigurator createSpannedConfigurator(TextooContext textooContext, Spanned spanned) {
        return SpannedConfiguratorImpl.create(textooContext, spanned);
    }

    public StringConfigurator createStringConfigurator(TextooContext textooContext, String str) {
        return StringConfiguratorImpl.create(textooContext, str);
    }

    public TextViewConfigurator createTextViewConfigurator(TextooContext textooContext, TextView textView) {
        return TextViewConfiguratorImpl.create(textooContext, textView);
    }
}
