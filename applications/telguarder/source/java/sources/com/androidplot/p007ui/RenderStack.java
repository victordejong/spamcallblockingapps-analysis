package com.androidplot.p007ui;

import com.androidplot.Plot;
import com.androidplot.Series;
import com.androidplot.p007ui.Formatter;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.androidplot.ui.RenderStack */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/RenderStack.class */
public class RenderStack<SeriesType extends Series, FormatterType extends Formatter> {
    private final ArrayList<RenderStack<SeriesType, FormatterType>.StackElement<SeriesType, FormatterType>> elements;
    private final Plot plot;

    /* renamed from: com.androidplot.ui.RenderStack$StackElement */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/RenderStack$StackElement.class */
    public class StackElement<SeriesType extends Series, FormatterType extends Formatter> {
        private boolean isEnabled = true;
        private SeriesBundle<SeriesType, FormatterType> seriesBundle;

        public StackElement(SeriesBundle<SeriesType, FormatterType> seriesBundle) {
            RenderStack.this = r4;
            set(seriesBundle);
        }

        public SeriesBundle<SeriesType, FormatterType> get() {
            return this.seriesBundle;
        }

        public boolean isEnabled() {
            return this.isEnabled;
        }

        public void set(SeriesBundle<SeriesType, FormatterType> seriesBundle) {
            this.seriesBundle = seriesBundle;
        }

        public void setEnabled(boolean z) {
            this.isEnabled = z;
        }
    }

    public RenderStack(Plot plot) {
        this.plot = plot;
        this.elements = new ArrayList<>(plot.getRegistry().size());
    }

    public void disable(Class<? extends SeriesRenderer> cls) {
        Iterator<RenderStack<SeriesType, FormatterType>.StackElement<SeriesType, FormatterType>> it = getElements().iterator();
        while (it.hasNext()) {
            RenderStack<SeriesType, FormatterType>.StackElement<SeriesType, FormatterType> next = it.next();
            if (next.get().getFormatter().getRendererClass() == cls) {
                next.setEnabled(false);
            }
        }
    }

    public ArrayList<RenderStack<SeriesType, FormatterType>.StackElement<SeriesType, FormatterType>> getElements() {
        return this.elements;
    }

    public void sync() {
        getElements().clear();
        for (SeriesBundle seriesBundle : this.plot.getRegistry().getSeriesAndFormatterList()) {
            getElements().add(new StackElement<>(seriesBundle));
        }
    }
}
