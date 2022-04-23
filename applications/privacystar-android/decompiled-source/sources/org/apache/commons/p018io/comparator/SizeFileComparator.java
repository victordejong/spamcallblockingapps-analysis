package org.apache.commons.p018io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.p018io.FileUtils;
/* renamed from: org.apache.commons.io.comparator.SizeFileComparator */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/comparator/SizeFileComparator.class */
public class SizeFileComparator extends AbstractFileComparator implements Serializable {
    public static final Comparator<File> SIZE_COMPARATOR = new SizeFileComparator();
    public static final Comparator<File> SIZE_REVERSE = new ReverseComparator(SIZE_COMPARATOR);
    public static final Comparator<File> SIZE_SUMDIR_COMPARATOR = new SizeFileComparator(true);
    public static final Comparator<File> SIZE_SUMDIR_REVERSE = new ReverseComparator(SIZE_SUMDIR_COMPARATOR);
    private static final long serialVersionUID = -1201561106411416190L;
    private final boolean sumDirectoryContents;

    public SizeFileComparator() {
        this.sumDirectoryContents = false;
    }

    public SizeFileComparator(boolean z) {
        this.sumDirectoryContents = z;
    }

    public int compare(File file, File file2) {
        int i = (((file.isDirectory() ? (!this.sumDirectoryContents || !file.exists()) ? 0L : FileUtils.sizeOfDirectory(file) : file.length()) - (file2.isDirectory() ? (!this.sumDirectoryContents || !file2.exists()) ? 0L : FileUtils.sizeOfDirectory(file2) : file2.length())) > 0L ? 1 : (((file.isDirectory() ? (!this.sumDirectoryContents || !file.exists()) ? 0L : FileUtils.sizeOfDirectory(file) : file.length()) - (file2.isDirectory() ? (!this.sumDirectoryContents || !file2.exists()) ? 0L : FileUtils.sizeOfDirectory(file2) : file2.length())) == 0L ? 0 : -1));
        if (i < 0) {
            return -1;
        }
        return i > 0 ? 1 : 0;
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
    public String toString() {
        return super.toString() + "[sumDirectoryContents=" + this.sumDirectoryContents + "]";
    }
}
