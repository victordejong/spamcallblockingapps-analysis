package org.simpleframework.xml.core;

import java.lang.reflect.Modifier;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Position;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Factory.class */
public abstract class Factory {
    protected Context context;
    protected Class override;
    protected Support support;
    protected Type type;

    /* JADX INFO: Access modifiers changed from: protected */
    public Factory(Context context, Type type) {
        this(context, type, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Factory(Context context, Type type, Class cls) {
        this.support = context.getSupport();
        this.override = cls;
        this.context = context;
        this.type = type;
    }

    private Type getPrimitive(Type type, Class cls) throws Exception {
        Class primitive = Support.getPrimitive(cls);
        return primitive != cls ? new OverrideType(type, primitive) : type;
    }

    public static boolean isCompatible(Class cls, Class cls2) {
        Class<?> cls3 = cls;
        if (cls.isArray()) {
            cls3 = cls.getComponentType();
        }
        return cls3.isAssignableFrom(cls2);
    }

    public static boolean isInstantiable(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isAbstract(modifiers)) {
            return false;
        }
        return !Modifier.isInterface(modifiers);
    }

    public Value getConversion(InputNode inputNode) throws Exception {
        Value override = this.context.getOverride(this.type, inputNode);
        if (!(override == null || this.override == null)) {
            if (!isCompatible(this.override, override.getType())) {
                return new OverrideValue(override, this.override);
            }
        }
        return override;
    }

    public Object getInstance() throws Exception {
        Class type = getType();
        if (isInstantiable(type)) {
            return type.newInstance();
        }
        throw new InstantiationException("Type %s can not be instantiated", type);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Value getOverride(InputNode inputNode) throws Exception {
        Value conversion = getConversion(inputNode);
        if (conversion != null) {
            Position position = inputNode.getPosition();
            Class type = conversion.getType();
            if (!isCompatible(getType(), type)) {
                throw new InstantiationException("Incompatible %s for %s at %s", type, this.type, position);
            }
        }
        return conversion;
    }

    public Class getType() {
        Class cls = this.override;
        return cls != null ? cls : this.type.getType();
    }

    public boolean setOverride(Type type, Object obj, OutputNode outputNode) throws Exception {
        Class type2 = type.getType();
        Type type3 = type;
        if (type2.isPrimitive()) {
            type3 = getPrimitive(type, type2);
        }
        return this.context.setOverride(type3, obj, outputNode);
    }
}
