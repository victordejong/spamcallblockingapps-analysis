package com.squareup.picasso;

import java.io.IOException;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/Downloader.class */
public interface Downloader {
    Response load(Request request) throws IOException;

    void shutdown();
}
