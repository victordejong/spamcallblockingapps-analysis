package com.telguarder.features.postCallStatistics;

import com.androidplot.p008xy.SimpleXYSeries;
import com.androidplot.p008xy.XYSeries;
import java.util.ArrayList;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSStatData.class */
public class CSStatData extends CSData {
    public ArrayList<Date> days = new ArrayList<>();
    public XYSeries incomingSeries;
    public XYSeries outgoingSeries;

    public CSStatData() {
        this.mItemType = 2;
    }

    public void setupData(ArrayList<Date> arrayList, ArrayList<Number> arrayList2, ArrayList<Number> arrayList3) {
        this.days = arrayList;
        this.incomingSeries = new SimpleXYSeries(arrayList2, SimpleXYSeries.ArrayFormat.Y_VALS_ONLY, "");
        this.outgoingSeries = new SimpleXYSeries(arrayList3, SimpleXYSeries.ArrayFormat.Y_VALS_ONLY, "");
    }
}
