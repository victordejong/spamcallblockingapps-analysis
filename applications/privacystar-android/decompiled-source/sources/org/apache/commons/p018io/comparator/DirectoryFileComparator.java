package org.apache.commons.p018io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
/* renamed from: org.apache.commons.io.comparator.DirectoryFileComparator */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/comparator/DirectoryFileComparator.class */
public class DirectoryFileComparator extends AbstractFileComparator implements Serializable {
    public static final Comparator<File> DIRECTORY_COMPARATOR = new DirectoryFileComparator();
    public static final Comparator<File> DIRECTORY_REVERSE = new ReverseComparator(DIRECTORY_COMPARATOR);
    private static final long serialVersionUID = 296132640160964395L;

    private int getType(File file) {
        return file.isDirectory() ? 1 : 2;
    }

    public int compare(File file, File file2) {
        return getType(file) - getType(file2);
    }

    @Override // org.apache.commons.p018io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ List sort(List list) {
        return super.sort(list);
    }

    @Override // org.apache.commons.p018io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }

    @Override // org.apache.commons.p018io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
