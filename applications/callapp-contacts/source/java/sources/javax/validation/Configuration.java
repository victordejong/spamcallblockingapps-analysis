package javax.validation;

import java.io.InputStream;
import javax.validation.Configuration;
import javax.validation.valueextraction.AbstractC18223a;
/* loaded from: classes5-dex2jar.jar:javax/validation/Configuration.class */
public interface Configuration<T extends Configuration<T>> {
    T addMapping(InputStream inputStream);

    T addProperty(String str, String str2);

    T addValueExtractor(AbstractC18223a<?> abstractC18223a);

    AbstractC18222h buildValidatorFactory();

    T clockProvider(AbstractC18215a abstractC18215a);

    T constraintValidatorFactory(AbstractC18216b abstractC18216b);

    BootstrapConfiguration getBootstrapConfiguration();

    AbstractC18215a getDefaultClockProvider();

    AbstractC18216b getDefaultConstraintValidatorFactory();

    AbstractC18218d getDefaultMessageInterpolator();

    AbstractC18219e getDefaultParameterNameProvider();

    AbstractC18221g getDefaultTraversableResolver();

    T ignoreXmlConfiguration();

    T messageInterpolator(AbstractC18218d abstractC18218d);

    T parameterNameProvider(AbstractC18219e abstractC18219e);

    T traversableResolver(AbstractC18221g abstractC18221g);
}
