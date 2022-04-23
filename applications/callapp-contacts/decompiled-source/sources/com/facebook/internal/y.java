package com.facebook.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.FacebookContentProvider;
import com.facebook.FacebookException;
import com.facebook.g;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\f\bÆ\u0002\u0018��2\u00020\u0001:\u0001%B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0007J\b\u0010\r\u001a\u00020\tH\u0007J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0007J$\u0010\u0017\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0007H\u0007J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001aH\u0007J\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0007J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u0007H\u0002J \u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006&"}, d2 = {"Lcom/facebook/internal/NativeAppCallAttachmentStore;", "", "()V", "ATTACHMENTS_DIR_NAME", "", "TAG", "attachmentsDirectory", "Ljava/io/File;", "addAttachments", "", "attachments", "", "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "cleanupAllAttachments", "cleanupAttachmentsForCall", "callId", "Ljava/util/UUID;", "createAttachment", "attachmentBitmap", "Landroid/graphics/Bitmap;", "attachmentUri", "Landroid/net/Uri;", "ensureAttachmentsDirectoryExists", "getAttachmentFile", "attachmentName", "createDirs", "", "getAttachmentsDirectory", "getAttachmentsDirectoryForCall", "create", "openAttachment", "processAttachmentBitmap", "bitmap", "outputFile", "processAttachmentFile", "imageUri", "isContentUri", "Attachment", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public static final y f20018a = new y();

    /* renamed from: b  reason: collision with root package name */
    private static final String f20019b;

    /* renamed from: c  reason: collision with root package name */
    private static File f20020c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\t\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u0015\"\u0004\b\u001c\u0010\u0017¨\u0006\u001d"}, d2 = {"Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "", "callId", "Ljava/util/UUID;", "bitmap", "Landroid/graphics/Bitmap;", "originalUri", "Landroid/net/Uri;", "(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V", "attachmentName", "", "getAttachmentName", "()Ljava/lang/String;", "attachmentUrl", "getAttachmentUrl", "getBitmap", "()Landroid/graphics/Bitmap;", "getCallId", "()Ljava/util/UUID;", "isContentUri", "", "()Z", "setContentUri", "(Z)V", "getOriginalUri", "()Landroid/net/Uri;", "shouldCreateFile", "getShouldCreateFile", "setShouldCreateFile", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/y$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f20021a;

        /* renamed from: b  reason: collision with root package name */
        private final String f20022b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f20023c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f20024d;
        private final UUID e;
        private final Bitmap f;
        private final Uri g;

        public a(UUID callId, Bitmap bitmap, Uri uri) {
            String str;
            p.d(callId, "callId");
            this.e = callId;
            this.f = bitmap;
            this.g = uri;
            boolean z = true;
            if (uri != null) {
                String scheme = uri.getScheme();
                if (kotlin.h.p.a(Constants.VAST_TRACKER_CONTENT, scheme)) {
                    this.f20023c = true;
                    String authority = uri.getAuthority();
                    this.f20024d = (authority == null || kotlin.h.p.a(authority, "media", false)) ? false : z;
                } else if (kotlin.h.p.a("file", uri.getScheme())) {
                    this.f20024d = true;
                } else if (!ae.a(uri)) {
                    throw new FacebookException("Unsupported scheme for media Uri : ".concat(String.valueOf(scheme)));
                }
            } else if (bitmap != null) {
                this.f20024d = true;
            } else {
                throw new FacebookException("Cannot share media without a bitmap or Uri set");
            }
            String uuid = !this.f20024d ? null : UUID.randomUUID().toString();
            this.f20022b = uuid;
            if (!this.f20024d) {
                str = String.valueOf(uri);
            } else {
                str = FacebookContentProvider.a(g.m(), callId, uuid);
                p.b(str, "FacebookContentProvider.…, callId, attachmentName)");
            }
            this.f20021a = str;
        }
    }

    static {
        String name = y.class.getName();
        p.b(name, "NativeAppCallAttachmentStore::class.java.name");
        f20019b = name;
    }

    private y() {
    }

    public static final a a(UUID callId, Bitmap attachmentBitmap) {
        p.d(callId, "callId");
        p.d(attachmentBitmap, "attachmentBitmap");
        return new a(callId, attachmentBitmap, null);
    }

    public static final a a(UUID callId, Uri attachmentUri) {
        p.d(callId, "callId");
        p.d(attachmentUri, "attachmentUri");
        return new a(callId, null, attachmentUri);
    }

    public static final File a(UUID uuid, String str) throws FileNotFoundException {
        if (ae.a(str) || uuid == null) {
            throw new FileNotFoundException();
        }
        try {
            return b(uuid, str);
        } catch (IOException e) {
            throw new FileNotFoundException();
        }
    }

    private static File a(UUID callId, boolean z) {
        p.d(callId, "callId");
        if (f20020c == null) {
            return null;
        }
        return new File(f20020c, callId.toString());
    }

    public static final void a(UUID callId) {
        p.d(callId, "callId");
        File a2 = a(callId, false);
        if (a2 != null) {
            ae.a(a2);
        }
    }

    private static File b(UUID callId, String str) throws IOException {
        p.d(callId, "callId");
        File a2 = a(callId, false);
        File file = null;
        if (a2 == null) {
            return null;
        }
        try {
            file = new File(a2, URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
        }
        return file;
    }
}
