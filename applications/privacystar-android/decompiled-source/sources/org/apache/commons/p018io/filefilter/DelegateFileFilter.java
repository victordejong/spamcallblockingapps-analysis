package org.apache.commons.p018io.filefilter;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.io.Serializable;
/* renamed from: org.apache.commons.io.filefilter.DelegateFileFilter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/filefilter/DelegateFileFilter.class */
public class DelegateFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -8723373124984771318L;
    private final FileFilter fileFilter;
    private final FilenameFilter filenameFilter;

    public DelegateFileFilter(FileFilter fileFilter) {
        if (fileFilter == null) {
            throw new IllegalArgumentException("The FileFilter must not be null");
        }
        this.fileFilter = fileFilter;
        this.filenameFilter = null;
    }

    public DelegateFileFilter(FilenameFilter filenameFilter) {
        if (filenameFilter == null) {
            throw new IllegalArgumentException("The FilenameFilter must not be null");
        }
        this.filenameFilter = filenameFilter;
        this.fileFilter = null;
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter, org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return this.fileFilter != null ? this.fileFilter.accept(file) : super.accept(file);
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter, org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return this.filenameFilter != null ? this.filenameFilter.accept(file, str) : super.accept(file, str);
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter
    public String toString() {
        String obj = (this.fileFilter != null ? this.fileFilter : this.filenameFilter).toString();
        return super.toString() + "(" + obj + ")";
    }
}
