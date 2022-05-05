package com.github.mikephil.charting.utils;

import com.github.mikephil.charting.data.Entry;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/utils/EntryXComparator.class */
public class EntryXComparator implements Comparator<Entry> {
    public int compare(Entry entry, Entry entry2) {
        int i = ((entry.getX() - entry2.getX()) > 0.0f ? 1 : ((entry.getX() - entry2.getX()) == 0.0f ? 0 : -1));
        if (i == 0) {
            return 0;
        }
        return i > 0 ? 1 : -1;
    }
}
