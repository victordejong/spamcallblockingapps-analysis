package com.squareup.picasso;

import android.content.Context;
import com.mopub.common.Constants;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p092c.C3217q;
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/ContentStreamRequestHandler.class */
public class ContentStreamRequestHandler extends RequestHandler {
    final Context context;

    public ContentStreamRequestHandler(Context context) {
        this.context = context;
    }

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        return Constants.VAST_TRACKER_CONTENT.equals(request.uri.getScheme());
    }

    public InputStream getInputStream(Request request) throws FileNotFoundException {
        return this.context.getContentResolver().openInputStream(request.uri);
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        return new RequestHandler.Result(C3217q.m39158a(getInputStream(request)), Picasso.LoadedFrom.DISK);
    }
}
