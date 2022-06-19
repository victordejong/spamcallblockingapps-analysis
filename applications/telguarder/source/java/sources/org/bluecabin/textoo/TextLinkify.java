package org.bluecabin.textoo;

import android.text.util.Linkify;
import java.util.regex.Pattern;
import org.bluecabin.textoo.TextLinkify;
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/TextLinkify.class */
public interface TextLinkify<T, C extends TextLinkify<T, C>> {
    C linkify(Pattern pattern, String str);

    C linkify(Pattern pattern, String str, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter);

    C linkifyAll();

    C linkifyEmailAddresses();

    C linkifyMapAddresses();

    C linkifyPhoneNumbers();

    C linkifyWebUrls();
}
