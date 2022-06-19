package org.slf4j.helpers;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.slf4j.IMarkerFactory;
import org.slf4j.Marker;
/* loaded from: classes3-dex2jar.jar:org/slf4j/helpers/BasicMarkerFactory.class */
public class BasicMarkerFactory implements IMarkerFactory {
    private final ConcurrentMap<String, Marker> markerMap = new ConcurrentHashMap();

    @Override // org.slf4j.IMarkerFactory
    public boolean detachMarker(String str) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        if (this.markerMap.remove(str) != null) {
            z = true;
        }
        return z;
    }

    @Override // org.slf4j.IMarkerFactory
    public boolean exists(String str) {
        if (str == null) {
            return false;
        }
        return this.markerMap.containsKey(str);
    }

    @Override // org.slf4j.IMarkerFactory
    public Marker getDetachedMarker(String str) {
        return new BasicMarker(str);
    }

    @Override // org.slf4j.IMarkerFactory
    public Marker getMarker(String str) {
        if (str != null) {
            Marker marker = this.markerMap.get(str);
            BasicMarker basicMarker = marker;
            if (marker == null) {
                basicMarker = new BasicMarker(str);
                Marker putIfAbsent = this.markerMap.putIfAbsent(str, basicMarker);
                if (putIfAbsent != null) {
                    basicMarker = putIfAbsent;
                }
            }
            return basicMarker;
        }
        throw new IllegalArgumentException("Marker name cannot be null");
    }
}
