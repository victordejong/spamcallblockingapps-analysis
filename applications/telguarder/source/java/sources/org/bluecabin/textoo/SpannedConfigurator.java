package org.bluecabin.textoo;

import android.text.Spanned;
import android.text.util.Linkify;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/SpannedConfigurator.class */
public abstract class SpannedConfigurator extends Configurator<Spanned> implements TextLinkify<Spanned, SpannedConfigurator>, LinksHandling<Spanned, SpannedConfigurator> {
    public SpannedConfigurator(TextooContext textooContext) {
        super(textooContext);
    }

    @Override // org.bluecabin.textoo.LinksHandling
    public abstract SpannedConfigurator addLinksHandler(LinksHandler linksHandler);

    @Override // org.bluecabin.textoo.Configurator
    public abstract Spanned apply();

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
}
