package org.apache.commons.p018io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.p018io.IOCase;
/* renamed from: org.apache.commons.io.comparator.NameFileComparator */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/comparator/NameFileComparator.class */
public class NameFileComparator extends AbstractFileComparator implements Serializable {
    private static final long serialVersionUID = 8397947749814525798L;
    private final IOCase caseSensitivity;
    public static final Comparator<File> NAME_COMPARATOR = new NameFileComparator();
    public static final Comparator<File> NAME_REVERSE = new ReverseComparator(NAME_COMPARATOR);
    public static final Comparator<File> NAME_INSENSITIVE_COMPARATOR = new NameFileComparator(IOCase.INSENSITIVE);
    public static final Comparator<File> NAME_INSENSITIVE_REVERSE = new ReverseComparator(NAME_INSENSITIVE_COMPARATOR);
    public static final Comparator<File> NAME_SYSTEM_COMPARATOR = new NameFileComparator(IOCase.SYSTEM);
    public static final Comparator<File> NAME_SYSTEM_REVERSE = new ReverseComparator(NAME_SYSTEM_COMPARATOR);

    public NameFileComparator() {
        this.caseSensitivity = IOCase.SENSITIVE;
    }

    public NameFileComparator(IOCase iOCase) {
        this.caseSensitivity = iOCase == null ? IOCase.SENSITIVE : iOCase;
    }

    public int compare(File file, File file2) {
        return this.caseSensitivity.checkCompareTo(file.getName(), file2.getName());
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
        return super.toString() + "[caseSensitivity=" + this.caseSensitivity + "]";
    }
}
