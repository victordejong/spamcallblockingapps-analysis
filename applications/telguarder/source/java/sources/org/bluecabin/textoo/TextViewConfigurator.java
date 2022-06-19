package org.bluecabin.textoo;

import android.text.util.Linkify;
import android.widget.TextView;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/TextViewConfigurator.class */
public abstract class TextViewConfigurator extends Configurator<TextView> implements TextLinkify<TextView, TextViewConfigurator>, LinksHandling<TextView, TextViewConfigurator> {
    public TextViewConfigurator(TextooContext textooContext) {
        super(textooContext);
    }

    @Override // org.bluecabin.textoo.LinksHandling
    public abstract TextViewConfigurator addLinksHandler(LinksHandler linksHandler);

    @Override // org.bluecabin.textoo.Configurator
    public abstract TextView apply();

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract TextViewConfigurator linkify(Pattern pattern, String str);

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract TextViewConfigurator linkify(Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter);

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract TextViewConfigurator linkifyAll();

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract TextViewConfigurator linkifyEmailAddresses();

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract TextViewConfigurator linkifyMapAddresses();

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract TextViewConfigurator linkifyPhoneNumbers();

    @Override // org.bluecabin.textoo.TextLinkify
    public abstract TextViewConfigurator linkifyWebUrls();
}
