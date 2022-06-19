package org.slf4j.spi;

import org.slf4j.ILoggerFactory;
/* loaded from: classes3-dex2jar.jar:org/slf4j/spi/LoggerFactoryBinder.class */
public interface LoggerFactoryBinder {
    ILoggerFactory getLoggerFactory();

    String getLoggerFactoryClassStr();
}
