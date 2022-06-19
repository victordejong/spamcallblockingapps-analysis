package org.bson.codecs.pojo;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/Conventions.class */
public final class Conventions {
    public static final Convention ANNOTATION_CONVENTION;
    public static final Convention CLASS_AND_PROPERTY_CONVENTION;
    public static final List<Convention> DEFAULT_CONVENTIONS;
    public static final Convention OBJECT_ID_GENERATORS;
    public static final Convention SET_PRIVATE_FIELDS_CONVENTION = new ConventionSetPrivateFieldImpl();
    public static final Convention USE_GETTERS_FOR_SETTERS = new ConventionUseGettersAsSettersImpl();
    public static final List<Convention> NO_CONVENTIONS = Collections.emptyList();

    static {
        ConventionDefaultsImpl conventionDefaultsImpl = new ConventionDefaultsImpl();
        CLASS_AND_PROPERTY_CONVENTION = conventionDefaultsImpl;
        ConventionAnnotationImpl conventionAnnotationImpl = new ConventionAnnotationImpl();
        ANNOTATION_CONVENTION = conventionAnnotationImpl;
        ConventionObjectIdGeneratorsImpl conventionObjectIdGeneratorsImpl = new ConventionObjectIdGeneratorsImpl();
        OBJECT_ID_GENERATORS = conventionObjectIdGeneratorsImpl;
        DEFAULT_CONVENTIONS = Collections.unmodifiableList(Arrays.asList(conventionDefaultsImpl, conventionAnnotationImpl, conventionObjectIdGeneratorsImpl));
    }

    private Conventions() {
    }
}
