package org.apache.commons.p018io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
/* renamed from: org.apache.commons.io.comparator.CompositeFileComparator */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/comparator/CompositeFileComparator.class */
public class CompositeFileComparator extends AbstractFileComparator implements Serializable {
    private static final Comparator<?>[] NO_COMPARATORS = new Comparator[0];
    private static final long serialVersionUID = -2224170307287243428L;
    private final Comparator<File>[] delegates;

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeFileComparator(Iterable<Comparator<File>> iterable) {
        if (iterable == null) {
            this.delegates = NO_COMPARATORS;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Comparator<File> comparator : iterable) {
            arrayList.add(comparator);
        }
        this.delegates = (Comparator[]) arrayList.toArray(new Comparator[arrayList.size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeFileComparator(Comparator<File>... comparatorArr) {
        if (comparatorArr == null) {
            this.delegates = NO_COMPARATORS;
            return;
        }
        this.delegates = new Comparator[comparatorArr.length];
        System.arraycopy(comparatorArr, 0, this.delegates, 0, comparatorArr.length);
    }

    public int compare(File file, File file2) {
        int i = 0;
        for (Comparator<File> comparator : this.delegates) {
            i = comparator.compare(file, file2);
            if (i != 0) {
                break;
            }
        }
        return i;
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
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append('{');
        for (int i = 0; i < this.delegates.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(this.delegates[i]);
        }
        sb.append('}');
        return sb.toString();
    }
}
