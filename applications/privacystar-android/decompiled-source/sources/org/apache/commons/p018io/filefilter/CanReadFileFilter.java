package org.apache.commons.p018io.filefilter;

import java.io.File;
import java.io.Serializable;
/* renamed from: org.apache.commons.io.filefilter.CanReadFileFilter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/filefilter/CanReadFileFilter.class */
public class CanReadFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 3179904805251622989L;
    public static final IOFileFilter CAN_READ = new CanReadFileFilter();
    public static final IOFileFilter CANNOT_READ = new NotFileFilter(CAN_READ);
    public static final IOFileFilter READ_ONLY = new AndFileFilter(CAN_READ, CanWriteFileFilter.CANNOT_WRITE);

    protected CanReadFileFilter() {
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter, org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return file.canRead();
    }
}
