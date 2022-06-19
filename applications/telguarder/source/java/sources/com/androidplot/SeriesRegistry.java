package com.androidplot;

import com.androidplot.Series;
import com.androidplot.p007ui.Formatter;
import com.androidplot.p007ui.SeriesBundle;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/androidplot/SeriesRegistry.class */
public abstract class SeriesRegistry<BundleType extends SeriesBundle<SeriesType, FormatterType>, SeriesType extends Series, FormatterType extends Formatter> implements Serializable {
    private ArrayList<BundleType> registry = new ArrayList<>();

    public boolean add(SeriesType seriestype, FormatterType formattertype) {
        if (seriestype == null || formattertype == null) {
            throw new IllegalArgumentException("Neither series nor formatter param may be null.");
        }
        return this.registry.add(newSeriesBundle(seriestype, formattertype));
    }

    public void clear() {
        Iterator<BundleType> it = this.registry.iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public boolean contains(SeriesType seriestype, Class<? extends FormatterType> cls) {
        Iterator<BundleType> it = this.registry.iterator();
        while (it.hasNext()) {
            BundleType next = it.next();
            if (next.getFormatter().getClass() == cls && next.getSeries() == seriestype) {
                return true;
            }
        }
        return false;
    }

    public List<SeriesBundle<SeriesType, FormatterType>> get(SeriesType seriestype) {
        ArrayList arrayList = new ArrayList();
        Iterator<BundleType> it = this.registry.iterator();
        while (it.hasNext()) {
            BundleType next = it.next();
            if (next.getSeries() == seriestype) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public List<SeriesBundle<SeriesType, FormatterType>> getLegendEnabledItems() {
        ArrayList arrayList = new ArrayList();
        Iterator<BundleType> it = this.registry.iterator();
        while (it.hasNext()) {
            BundleType next = it.next();
            if (next.getFormatter().isLegendIconEnabled()) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public List<BundleType> getSeriesAndFormatterList() {
        return this.registry;
    }

    public List<SeriesType> getSeriesList() {
        ArrayList arrayList = new ArrayList(this.registry.size());
        Iterator<BundleType> it = this.registry.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getSeries());
        }
        return arrayList;
    }

    public boolean isEmpty() {
        return this.registry.isEmpty();
    }

    protected abstract BundleType newSeriesBundle(SeriesType seriestype, FormatterType formattertype);

    public List<BundleType> remove(SeriesType seriestype, Class cls) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            Iterator<BundleType> it = this.registry.iterator();
            while (it.hasNext()) {
                BundleType next = it.next();
                if (next.getSeries() == seriestype && next.getFormatter().getRendererClass() == cls) {
                    it.remove();
                    arrayList.add(next);
                }
            }
        }
        return arrayList;
    }

    public boolean remove(SeriesType seriestype) {
        boolean z;
        synchronized (this) {
            z = false;
            Iterator<BundleType> it = this.registry.iterator();
            while (it.hasNext()) {
                if (it.next().getSeries() == seriestype) {
                    it.remove();
                    z = true;
                }
            }
        }
        return z;
    }

    public int size() {
        return this.registry.size();
    }
}
