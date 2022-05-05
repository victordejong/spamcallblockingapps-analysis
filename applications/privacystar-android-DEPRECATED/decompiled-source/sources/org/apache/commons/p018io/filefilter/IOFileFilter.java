package org.apache.commons.p018io.filefilter;

import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
/* renamed from: org.apache.commons.io.filefilter.IOFileFilter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/filefilter/IOFileFilter.class */
public interface IOFileFilter extends FileFilter, FilenameFilter {
    @Override // java.io.FileFilter
    boolean accept(File file);

    boolean accept(File file, String str);
}
