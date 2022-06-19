package com.tenor.android.core.validator;

import java.io.Serializable;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/validator/IValidator.class */
public interface IValidator<T> extends Serializable {
    Pattern get();

    boolean validate(T t);
}
