package com.fasterxml.jackson.databind.jdk14;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jdk14/JDK14Util.class */
public class JDK14Util {

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator.class */
    static class CreatorLocator {
        protected final BeanDescription _beanDesc;
        protected final DeserializationConfig _config;
        protected final List<AnnotatedConstructor> _constructors;
        protected final AnnotationIntrospector _intr;
        protected final AnnotatedConstructor _primaryConstructor;
        protected final RawTypeName[] _recordFields;

        CreatorLocator(DeserializationContext deserializationContext, BeanDescription beanDescription) {
            AnnotatedConstructor annotatedConstructor;
            this._beanDesc = beanDescription;
            this._intr = deserializationContext.getAnnotationIntrospector();
            this._config = deserializationContext.getConfig();
            RawTypeName[] recordFields = RecordAccessor.instance().getRecordFields(beanDescription.getBeanClass());
            this._recordFields = recordFields;
            int length = recordFields.length;
            if (length != 0) {
                List<AnnotatedConstructor> constructors = beanDescription.getConstructors();
                this._constructors = constructors;
                Iterator<AnnotatedConstructor> it2 = constructors.iterator();
                loop0: while (true) {
                    if (!it2.hasNext()) {
                        annotatedConstructor = null;
                        break;
                    }
                    annotatedConstructor = it2.next();
                    if (annotatedConstructor.getParameterCount() == length) {
                        int i = 0;
                        while (i < length) {
                            i = annotatedConstructor.getRawParameterType(i).equals(this._recordFields[i].rawType) ? i + 1 : i;
                        }
                        break loop0;
                    }
                }
            } else {
                annotatedConstructor = beanDescription.findDefaultConstructor();
                this._constructors = Collections.singletonList(annotatedConstructor);
            }
            if (annotatedConstructor != null) {
                this._primaryConstructor = annotatedConstructor;
                return;
            }
            throw new IllegalArgumentException("Failed to find the canonical Record constructor of type " + ClassUtil.getTypeDescription(this._beanDesc.getType()));
        }

        public AnnotatedConstructor locate(List<String> list) {
            for (AnnotatedConstructor annotatedConstructor : this._constructors) {
                JsonCreator.Mode findCreatorAnnotation = this._intr.findCreatorAnnotation(this._config, annotatedConstructor);
                if (!(findCreatorAnnotation == null || JsonCreator.Mode.DISABLED == findCreatorAnnotation || (JsonCreator.Mode.DELEGATING != findCreatorAnnotation && annotatedConstructor == this._primaryConstructor))) {
                    return null;
                }
            }
            for (RawTypeName rawTypeName : this._recordFields) {
                list.add(rawTypeName.name);
            }
            return this._primaryConstructor;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName.class */
    public static class RawTypeName {
        public final String name;
        public final Class<?> rawType;

        public RawTypeName(Class<?> cls, String str) {
            this.rawType = cls;
            this.name = str;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor.class */
    static class RecordAccessor {
        private static final RecordAccessor INSTANCE;
        private static final RuntimeException PROBLEM;
        private final Method RECORD_COMPONENT_GET_NAME;
        private final Method RECORD_COMPONENT_GET_TYPE;
        private final Method RECORD_GET_RECORD_COMPONENTS;

        static {
            RuntimeException e;
            RecordAccessor recordAccessor = null;
            try {
                recordAccessor = new RecordAccessor();
                e = null;
            } catch (RuntimeException e2) {
                e = e2;
            }
            INSTANCE = recordAccessor;
            PROBLEM = e;
        }

        private RecordAccessor() throws RuntimeException {
            try {
                this.RECORD_GET_RECORD_COMPONENTS = Class.class.getMethod("getRecordComponents", new Class[0]);
                Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
                this.RECORD_COMPONENT_GET_NAME = cls.getMethod("getName", new Class[0]);
                this.RECORD_COMPONENT_GET_TYPE = cls.getMethod("getType", new Class[0]);
            } catch (Exception e) {
                throw new RuntimeException(String.format("Failed to access Methods needed to support `java.lang.Record`: (%s) %s", e.getClass().getName(), e.getMessage()), e);
            }
        }

        public static RecordAccessor instance() {
            RuntimeException runtimeException = PROBLEM;
            if (runtimeException == null) {
                return INSTANCE;
            }
            throw runtimeException;
        }

        public String[] getRecordFieldNames(Class<?> cls) throws IllegalArgumentException {
            Object[] recordComponents = recordComponents(cls);
            String[] strArr = new String[recordComponents.length];
            for (int i = 0; i < recordComponents.length; i++) {
                try {
                    strArr[i] = (String) this.RECORD_COMPONENT_GET_NAME.invoke(recordComponents[i], new Object[0]);
                } catch (Exception e) {
                    throw new IllegalArgumentException(String.format("Failed to access name of field #%d (of %d) of Record type %s", Integer.valueOf(i), Integer.valueOf(recordComponents.length), ClassUtil.nameOf(cls)), e);
                }
            }
            return strArr;
        }

        public RawTypeName[] getRecordFields(Class<?> cls) throws IllegalArgumentException {
            Object[] recordComponents = recordComponents(cls);
            RawTypeName[] rawTypeNameArr = new RawTypeName[recordComponents.length];
            for (int i = 0; i < recordComponents.length; i++) {
                try {
                    try {
                        rawTypeNameArr[i] = new RawTypeName((Class) this.RECORD_COMPONENT_GET_TYPE.invoke(recordComponents[i], new Object[0]), (String) this.RECORD_COMPONENT_GET_NAME.invoke(recordComponents[i], new Object[0]));
                    } catch (Exception e) {
                        throw new IllegalArgumentException(String.format("Failed to access type of field #%d (of %d) of Record type %s", Integer.valueOf(i), Integer.valueOf(recordComponents.length), ClassUtil.nameOf(cls)), e);
                    }
                } catch (Exception e2) {
                    throw new IllegalArgumentException(String.format("Failed to access name of field #%d (of %d) of Record type %s", Integer.valueOf(i), Integer.valueOf(recordComponents.length), ClassUtil.nameOf(cls)), e2);
                }
            }
            return rawTypeNameArr;
        }

        protected Object[] recordComponents(Class<?> cls) throws IllegalArgumentException {
            try {
                return (Object[]) this.RECORD_GET_RECORD_COMPONENTS.invoke(cls, new Object[0]);
            } catch (Exception e) {
                throw new IllegalArgumentException("Failed to access RecordComponents of type " + ClassUtil.nameOf(cls));
            }
        }
    }

    public static AnnotatedConstructor findRecordConstructor(DeserializationContext deserializationContext, BeanDescription beanDescription, List<String> list) {
        return new CreatorLocator(deserializationContext, beanDescription).locate(list);
    }

    public static String[] getRecordFieldNames(Class<?> cls) {
        return RecordAccessor.instance().getRecordFieldNames(cls);
    }
}
