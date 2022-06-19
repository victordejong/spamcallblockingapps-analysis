package net.pubnative.lite.sdk.utils;

import net.pubnative.lite.sdk.vpaid.models.vast.Vast;
import net.pubnative.lite.sdk.vpaid.xml.XmlParser;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/MarkupUtils.class */
public class MarkupUtils {
    public static boolean isVastXml(String str) {
        try {
            return ((Vast) XmlParser.parse(str, Vast.class)) != null;
        } catch (Exception e) {
            return false;
        }
    }
}
