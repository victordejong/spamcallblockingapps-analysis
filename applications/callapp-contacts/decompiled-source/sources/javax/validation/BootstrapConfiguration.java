package javax.validation;

import java.util.Map;
import java.util.Set;
/* loaded from: classes5-dex2jar.jar:javax/validation/BootstrapConfiguration.class */
public interface BootstrapConfiguration {
    String getClockProviderClassName();

    Set<String> getConstraintMappingResourcePaths();

    String getConstraintValidatorFactoryClassName();

    String getDefaultProviderClassName();

    Set<Object> getDefaultValidatedExecutableTypes();

    String getMessageInterpolatorClassName();

    String getParameterNameProviderClassName();

    Map<String, String> getProperties();

    String getTraversableResolverClassName();

    Set<String> getValueExtractorClassNames();

    boolean isExecutableValidationEnabled();
}
