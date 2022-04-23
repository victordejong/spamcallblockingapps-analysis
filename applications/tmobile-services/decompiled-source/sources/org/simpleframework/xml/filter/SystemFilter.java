package org.simpleframework.xml.filter;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/filter/SystemFilter.class */
public class SystemFilter implements Filter {
    private Filter filter;

    public SystemFilter() {
        this(null);
    }

    public SystemFilter(Filter filter) {
        this.filter = filter;
    }

    @Override // org.simpleframework.xml.filter.Filter
    public String replace(String str) {
        String property = System.getProperty(str);
        if (property != null) {
            return property;
        }
        Filter filter = this.filter;
        if (filter != null) {
            return filter.replace(str);
        }
        return null;
    }
}
