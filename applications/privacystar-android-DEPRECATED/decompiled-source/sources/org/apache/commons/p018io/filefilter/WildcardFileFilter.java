package org.apache.commons.p018io.filefilter;

import java.io.File;
import java.io.Serializable;
import java.util.List;
import org.apache.commons.p018io.FilenameUtils;
import org.apache.commons.p018io.IOCase;
/* renamed from: org.apache.commons.io.filefilter.WildcardFileFilter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/filefilter/WildcardFileFilter.class */
public class WildcardFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -7426486598995782105L;
    private final IOCase caseSensitivity;
    private final String[] wildcards;

    public WildcardFileFilter(String str) {
        this(str, IOCase.SENSITIVE);
    }

    public WildcardFileFilter(String str, IOCase iOCase) {
        if (str == null) {
            throw new IllegalArgumentException("The wildcard must not be null");
        }
        this.wildcards = new String[]{str};
        this.caseSensitivity = iOCase == null ? IOCase.SENSITIVE : iOCase;
    }

    public WildcardFileFilter(List<String> list) {
        this(list, IOCase.SENSITIVE);
    }

    public WildcardFileFilter(List<String> list, IOCase iOCase) {
        if (list == null) {
            throw new IllegalArgumentException("The wildcard list must not be null");
        }
        this.wildcards = (String[]) list.toArray(new String[list.size()]);
        this.caseSensitivity = iOCase == null ? IOCase.SENSITIVE : iOCase;
    }

    public WildcardFileFilter(String[] strArr) {
        this(strArr, IOCase.SENSITIVE);
    }

    public WildcardFileFilter(String[] strArr, IOCase iOCase) {
        if (strArr == null) {
            throw new IllegalArgumentException("The wildcard array must not be null");
        }
        this.wildcards = new String[strArr.length];
        System.arraycopy(strArr, 0, this.wildcards, 0, strArr.length);
        this.caseSensitivity = iOCase == null ? IOCase.SENSITIVE : iOCase;
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter, org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        String name = file.getName();
        for (String str : this.wildcards) {
            if (FilenameUtils.wildcardMatch(name, str, this.caseSensitivity)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter, org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        for (String str2 : this.wildcards) {
            if (FilenameUtils.wildcardMatch(str, str2, this.caseSensitivity)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("(");
        if (this.wildcards != null) {
            for (int i = 0; i < this.wildcards.length; i++) {
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(this.wildcards[i]);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
