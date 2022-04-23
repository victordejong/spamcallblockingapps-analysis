package com.amazonaws.transform;

import com.amazonaws.AmazonServiceException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/transform/AbstractErrorUnmarshaller.class */
public abstract class AbstractErrorUnmarshaller<T> implements Unmarshaller<AmazonServiceException, T> {
    protected final Class<? extends AmazonServiceException> exceptionClass;

    public AbstractErrorUnmarshaller() {
        this(AmazonServiceException.class);
    }

    public AbstractErrorUnmarshaller(Class<? extends AmazonServiceException> cls) {
        this.exceptionClass = cls;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AmazonServiceException newException(String str) throws Exception {
        return (AmazonServiceException) this.exceptionClass.getConstructor(String.class).newInstance(str);
    }
}
