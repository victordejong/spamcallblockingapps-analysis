package org.slf4j;

import org.slf4j.helpers.BasicMarkerFactory;
import org.slf4j.helpers.Util;
import org.slf4j.impl.StaticMarkerBinder;
/* loaded from: classes3-dex2jar.jar:org/slf4j/MarkerFactory.class */
public class MarkerFactory {
    static IMarkerFactory MARKER_FACTORY;

    static {
        try {
            MARKER_FACTORY = bwCompatibleGetMarkerFactoryFromBinder();
        } catch (Exception e) {
            Util.report("Unexpected failure while binding MarkerFactory", e);
        } catch (NoClassDefFoundError e2) {
            MARKER_FACTORY = new BasicMarkerFactory();
        }
    }

    private MarkerFactory() {
    }

    private static IMarkerFactory bwCompatibleGetMarkerFactoryFromBinder() throws NoClassDefFoundError {
        try {
            return StaticMarkerBinder.getSingleton().getMarkerFactory();
        } catch (NoSuchMethodError e) {
            return StaticMarkerBinder.SINGLETON.getMarkerFactory();
        }
    }

    public static Marker getDetachedMarker(String str) {
        return MARKER_FACTORY.getDetachedMarker(str);
    }

    public static IMarkerFactory getIMarkerFactory() {
        return MARKER_FACTORY;
    }

    public static Marker getMarker(String str) {
        return MARKER_FACTORY.getMarker(str);
    }
}
