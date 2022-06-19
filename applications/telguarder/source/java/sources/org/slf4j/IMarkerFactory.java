package org.slf4j;
/* loaded from: classes3-dex2jar.jar:org/slf4j/IMarkerFactory.class */
public interface IMarkerFactory {
    boolean detachMarker(String str);

    boolean exists(String str);

    Marker getDetachedMarker(String str);

    Marker getMarker(String str);
}
