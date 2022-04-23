package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/type/TypeParser.class */
public class TypeParser implements Serializable {
    protected final TypeFactory _factory;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/type/TypeParser$MyTokenizer.class */
    public static final class MyTokenizer extends StringTokenizer {
        protected int _index;
        protected final String _input;
        protected String _pushbackToken;

        public MyTokenizer(String str) {
            super(str, "<,>", true);
            this._input = str;
        }

        public final String getAllInput() {
            return this._input;
        }

        public final String getRemainingInput() {
            return this._input.substring(this._index);
        }

        @Override // java.util.StringTokenizer
        public final boolean hasMoreTokens() {
            return this._pushbackToken != null || super.hasMoreTokens();
        }

        @Override // java.util.StringTokenizer
        public final String nextToken() {
            String str = this._pushbackToken;
            if (str != null) {
                this._pushbackToken = null;
            } else {
                String nextToken = super.nextToken();
                this._index += nextToken.length();
                str = nextToken.trim();
            }
            return str;
        }

        public final void pushBack(String str) {
            this._pushbackToken = str;
        }
    }

    public TypeParser(TypeFactory typeFactory) {
        this._factory = typeFactory;
    }

    protected IllegalArgumentException _problem(MyTokenizer myTokenizer, String str) {
        return new IllegalArgumentException(String.format("Failed to parse type '%s' (remaining: '%s'): %s", myTokenizer.getAllInput(), myTokenizer.getRemainingInput(), str));
    }

    protected Class<?> findClass(String str, MyTokenizer myTokenizer) {
        try {
            return this._factory.findClass(str);
        } catch (Exception e) {
            ClassUtil.throwIfRTE(e);
            throw _problem(myTokenizer, "Cannot locate class '" + str + "', problem: " + e.getMessage());
        }
    }

    public JavaType parse(String str) throws IllegalArgumentException {
        MyTokenizer myTokenizer = new MyTokenizer(str.trim());
        JavaType parseType = parseType(myTokenizer);
        if (!myTokenizer.hasMoreTokens()) {
            return parseType;
        }
        throw _problem(myTokenizer, "Unexpected tokens after complete type");
    }

    protected JavaType parseType(MyTokenizer myTokenizer) throws IllegalArgumentException {
        if (myTokenizer.hasMoreTokens()) {
            Class<?> findClass = findClass(myTokenizer.nextToken(), myTokenizer);
            if (myTokenizer.hasMoreTokens()) {
                String nextToken = myTokenizer.nextToken();
                if ("<".equals(nextToken)) {
                    return this._factory._fromClass(null, findClass, TypeBindings.create(findClass, parseTypes(myTokenizer)));
                }
                myTokenizer.pushBack(nextToken);
            }
            return this._factory._fromClass(null, findClass, TypeBindings.emptyBindings());
        }
        throw _problem(myTokenizer, "Unexpected end-of-string");
    }

    protected List<JavaType> parseTypes(MyTokenizer myTokenizer) throws IllegalArgumentException {
        ArrayList arrayList = new ArrayList();
        while (myTokenizer.hasMoreTokens()) {
            arrayList.add(parseType(myTokenizer));
            if (!myTokenizer.hasMoreTokens()) {
                break;
            }
            String nextToken = myTokenizer.nextToken();
            if (">".equals(nextToken)) {
                return arrayList;
            }
            if (!",".equals(nextToken)) {
                throw _problem(myTokenizer, "Unexpected token '" + nextToken + "', expected ',' or '>')");
            }
        }
        throw _problem(myTokenizer, "Unexpected end-of-string");
    }

    public TypeParser withFactory(TypeFactory typeFactory) {
        return typeFactory == this._factory ? this : new TypeParser(typeFactory);
    }
}
