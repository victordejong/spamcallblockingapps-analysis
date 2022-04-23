package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.recyclerview.widget.RecyclerView;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import java.io.IOException;
import p610i.C10270k;
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/MediaStoreRequestHandler.class */
public class MediaStoreRequestHandler extends ContentStreamRequestHandler {
    public static final String[] CONTENT_ORIENTATION = {"orientation"};

    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/MediaStoreRequestHandler$PicassoKind.class */
    public enum PicassoKind {
        MICRO(3, 96, 96),
        MINI(1, RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN, 384),
        FULL(2, -1, -1);
        
        public final int androidKind;
        public final int height;
        public final int width;

        PicassoKind(int i, int i2, int i3) {
            this.androidKind = i;
            this.width = i2;
            this.height = i3;
        }
    }

    public MediaStoreRequestHandler(Context context) {
        super(context);
    }

    public static int getExifOrientation(ContentResolver contentResolver, Uri uri) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            Cursor query = contentResolver.query(uri, CONTENT_ORIENTATION, null, null, null);
            if (query != null && query.moveToFirst()) {
                cursor2 = query;
                cursor = query;
                int i = query.getInt(0);
                if (query != null) {
                    query.close();
                }
                return i;
            }
            if (query == null) {
                return 0;
            }
            query.close();
            return 0;
        } catch (RuntimeException e) {
            if (cursor == null) {
                return 0;
            }
            cursor.close();
            return 0;
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    public static PicassoKind getPicassoKind(int i, int i2) {
        PicassoKind picassoKind = PicassoKind.MICRO;
        if (i <= picassoKind.width && i2 <= picassoKind.height) {
            return picassoKind;
        }
        PicassoKind picassoKind2 = PicassoKind.MINI;
        return (i > picassoKind2.width || i2 > picassoKind2.height) ? PicassoKind.FULL : picassoKind2;
    }

    @Override // com.squareup.picasso.ContentStreamRequestHandler, com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        Uri uri = request.uri;
        return "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    @Override // com.squareup.picasso.ContentStreamRequestHandler, com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i) throws IOException {
        Bitmap bitmap;
        ContentResolver contentResolver = this.context.getContentResolver();
        int exifOrientation = getExifOrientation(contentResolver, request.uri);
        String type = contentResolver.getType(request.uri);
        boolean z = type != null && type.startsWith("video/");
        if (request.hasSize()) {
            PicassoKind picassoKind = getPicassoKind(request.targetWidth, request.targetHeight);
            if (!z && picassoKind == PicassoKind.FULL) {
                return new RequestHandler.Result(null, C10270k.m751a(getInputStream(request)), Picasso.LoadedFrom.DISK, exifOrientation);
            }
            long parseId = ContentUris.parseId(request.uri);
            BitmapFactory.Options createBitmapOptions = RequestHandler.createBitmapOptions(request);
            createBitmapOptions.inJustDecodeBounds = true;
            RequestHandler.calculateInSampleSize(request.targetWidth, request.targetHeight, picassoKind.width, picassoKind.height, createBitmapOptions, request);
            if (z) {
                bitmap = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, parseId, picassoKind == PicassoKind.FULL ? 1 : picassoKind.androidKind, createBitmapOptions);
            } else {
                bitmap = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, parseId, picassoKind.androidKind, createBitmapOptions);
            }
            if (bitmap != null) {
                return new RequestHandler.Result(bitmap, null, Picasso.LoadedFrom.DISK, exifOrientation);
            }
        }
        return new RequestHandler.Result(null, C10270k.m751a(getInputStream(request)), Picasso.LoadedFrom.DISK, exifOrientation);
    }
}
