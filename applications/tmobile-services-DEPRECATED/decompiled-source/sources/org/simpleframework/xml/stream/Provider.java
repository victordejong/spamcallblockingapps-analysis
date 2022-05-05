package org.simpleframework.xml.stream;

import java.io.InputStream;
import java.io.Reader;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/Provider.class */
interface Provider {
    EventReader provide(InputStream inputStream) throws Exception;

    EventReader provide(Reader reader) throws Exception;
}
