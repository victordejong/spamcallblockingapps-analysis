package com.squareup.picasso;

import android.content.Context;
import android.net.Uri;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;
import p012b.p061l.p062a.C1047a;
import p610i.C10270k;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/FileRequestHandler.class */
public class FileRequestHandler extends ContentStreamRequestHandler {
    public FileRequestHandler(Context context) {
        super(context);
    }

    public static int getFileExifRotation(Uri uri) throws IOException {
        return new C1047a(uri.getPath()).m35006a("Orientation", 1);
    }

    @Override // com.squareup.picasso.ContentStreamRequestHandler, com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        return "file".equals(request.uri.getScheme());
    }

    @Override // com.squareup.picasso.ContentStreamRequestHandler, com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        return new RequestHandler.Result(null, C10270k.m751a(getInputStream(request)), Picasso.LoadedFrom.DISK, getFileExifRotation(request.uri));
    }
}
