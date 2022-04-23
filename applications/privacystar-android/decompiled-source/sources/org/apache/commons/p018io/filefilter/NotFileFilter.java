package org.apache.commons.p018io.filefilter;

import java.io.File;
import java.io.Serializable;
/* renamed from: org.apache.commons.io.filefilter.NotFileFilter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/filefilter/NotFileFilter.class */
public class NotFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 6131563330944994230L;
    private final IOFileFilter filter;

    public NotFileFilter(IOFileFilter iOFileFilter) {
        if (iOFileFilter == null) {
            throw new IllegalArgumentException("The filter must not be null");
        }
        this.filter = iOFileFilter;
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter, org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return !this.filter.accept(file);
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter, org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return !this.filter.accept(file, str);
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter
    public String toString() {
        return super.toString() + "(" + this.filter.toString() + ")";
    }
}
