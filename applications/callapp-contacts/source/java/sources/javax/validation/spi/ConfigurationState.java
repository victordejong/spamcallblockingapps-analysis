package javax.validation.spi;

import java.io.InputStream;
import java.util.Map;
import java.util.Set;
import javax.validation.AbstractC18215a;
import javax.validation.AbstractC18216b;
import javax.validation.AbstractC18218d;
import javax.validation.AbstractC18219e;
import javax.validation.AbstractC18221g;
import javax.validation.valueextraction.AbstractC18223a;
/* loaded from: classes5-dex2jar.jar:javax/validation/spi/ConfigurationState.class */
public interface ConfigurationState {
    AbstractC18215a getClockProvider();

    AbstractC18216b getConstraintValidatorFactory();

    Set<InputStream> getMappingStreams();

    AbstractC18218d getMessageInterpolator();

    AbstractC18219e getParameterNameProvider();

    Map<String, String> getProperties();

    AbstractC18221g getTraversableResolver();

    Set<AbstractC18223a<?>> getValueExtractors();

    boolean isIgnoreXmlConfiguration();
}
