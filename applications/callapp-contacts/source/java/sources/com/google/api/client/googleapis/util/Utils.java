package com.google.api.client.googleapis.util;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/util/Utils.class */
public final class Utils {

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/util/Utils$JsonFactoryInstanceHolder.class */
    static class JsonFactoryInstanceHolder {
        static final JsonFactory INSTANCE = new JacksonFactory();

        private JsonFactoryInstanceHolder() {
        }
    }

    private Utils() {
    }
}
