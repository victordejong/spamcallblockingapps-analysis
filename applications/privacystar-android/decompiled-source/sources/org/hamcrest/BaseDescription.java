package org.hamcrest;

import java.util.Arrays;
import java.util.Iterator;
import org.hamcrest.internal.ArrayIterator;
import org.hamcrest.internal.SelfDescribingValueIterator;
/* loaded from: classes2-dex2jar.jar:org/hamcrest/BaseDescription.class */
public abstract class BaseDescription implements Description {
    private Description appendList(String str, String str2, String str3, Iterator<? extends SelfDescribing> it) {
        append(str);
        boolean z = false;
        while (it.hasNext()) {
            if (z) {
                append(str2);
            }
            appendDescriptionOf((SelfDescribing) it.next());
            z = true;
        }
        append(str3);
        return this;
    }

    private <T> Description appendValueList(String str, String str2, String str3, Iterator<T> it) {
        return appendList(str, str2, str3, new SelfDescribingValueIterator(it));
    }

    private String descriptionOf(Object obj) {
        try {
            return String.valueOf(obj);
        } catch (Exception e) {
            return obj.getClass().getName() + "@" + Integer.toHexString(obj.hashCode());
        }
    }

    private void toJavaSyntax(char c) {
        if (c == '\r') {
            append("\\r");
        } else if (c != '\"') {
            switch (c) {
                case '\t':
                    append("\\t");
                    return;
                case '\n':
                    append("\\n");
                    return;
                default:
                    append(c);
                    return;
            }
        } else {
            append("\\\"");
        }
    }

    private void toJavaSyntax(String str) {
        append('\"');
        for (int i = 0; i < str.length(); i++) {
            toJavaSyntax(str.charAt(i));
        }
        append('\"');
    }

    protected abstract void append(char c);

    protected void append(String str) {
        for (int i = 0; i < str.length(); i++) {
            append(str.charAt(i));
        }
    }

    @Override // org.hamcrest.Description
    public Description appendDescriptionOf(SelfDescribing selfDescribing) {
        selfDescribing.describeTo(this);
        return this;
    }

    @Override // org.hamcrest.Description
    public Description appendList(String str, String str2, String str3, Iterable<? extends SelfDescribing> iterable) {
        return appendList(str, str2, str3, iterable.iterator());
    }

    @Override // org.hamcrest.Description
    public Description appendText(String str) {
        append(str);
        return this;
    }

    @Override // org.hamcrest.Description
    public Description appendValue(Object obj) {
        if (obj == null) {
            append("null");
        } else if (obj instanceof String) {
            toJavaSyntax((String) obj);
        } else if (obj instanceof Character) {
            append('\"');
            toJavaSyntax(((Character) obj).charValue());
            append('\"');
        } else if (obj instanceof Short) {
            append('<');
            append(descriptionOf(obj));
            append("s>");
        } else if (obj instanceof Long) {
            append('<');
            append(descriptionOf(obj));
            append("L>");
        } else if (obj instanceof Float) {
            append('<');
            append(descriptionOf(obj));
            append("F>");
        } else if (obj.getClass().isArray()) {
            appendValueList("[", ", ", "]", new ArrayIterator(obj));
        } else {
            append('<');
            append(descriptionOf(obj));
            append('>');
        }
        return this;
    }

    @Override // org.hamcrest.Description
    public <T> Description appendValueList(String str, String str2, String str3, Iterable<T> iterable) {
        return appendValueList(str, str2, str3, iterable.iterator());
    }

    @Override // org.hamcrest.Description
    public <T> Description appendValueList(String str, String str2, String str3, T... tArr) {
        return appendValueList(str, str2, str3, Arrays.asList(tArr));
    }
}
