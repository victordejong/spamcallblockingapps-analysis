package org.bluecabin.textoo;

import android.text.Html;
import android.text.Spanned;
import android.text.util.Linkify;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/StringConfigurator.class */
public abstract class StringConfigurator extends Configurator<String> implements TextLinkify<Spanned, SpannedConfigurator> {
    public StringConfigurator(TextooContext textooContext) {
        super(textooContext);
    }

    @Override // org.bluecabin.textoo.Configurator
    public abstract String apply();

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract SpannedConfigurator linkify(Pattern pattern, String str);

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract SpannedConfigurator linkify(Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter);

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract SpannedConfigurator linkifyAll();

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract SpannedConfigurator linkifyEmailAddresses();

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract SpannedConfigurator linkifyMapAddresses();

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract SpannedConfigurator linkifyPhoneNumbers();

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract SpannedConfigurator linkifyWebUrls();

    public abstract SpannedConfigurator parseHtml();

    public abstract SpannedConfigurator parseHtml(Html.ImageGetter imageGetter, Html.TagHandler tagHandler);
}
