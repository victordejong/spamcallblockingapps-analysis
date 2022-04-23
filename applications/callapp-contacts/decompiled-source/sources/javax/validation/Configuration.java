package javax.validation;

import java.io.InputStream;
import javax.validation.Configuration;
import javax.validation.valueextraction.a;
/* loaded from: classes5-dex2jar.jar:javax/validation/Configuration.class */
public interface Configuration<T extends Configuration<T>> {
    T addMapping(InputStream inputStream);

    T addProperty(String str, String str2);

    T addValueExtractor(a<?> aVar);

    h buildValidatorFactory();

    T clockProvider(a aVar);

    T constraintValidatorFactory(b bVar);

    BootstrapConfiguration getBootstrapConfiguration();

    a getDefaultClockProvider();

    b getDefaultConstraintValidatorFactory();

    d getDefaultMessageInterpolator();

    e getDefaultParameterNameProvider();

    g getDefaultTraversableResolver();

    T ignoreXmlConfiguration();

    T messageInterpolator(d dVar);

    T parameterNameProvider(e eVar);

    T traversableResolver(g gVar);
}
