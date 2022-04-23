package org.junit.runner.manipulation;

import java.util.Comparator;
import org.junit.runner.Description;
/* loaded from: classes2-dex2jar.jar:org/junit/runner/manipulation/Sorter.class */
public class Sorter implements Comparator<Description> {
    public static final Sorter NULL = new Sorter(new Comparator<Description>() { // from class: org.junit.runner.manipulation.Sorter.1
        public int compare(Description description, Description description2) {
            return 0;
        }
    });
    private final Comparator<Description> comparator;

    public Sorter(Comparator<Description> comparator) {
        this.comparator = comparator;
    }

    public void apply(Object obj) {
        if (obj instanceof Sortable) {
            ((Sortable) obj).sort(this);
        }
    }

    public int compare(Description description, Description description2) {
        return this.comparator.compare(description, description2);
    }
}
