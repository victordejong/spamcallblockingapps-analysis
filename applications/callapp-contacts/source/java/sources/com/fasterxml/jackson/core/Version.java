package com.fasterxml.jackson.core;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/Version.class */
public class Version implements Serializable, Comparable<Version> {
    private static final Version UNKNOWN_VERSION = new Version(0, 0, 0, null, null, null);
    protected final String _artifactId;
    protected final String _groupId;
    protected final int _majorVersion;
    protected final int _minorVersion;
    protected final int _patchLevel;
    protected final String _snapshotInfo;

    @Deprecated
    public Version(int i, int i2, int i3, String str) {
        this(i, i2, i3, str, null, null);
    }

    public Version(int i, int i2, int i3, String str, String str2, String str3) {
        this._majorVersion = i;
        this._minorVersion = i2;
        this._patchLevel = i3;
        this._snapshotInfo = str;
        this._groupId = str2 == null ? "" : str2;
        this._artifactId = str3 == null ? "" : str3;
    }

    public static Version unknownVersion() {
        return UNKNOWN_VERSION;
    }

    public int compareTo(Version version) {
        if (version == this) {
            return 0;
        }
        int compareTo = this._groupId.compareTo(version._groupId);
        int i = compareTo;
        if (compareTo == 0) {
            int compareTo2 = this._artifactId.compareTo(version._artifactId);
            i = compareTo2;
            if (compareTo2 == 0) {
                int i2 = this._majorVersion - version._majorVersion;
                i = i2;
                if (i2 == 0) {
                    int i3 = this._minorVersion - version._minorVersion;
                    i = i3;
                    if (i3 == 0) {
                        i = this._patchLevel - version._patchLevel;
                    }
                }
            }
        }
        return i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Version version = (Version) obj;
        return version._majorVersion == this._majorVersion && version._minorVersion == this._minorVersion && version._patchLevel == this._patchLevel && version._artifactId.equals(this._artifactId) && version._groupId.equals(this._groupId);
    }

    public int hashCode() {
        return this._artifactId.hashCode() ^ (((this._groupId.hashCode() + this._majorVersion) - this._minorVersion) + this._patchLevel);
    }

    public boolean isSnapshot() {
        String str = this._snapshotInfo;
        return str != null && str.length() > 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this._majorVersion);
        sb.append('.');
        sb.append(this._minorVersion);
        sb.append('.');
        sb.append(this._patchLevel);
        if (isSnapshot()) {
            sb.append('-');
            sb.append(this._snapshotInfo);
        }
        return sb.toString();
    }
}
