package org.apache.commons.p018io.filefilter;

import java.io.File;
import java.io.Serializable;
/* renamed from: org.apache.commons.io.filefilter.CanWriteFileFilter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/filefilter/CanWriteFileFilter.class */
public class CanWriteFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 5132005214688990379L;
    public static final IOFileFilter CAN_WRITE = new CanWriteFileFilter();
    public static final IOFileFilter CANNOT_WRITE = new NotFileFilter(CAN_WRITE);

    protected CanWriteFileFilter() {
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter, org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return file.canWrite();
    }
}
