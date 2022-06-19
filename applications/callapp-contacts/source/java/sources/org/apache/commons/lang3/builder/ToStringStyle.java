package org.apache.commons.lang3.builder;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.C20753d;
import org.apache.commons.lang3.C20757e;
import org.apache.commons.lang3.C20763g;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/ToStringStyle.class */
public abstract class ToStringStyle implements Serializable {
    private static final long serialVersionUID = -2587890625525655916L;
    public static final ToStringStyle DEFAULT_STYLE = new C20726a();
    public static final ToStringStyle MULTI_LINE_STYLE = new C20727b();
    public static final ToStringStyle NO_FIELD_NAMES_STYLE = new C20729d();
    public static final ToStringStyle SHORT_PREFIX_STYLE = new C20730e();
    public static final ToStringStyle SIMPLE_STYLE = new C20731f();
    public static final ToStringStyle NO_CLASS_NAME_STYLE = new C20728c();
    public static final ToStringStyle JSON_STYLE = new JsonToStringStyle();
    private static final ThreadLocal<WeakHashMap<Object, Object>> REGISTRY = new ThreadLocal<>();
    private boolean useFieldNames = true;
    private boolean useClassName = true;
    private boolean useShortClassName = false;
    private boolean useIdentityHashCode = true;
    private String contentStart = "[";
    private String contentEnd = "]";
    private String fieldNameValueSeparator = "=";
    private boolean fieldSeparatorAtStart = false;
    private boolean fieldSeparatorAtEnd = false;
    private String fieldSeparator = ",";
    private String arrayStart = "{";
    private String arraySeparator = ",";
    private boolean arrayContentDetail = true;
    private String arrayEnd = "}";
    private boolean defaultFullDetail = true;
    private String nullText = "<null>";
    private String sizeStartText = "<size=";
    private String sizeEndText = ">";
    private String summaryObjectStartText = "<";
    private String summaryObjectEndText = ">";

    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/ToStringStyle$JsonToStringStyle.class */
    static final class JsonToStringStyle extends ToStringStyle {
        private static final String FIELD_NAME_QUOTE = "\"";
        private static final long serialVersionUID = 1;

        JsonToStringStyle() {
            setUseClassName(false);
            setUseIdentityHashCode(false);
            setContentStart("{");
            setContentEnd("}");
            setArrayStart("[");
            setArrayEnd("]");
            setFieldSeparator(",");
            setFieldNameValueSeparator(":");
            setNullText(JsonReaderKt.NULL);
            setSummaryObjectStartText("\"<");
            setSummaryObjectEndText(">\"");
            setSizeStartText("\"<size=");
            setSizeEndText(">\"");
        }

        private void appendValueAsString(StringBuffer stringBuffer, String str) {
            stringBuffer.append('\"');
            stringBuffer.append(C20763g.m516a(str));
            stringBuffer.append('\"');
        }

        private boolean isJsonArray(String str) {
            return str.startsWith(getArrayStart()) && str.endsWith(getArrayEnd());
        }

        private boolean isJsonObject(String str) {
            return str.startsWith(getContentStart()) && str.endsWith(getContentEnd());
        }

        private Object readResolve() {
            return JSON_STYLE;
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void append(StringBuffer stringBuffer, String str, Object obj, Boolean bool) {
            if (str != null) {
                if (!isFullDetail(bool)) {
                    throw new UnsupportedOperationException("FullDetail must be true when using JsonToStringStyle");
                }
                ToStringStyle.super.append(stringBuffer, str, obj, bool);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void append(StringBuffer stringBuffer, String str, byte[] bArr, Boolean bool) {
            if (str != null) {
                if (!isFullDetail(bool)) {
                    throw new UnsupportedOperationException("FullDetail must be true when using JsonToStringStyle");
                }
                ToStringStyle.super.append(stringBuffer, str, bArr, bool);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void append(StringBuffer stringBuffer, String str, char[] cArr, Boolean bool) {
            if (str != null) {
                if (!isFullDetail(bool)) {
                    throw new UnsupportedOperationException("FullDetail must be true when using JsonToStringStyle");
                }
                ToStringStyle.super.append(stringBuffer, str, cArr, bool);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void append(StringBuffer stringBuffer, String str, double[] dArr, Boolean bool) {
            if (str != null) {
                if (!isFullDetail(bool)) {
                    throw new UnsupportedOperationException("FullDetail must be true when using JsonToStringStyle");
                }
                ToStringStyle.super.append(stringBuffer, str, dArr, bool);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void append(StringBuffer stringBuffer, String str, float[] fArr, Boolean bool) {
            if (str != null) {
                if (!isFullDetail(bool)) {
                    throw new UnsupportedOperationException("FullDetail must be true when using JsonToStringStyle");
                }
                ToStringStyle.super.append(stringBuffer, str, fArr, bool);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void append(StringBuffer stringBuffer, String str, int[] iArr, Boolean bool) {
            if (str != null) {
                if (!isFullDetail(bool)) {
                    throw new UnsupportedOperationException("FullDetail must be true when using JsonToStringStyle");
                }
                ToStringStyle.super.append(stringBuffer, str, iArr, bool);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void append(StringBuffer stringBuffer, String str, long[] jArr, Boolean bool) {
            if (str != null) {
                if (!isFullDetail(bool)) {
                    throw new UnsupportedOperationException("FullDetail must be true when using JsonToStringStyle");
                }
                ToStringStyle.super.append(stringBuffer, str, jArr, bool);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void append(StringBuffer stringBuffer, String str, Object[] objArr, Boolean bool) {
            if (str != null) {
                if (!isFullDetail(bool)) {
                    throw new UnsupportedOperationException("FullDetail must be true when using JsonToStringStyle");
                }
                ToStringStyle.super.append(stringBuffer, str, objArr, bool);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void append(StringBuffer stringBuffer, String str, short[] sArr, Boolean bool) {
            if (str != null) {
                if (!isFullDetail(bool)) {
                    throw new UnsupportedOperationException("FullDetail must be true when using JsonToStringStyle");
                }
                ToStringStyle.super.append(stringBuffer, str, sArr, bool);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void append(StringBuffer stringBuffer, String str, boolean[] zArr, Boolean bool) {
            if (str != null) {
                if (!isFullDetail(bool)) {
                    throw new UnsupportedOperationException("FullDetail must be true when using JsonToStringStyle");
                }
                ToStringStyle.super.append(stringBuffer, str, zArr, bool);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        protected final void appendDetail(StringBuffer stringBuffer, String str, char c) {
            appendValueAsString(stringBuffer, String.valueOf(c));
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        protected final void appendDetail(StringBuffer stringBuffer, String str, Object obj) {
            while (obj != null) {
                if ((obj instanceof String) || (obj instanceof Character)) {
                    appendValueAsString(stringBuffer, obj.toString());
                    return;
                } else if ((obj instanceof Number) || (obj instanceof Boolean)) {
                    stringBuffer.append(obj);
                    return;
                } else {
                    String obj2 = obj.toString();
                    if (isJsonObject(obj2) || isJsonArray(obj2)) {
                        stringBuffer.append(obj);
                        return;
                    }
                    obj = obj2;
                }
            }
            appendNullText(stringBuffer, str);
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        protected final void appendDetail(StringBuffer stringBuffer, String str, Map<?, ?> map) {
            if (map == null || map.isEmpty()) {
                stringBuffer.append(map);
                return;
            }
            stringBuffer.append(getContentStart());
            boolean z = true;
            for (Map.Entry<?, ?> entry : map.entrySet()) {
                String objects = Objects.toString(entry.getKey(), null);
                if (objects != null) {
                    if (z) {
                        z = false;
                    } else {
                        appendFieldEnd(stringBuffer, objects);
                    }
                    appendFieldStart(stringBuffer, objects);
                    Object value = entry.getValue();
                    if (value == null) {
                        appendNullText(stringBuffer, objects);
                    } else {
                        appendInternal(stringBuffer, objects, value, true);
                    }
                }
            }
            stringBuffer.append(getContentEnd());
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        protected final void appendFieldStart(StringBuffer stringBuffer, String str) {
            if (str != null) {
                ToStringStyle.super.appendFieldStart(stringBuffer, FIELD_NAME_QUOTE + C20763g.m516a(str) + FIELD_NAME_QUOTE);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.ToStringStyle$a */
    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/ToStringStyle$a.class */
    static final class C20726a extends ToStringStyle {
        C20726a() {
        }

        private Object readResolve() {
            return DEFAULT_STYLE;
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.ToStringStyle$b */
    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/ToStringStyle$b.class */
    static final class C20727b extends ToStringStyle {
        C20727b() {
            setContentStart("[");
            setFieldSeparator(System.lineSeparator() + "  ");
            setFieldSeparatorAtStart(true);
            setContentEnd(System.lineSeparator() + "]");
        }

        private Object readResolve() {
            return MULTI_LINE_STYLE;
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.ToStringStyle$c */
    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/ToStringStyle$c.class */
    static final class C20728c extends ToStringStyle {
        C20728c() {
            setUseClassName(false);
            setUseIdentityHashCode(false);
        }

        private Object readResolve() {
            return NO_CLASS_NAME_STYLE;
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.ToStringStyle$d */
    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/ToStringStyle$d.class */
    static final class C20729d extends ToStringStyle {
        C20729d() {
            setUseFieldNames(false);
        }

        private Object readResolve() {
            return NO_FIELD_NAMES_STYLE;
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.ToStringStyle$e */
    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/ToStringStyle$e.class */
    static final class C20730e extends ToStringStyle {
        C20730e() {
            setUseShortClassName(true);
            setUseIdentityHashCode(false);
        }

        private Object readResolve() {
            return SHORT_PREFIX_STYLE;
        }
    }

    /* renamed from: org.apache.commons.lang3.builder.ToStringStyle$f */
    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/builder/ToStringStyle$f.class */
    static final class C20731f extends ToStringStyle {
        C20731f() {
            setUseClassName(false);
            setUseIdentityHashCode(false);
            setUseFieldNames(false);
            setContentStart("");
            setContentEnd("");
        }

        private Object readResolve() {
            return SIMPLE_STYLE;
        }
    }

    protected ToStringStyle() {
    }

    static Map<Object, Object> getRegistry() {
        return REGISTRY.get();
    }

    static boolean isRegistered(Object obj) {
        Map<Object, Object> registry = getRegistry();
        return registry != null && registry.containsKey(obj);
    }

    static void register(Object obj) {
        if (obj != null) {
            if (getRegistry() == null) {
                REGISTRY.set(new WeakHashMap<>());
            }
            getRegistry().put(obj, null);
        }
    }

    static void unregister(Object obj) {
        Map<Object, Object> registry;
        if (obj == null || (registry = getRegistry()) == null) {
            return;
        }
        registry.remove(obj);
        if (!registry.isEmpty()) {
            return;
        }
        REGISTRY.remove();
    }

    public void append(StringBuffer stringBuffer, String str, byte b) {
        appendFieldStart(stringBuffer, str);
        appendDetail(stringBuffer, str, b);
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, char c) {
        appendFieldStart(stringBuffer, str);
        appendDetail(stringBuffer, str, c);
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, double d) {
        appendFieldStart(stringBuffer, str);
        appendDetail(stringBuffer, str, d);
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, float f) {
        appendFieldStart(stringBuffer, str);
        appendDetail(stringBuffer, str, f);
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, int i) {
        appendFieldStart(stringBuffer, str);
        appendDetail(stringBuffer, str, i);
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, long j) {
        appendFieldStart(stringBuffer, str);
        appendDetail(stringBuffer, str, j);
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, Object obj, Boolean bool) {
        appendFieldStart(stringBuffer, str);
        if (obj == null) {
            appendNullText(stringBuffer, str);
        } else {
            appendInternal(stringBuffer, str, obj, isFullDetail(bool));
        }
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, short s) {
        appendFieldStart(stringBuffer, str);
        appendDetail(stringBuffer, str, s);
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, boolean z) {
        appendFieldStart(stringBuffer, str);
        appendDetail(stringBuffer, str, z);
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, byte[] bArr, Boolean bool) {
        appendFieldStart(stringBuffer, str);
        if (bArr == null) {
            appendNullText(stringBuffer, str);
        } else if (isFullDetail(bool)) {
            appendDetail(stringBuffer, str, bArr);
        } else {
            appendSummary(stringBuffer, str, bArr);
        }
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, char[] cArr, Boolean bool) {
        appendFieldStart(stringBuffer, str);
        if (cArr == null) {
            appendNullText(stringBuffer, str);
        } else if (isFullDetail(bool)) {
            appendDetail(stringBuffer, str, cArr);
        } else {
            appendSummary(stringBuffer, str, cArr);
        }
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, double[] dArr, Boolean bool) {
        appendFieldStart(stringBuffer, str);
        if (dArr == null) {
            appendNullText(stringBuffer, str);
        } else if (isFullDetail(bool)) {
            appendDetail(stringBuffer, str, dArr);
        } else {
            appendSummary(stringBuffer, str, dArr);
        }
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, float[] fArr, Boolean bool) {
        appendFieldStart(stringBuffer, str);
        if (fArr == null) {
            appendNullText(stringBuffer, str);
        } else if (isFullDetail(bool)) {
            appendDetail(stringBuffer, str, fArr);
        } else {
            appendSummary(stringBuffer, str, fArr);
        }
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, int[] iArr, Boolean bool) {
        appendFieldStart(stringBuffer, str);
        if (iArr == null) {
            appendNullText(stringBuffer, str);
        } else if (isFullDetail(bool)) {
            appendDetail(stringBuffer, str, iArr);
        } else {
            appendSummary(stringBuffer, str, iArr);
        }
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, long[] jArr, Boolean bool) {
        appendFieldStart(stringBuffer, str);
        if (jArr == null) {
            appendNullText(stringBuffer, str);
        } else if (isFullDetail(bool)) {
            appendDetail(stringBuffer, str, jArr);
        } else {
            appendSummary(stringBuffer, str, jArr);
        }
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, Object[] objArr, Boolean bool) {
        appendFieldStart(stringBuffer, str);
        if (objArr == null) {
            appendNullText(stringBuffer, str);
        } else if (isFullDetail(bool)) {
            appendDetail(stringBuffer, str, objArr);
        } else {
            appendSummary(stringBuffer, str, objArr);
        }
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, short[] sArr, Boolean bool) {
        appendFieldStart(stringBuffer, str);
        if (sArr == null) {
            appendNullText(stringBuffer, str);
        } else if (isFullDetail(bool)) {
            appendDetail(stringBuffer, str, sArr);
        } else {
            appendSummary(stringBuffer, str, sArr);
        }
        appendFieldEnd(stringBuffer, str);
    }

    public void append(StringBuffer stringBuffer, String str, boolean[] zArr, Boolean bool) {
        appendFieldStart(stringBuffer, str);
        if (zArr == null) {
            appendNullText(stringBuffer, str);
        } else if (isFullDetail(bool)) {
            appendDetail(stringBuffer, str, zArr);
        } else {
            appendSummary(stringBuffer, str, zArr);
        }
        appendFieldEnd(stringBuffer, str);
    }

    protected void appendClassName(StringBuffer stringBuffer, Object obj) {
        if (!this.useClassName || obj == null) {
            return;
        }
        register(obj);
        if (this.useShortClassName) {
            stringBuffer.append(getShortClassName(obj.getClass()));
        } else {
            stringBuffer.append(obj.getClass().getName());
        }
    }

    protected void appendContentEnd(StringBuffer stringBuffer) {
        stringBuffer.append(this.contentEnd);
    }

    protected void appendContentStart(StringBuffer stringBuffer) {
        stringBuffer.append(this.contentStart);
    }

    protected void appendCyclicObject(StringBuffer stringBuffer, String str, Object obj) {
        C20757e.m522a(stringBuffer, obj);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, byte b) {
        stringBuffer.append((int) b);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, char c) {
        stringBuffer.append(c);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, double d) {
        stringBuffer.append(d);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, float f) {
        stringBuffer.append(f);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, int i) {
        stringBuffer.append(i);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, int i, Object obj) {
        if (i > 0) {
            stringBuffer.append(this.arraySeparator);
        }
        if (obj == null) {
            appendNullText(stringBuffer, str);
        } else {
            appendInternal(stringBuffer, str, obj, this.arrayContentDetail);
        }
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, long j) {
        stringBuffer.append(j);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, Object obj) {
        stringBuffer.append(obj);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, Collection<?> collection) {
        if (collection == null || collection.isEmpty()) {
            stringBuffer.append(collection);
            return;
        }
        stringBuffer.append(this.arrayStart);
        int i = 0;
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            appendDetail(stringBuffer, str, i, it2.next());
            i++;
        }
        stringBuffer.append(this.arrayEnd);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, Map<?, ?> map) {
        stringBuffer.append(map);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, short s) {
        stringBuffer.append((int) s);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, boolean z) {
        stringBuffer.append(z);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, byte[] bArr) {
        stringBuffer.append(this.arrayStart);
        for (int i = 0; i < bArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(this.arraySeparator);
            }
            appendDetail(stringBuffer, str, bArr[i]);
        }
        stringBuffer.append(this.arrayEnd);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, char[] cArr) {
        stringBuffer.append(this.arrayStart);
        for (int i = 0; i < cArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(this.arraySeparator);
            }
            appendDetail(stringBuffer, str, cArr[i]);
        }
        stringBuffer.append(this.arrayEnd);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, double[] dArr) {
        stringBuffer.append(this.arrayStart);
        for (int i = 0; i < dArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(this.arraySeparator);
            }
            appendDetail(stringBuffer, str, dArr[i]);
        }
        stringBuffer.append(this.arrayEnd);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, float[] fArr) {
        stringBuffer.append(this.arrayStart);
        for (int i = 0; i < fArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(this.arraySeparator);
            }
            appendDetail(stringBuffer, str, fArr[i]);
        }
        stringBuffer.append(this.arrayEnd);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, int[] iArr) {
        stringBuffer.append(this.arrayStart);
        for (int i = 0; i < iArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(this.arraySeparator);
            }
            appendDetail(stringBuffer, str, iArr[i]);
        }
        stringBuffer.append(this.arrayEnd);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, long[] jArr) {
        stringBuffer.append(this.arrayStart);
        for (int i = 0; i < jArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(this.arraySeparator);
            }
            appendDetail(stringBuffer, str, jArr[i]);
        }
        stringBuffer.append(this.arrayEnd);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, Object[] objArr) {
        stringBuffer.append(this.arrayStart);
        for (int i = 0; i < objArr.length; i++) {
            appendDetail(stringBuffer, str, i, objArr[i]);
        }
        stringBuffer.append(this.arrayEnd);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, short[] sArr) {
        stringBuffer.append(this.arrayStart);
        for (int i = 0; i < sArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(this.arraySeparator);
            }
            appendDetail(stringBuffer, str, sArr[i]);
        }
        stringBuffer.append(this.arrayEnd);
    }

    protected void appendDetail(StringBuffer stringBuffer, String str, boolean[] zArr) {
        stringBuffer.append(this.arrayStart);
        for (int i = 0; i < zArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(this.arraySeparator);
            }
            appendDetail(stringBuffer, str, zArr[i]);
        }
        stringBuffer.append(this.arrayEnd);
    }

    public void appendEnd(StringBuffer stringBuffer, Object obj) {
        if (!this.fieldSeparatorAtEnd) {
            removeLastFieldSeparator(stringBuffer);
        }
        appendContentEnd(stringBuffer);
        unregister(obj);
    }

    protected void appendFieldEnd(StringBuffer stringBuffer, String str) {
        appendFieldSeparator(stringBuffer);
    }

    protected void appendFieldSeparator(StringBuffer stringBuffer) {
        stringBuffer.append(this.fieldSeparator);
    }

    protected void appendFieldStart(StringBuffer stringBuffer, String str) {
        if (!this.useFieldNames || str == null) {
            return;
        }
        stringBuffer.append(str);
        stringBuffer.append(this.fieldNameValueSeparator);
    }

    protected void appendIdentityHashCode(StringBuffer stringBuffer, Object obj) {
        if (!isUseIdentityHashCode() || obj == null) {
            return;
        }
        register(obj);
        stringBuffer.append('@');
        stringBuffer.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    protected void appendInternal(StringBuffer stringBuffer, String str, Object obj, boolean z) {
        if (isRegistered(obj) && !(obj instanceof Number) && !(obj instanceof Boolean) && !(obj instanceof Character)) {
            appendCyclicObject(stringBuffer, str, obj);
            return;
        }
        register(obj);
        try {
            if (obj instanceof Collection) {
                if (z) {
                    appendDetail(stringBuffer, str, (Collection) obj);
                } else {
                    appendSummarySize(stringBuffer, str, ((Collection) obj).size());
                }
            } else if (obj instanceof Map) {
                if (z) {
                    appendDetail(stringBuffer, str, (Map) obj);
                } else {
                    appendSummarySize(stringBuffer, str, ((Map) obj).size());
                }
            } else if (obj instanceof long[]) {
                if (z) {
                    appendDetail(stringBuffer, str, (long[]) obj);
                } else {
                    appendSummary(stringBuffer, str, (long[]) obj);
                }
            } else if (obj instanceof int[]) {
                if (z) {
                    appendDetail(stringBuffer, str, (int[]) obj);
                } else {
                    appendSummary(stringBuffer, str, (int[]) obj);
                }
            } else if (obj instanceof short[]) {
                if (z) {
                    appendDetail(stringBuffer, str, (short[]) obj);
                } else {
                    appendSummary(stringBuffer, str, (short[]) obj);
                }
            } else if (obj instanceof byte[]) {
                if (z) {
                    appendDetail(stringBuffer, str, (byte[]) obj);
                } else {
                    appendSummary(stringBuffer, str, (byte[]) obj);
                }
            } else if (obj instanceof char[]) {
                if (z) {
                    appendDetail(stringBuffer, str, (char[]) obj);
                } else {
                    appendSummary(stringBuffer, str, (char[]) obj);
                }
            } else if (obj instanceof double[]) {
                if (z) {
                    appendDetail(stringBuffer, str, (double[]) obj);
                } else {
                    appendSummary(stringBuffer, str, (double[]) obj);
                }
            } else if (obj instanceof float[]) {
                if (z) {
                    appendDetail(stringBuffer, str, (float[]) obj);
                } else {
                    appendSummary(stringBuffer, str, (float[]) obj);
                }
            } else if (obj instanceof boolean[]) {
                if (z) {
                    appendDetail(stringBuffer, str, (boolean[]) obj);
                } else {
                    appendSummary(stringBuffer, str, (boolean[]) obj);
                }
            } else if (obj.getClass().isArray()) {
                if (z) {
                    appendDetail(stringBuffer, str, (Object[]) obj);
                } else {
                    appendSummary(stringBuffer, str, (Object[]) obj);
                }
            } else if (z) {
                appendDetail(stringBuffer, str, obj);
            } else {
                appendSummary(stringBuffer, str, obj);
            }
        } finally {
            unregister(obj);
        }
    }

    protected void appendNullText(StringBuffer stringBuffer, String str) {
        stringBuffer.append(this.nullText);
    }

    public void appendStart(StringBuffer stringBuffer, Object obj) {
        if (obj != null) {
            appendClassName(stringBuffer, obj);
            appendIdentityHashCode(stringBuffer, obj);
            appendContentStart(stringBuffer);
            if (!this.fieldSeparatorAtStart) {
                return;
            }
            appendFieldSeparator(stringBuffer);
        }
    }

    protected void appendSummary(StringBuffer stringBuffer, String str, Object obj) {
        stringBuffer.append(this.summaryObjectStartText);
        stringBuffer.append(getShortClassName(obj.getClass()));
        stringBuffer.append(this.summaryObjectEndText);
    }

    protected void appendSummary(StringBuffer stringBuffer, String str, byte[] bArr) {
        appendSummarySize(stringBuffer, str, bArr.length);
    }

    protected void appendSummary(StringBuffer stringBuffer, String str, char[] cArr) {
        appendSummarySize(stringBuffer, str, cArr.length);
    }

    protected void appendSummary(StringBuffer stringBuffer, String str, double[] dArr) {
        appendSummarySize(stringBuffer, str, dArr.length);
    }

    protected void appendSummary(StringBuffer stringBuffer, String str, float[] fArr) {
        appendSummarySize(stringBuffer, str, fArr.length);
    }

    protected void appendSummary(StringBuffer stringBuffer, String str, int[] iArr) {
        appendSummarySize(stringBuffer, str, iArr.length);
    }

    protected void appendSummary(StringBuffer stringBuffer, String str, long[] jArr) {
        appendSummarySize(stringBuffer, str, jArr.length);
    }

    protected void appendSummary(StringBuffer stringBuffer, String str, Object[] objArr) {
        appendSummarySize(stringBuffer, str, objArr.length);
    }

    protected void appendSummary(StringBuffer stringBuffer, String str, short[] sArr) {
        appendSummarySize(stringBuffer, str, sArr.length);
    }

    protected void appendSummary(StringBuffer stringBuffer, String str, boolean[] zArr) {
        appendSummarySize(stringBuffer, str, zArr.length);
    }

    protected void appendSummarySize(StringBuffer stringBuffer, String str, int i) {
        stringBuffer.append(this.sizeStartText);
        stringBuffer.append(i);
        stringBuffer.append(this.sizeEndText);
    }

    public void appendSuper(StringBuffer stringBuffer, String str) {
        appendToString(stringBuffer, str);
    }

    public void appendToString(StringBuffer stringBuffer, String str) {
        int indexOf;
        int lastIndexOf;
        if (str == null || (indexOf = str.indexOf(this.contentStart) + this.contentStart.length()) == (lastIndexOf = str.lastIndexOf(this.contentEnd)) || indexOf < 0 || lastIndexOf < 0) {
            return;
        }
        if (this.fieldSeparatorAtStart) {
            removeLastFieldSeparator(stringBuffer);
        }
        stringBuffer.append((CharSequence) str, indexOf, lastIndexOf);
        appendFieldSeparator(stringBuffer);
    }

    protected String getArrayEnd() {
        return this.arrayEnd;
    }

    protected String getArraySeparator() {
        return this.arraySeparator;
    }

    protected String getArrayStart() {
        return this.arrayStart;
    }

    protected String getContentEnd() {
        return this.contentEnd;
    }

    protected String getContentStart() {
        return this.contentStart;
    }

    protected String getFieldNameValueSeparator() {
        return this.fieldNameValueSeparator;
    }

    protected String getFieldSeparator() {
        return this.fieldSeparator;
    }

    public String getNullText() {
        return this.nullText;
    }

    protected String getShortClassName(Class<?> cls) {
        return C20753d.m531a(cls);
    }

    protected String getSizeEndText() {
        return this.sizeEndText;
    }

    protected String getSizeStartText() {
        return this.sizeStartText;
    }

    protected String getSummaryObjectEndText() {
        return this.summaryObjectEndText;
    }

    protected String getSummaryObjectStartText() {
        return this.summaryObjectStartText;
    }

    protected boolean isArrayContentDetail() {
        return this.arrayContentDetail;
    }

    protected boolean isDefaultFullDetail() {
        return this.defaultFullDetail;
    }

    protected boolean isFieldSeparatorAtEnd() {
        return this.fieldSeparatorAtEnd;
    }

    protected boolean isFieldSeparatorAtStart() {
        return this.fieldSeparatorAtStart;
    }

    protected boolean isFullDetail(Boolean bool) {
        return bool == null ? this.defaultFullDetail : bool.booleanValue();
    }

    protected boolean isUseClassName() {
        return this.useClassName;
    }

    protected boolean isUseFieldNames() {
        return this.useFieldNames;
    }

    protected boolean isUseIdentityHashCode() {
        return this.useIdentityHashCode;
    }

    protected boolean isUseShortClassName() {
        return this.useShortClassName;
    }

    protected void reflectionAppendArrayDetail(StringBuffer stringBuffer, String str, Object obj) {
        stringBuffer.append(this.arrayStart);
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            appendDetail(stringBuffer, str, i, Array.get(obj, i));
        }
        stringBuffer.append(this.arrayEnd);
    }

    protected void removeLastFieldSeparator(StringBuffer stringBuffer) {
        if (StringUtils.endsWith(stringBuffer, this.fieldSeparator)) {
            stringBuffer.setLength(stringBuffer.length() - this.fieldSeparator.length());
        }
    }

    protected void setArrayContentDetail(boolean z) {
        this.arrayContentDetail = z;
    }

    protected void setArrayEnd(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.arrayEnd = str2;
    }

    protected void setArraySeparator(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.arraySeparator = str2;
    }

    protected void setArrayStart(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.arrayStart = str2;
    }

    protected void setContentEnd(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.contentEnd = str2;
    }

    protected void setContentStart(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.contentStart = str2;
    }

    protected void setDefaultFullDetail(boolean z) {
        this.defaultFullDetail = z;
    }

    protected void setFieldNameValueSeparator(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.fieldNameValueSeparator = str2;
    }

    protected void setFieldSeparator(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.fieldSeparator = str2;
    }

    protected void setFieldSeparatorAtEnd(boolean z) {
        this.fieldSeparatorAtEnd = z;
    }

    protected void setFieldSeparatorAtStart(boolean z) {
        this.fieldSeparatorAtStart = z;
    }

    protected void setNullText(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.nullText = str2;
    }

    protected void setSizeEndText(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.sizeEndText = str2;
    }

    protected void setSizeStartText(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.sizeStartText = str2;
    }

    protected void setSummaryObjectEndText(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.summaryObjectEndText = str2;
    }

    protected void setSummaryObjectStartText(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        this.summaryObjectStartText = str2;
    }

    protected void setUseClassName(boolean z) {
        this.useClassName = z;
    }

    protected void setUseFieldNames(boolean z) {
        this.useFieldNames = z;
    }

    protected void setUseIdentityHashCode(boolean z) {
        this.useIdentityHashCode = z;
    }

    protected void setUseShortClassName(boolean z) {
        this.useShortClassName = z;
    }
}
