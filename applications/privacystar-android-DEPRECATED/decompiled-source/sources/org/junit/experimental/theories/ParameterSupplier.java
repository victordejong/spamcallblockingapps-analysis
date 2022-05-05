package org.junit.experimental.theories;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/junit/experimental/theories/ParameterSupplier.class */
public abstract class ParameterSupplier {
    public abstract List<PotentialAssignment> getValueSources(ParameterSignature parameterSignature) throws Throwable;
}
