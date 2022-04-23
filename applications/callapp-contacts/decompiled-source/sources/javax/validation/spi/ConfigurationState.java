package javax.validation.spi;

import java.io.InputStream;
import java.util.Map;
import java.util.Set;
import javax.validation.a;
import javax.validation.b;
import javax.validation.d;
import javax.validation.e;
import javax.validation.g;
/* loaded from: classes5-dex2jar.jar:javax/validation/spi/ConfigurationState.class */
public interface ConfigurationState {
    a getClockProvider();

    b getConstraintValidatorFactory();

    Set<InputStream> getMappingStreams();

    d getMessageInterpolator();

    e getParameterNameProvider();

    Map<String, String> getProperties();

    g getTraversableResolver();

    Set<javax.validation.valueextraction.a<?>> getValueExtractors();

    boolean isIgnoreXmlConfiguration();
}
