package com.facebook.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.C10181g;
import com.facebook.FacebookContentProvider;
import com.facebook.FacebookException;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\f\bÆ\u0002\u0018��2\u00020\u0001:\u0001%B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0007J\b\u0010\r\u001a\u00020\tH\u0007J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0007J$\u0010\u0017\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0007H\u0007J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001aH\u0007J\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0007J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u0007H\u0002J \u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006&"}, m4298d2 = {"Lcom/facebook/internal/NativeAppCallAttachmentStore;", "", "()V", "ATTACHMENTS_DIR_NAME", "", "TAG", "attachmentsDirectory", "Ljava/io/File;", "addAttachments", "", "attachments", "", "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "cleanupAllAttachments", "cleanupAttachmentsForCall", "callId", "Ljava/util/UUID;", "createAttachment", "attachmentBitmap", "Landroid/graphics/Bitmap;", "attachmentUri", "Landroid/net/Uri;", "ensureAttachmentsDirectoryExists", "getAttachmentFile", "attachmentName", "createDirs", "", "getAttachmentsDirectory", "getAttachmentsDirectoryForCall", "create", "openAttachment", "processAttachmentBitmap", "bitmap", "outputFile", "processAttachmentFile", "imageUri", "isContentUri", "Attachment", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.y */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/y.class */
public final class C10338y {

    /* renamed from: a */
    public static final C10338y f33935a = new C10338y();

    /* renamed from: b */
    private static final String f33936b;

    /* renamed from: c */
    private static File f33937c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\t\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\n¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001b\u0010\u0015\"\u0004\b\u001c\u0010\u0017¨\u0006\u001d"}, m4298d2 = {"Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;", "", "callId", "Ljava/util/UUID;", "bitmap", "Landroid/graphics/Bitmap;", "originalUri", "Landroid/net/Uri;", "(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V", "attachmentName", "", "getAttachmentName", "()Ljava/lang/String;", "attachmentUrl", "getAttachmentUrl", "getBitmap", "()Landroid/graphics/Bitmap;", "getCallId", "()Ljava/util/UUID;", "isContentUri", "", "()Z", "setContentUri", "(Z)V", "getOriginalUri", "()Landroid/net/Uri;", "shouldCreateFile", "getShouldCreateFile", "setShouldCreateFile", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.y$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/y$a.class */
    public static final class C10339a {

        /* renamed from: a */
        public final String f33938a;

        /* renamed from: b */
        private final String f33939b;

        /* renamed from: c */
        private boolean f33940c;

        /* renamed from: d */
        private boolean f33941d;

        /* renamed from: e */
        private final UUID f33942e;

        /* renamed from: f */
        private final Bitmap f33943f;

        /* renamed from: g */
        private final Uri f33944g;

        public C10339a(UUID callId, Bitmap bitmap, Uri uri) {
            String str;
            C18524p.m3840d(callId, "callId");
            this.f33942e = callId;
            this.f33943f = bitmap;
            this.f33944g = uri;
            boolean z = true;
            if (uri != null) {
                String scheme = uri.getScheme();
                if (C18425p.m3961a(Constants.VAST_TRACKER_CONTENT, scheme)) {
                    this.f33940c = true;
                    String authority = uri.getAuthority();
                    this.f33941d = (authority == null || C18425p.m3957a(authority, "media", false)) ? false : z;
                } else if (C18425p.m3961a("file", uri.getScheme())) {
                    this.f33941d = true;
                } else if (!C10213ae.m23246a(uri)) {
                    throw new FacebookException("Unsupported scheme for media Uri : ".concat(String.valueOf(scheme)));
                }
            } else if (bitmap == null) {
                throw new FacebookException("Cannot share media without a bitmap or Uri set");
            } else {
                this.f33941d = true;
            }
            String uuid = !this.f33941d ? null : UUID.randomUUID().toString();
            this.f33939b = uuid;
            if (!this.f33941d) {
                str = String.valueOf(uri);
            } else {
                str = FacebookContentProvider.m23803a(C10181g.m23286m(), callId, uuid);
                C18524p.m3843b(str, "FacebookContentProvider.…, callId, attachmentName)");
            }
            this.f33938a = str;
        }
    }

    static {
        String name = C10338y.class.getName();
        C18524p.m3843b(name, "NativeAppCallAttachmentStore::class.java.name");
        f33936b = name;
    }

    private C10338y() {
    }

    /* renamed from: a */
    public static final C10339a m22977a(UUID callId, Bitmap attachmentBitmap) {
        C18524p.m3840d(callId, "callId");
        C18524p.m3840d(attachmentBitmap, "attachmentBitmap");
        return new C10339a(callId, attachmentBitmap, null);
    }

    /* renamed from: a */
    public static final C10339a m22976a(UUID callId, Uri attachmentUri) {
        C18524p.m3840d(callId, "callId");
        C18524p.m3840d(attachmentUri, "attachmentUri");
        return new C10339a(callId, null, attachmentUri);
    }

    /* renamed from: a */
    public static final File m22975a(UUID uuid, String str) throws FileNotFoundException {
        if (C10213ae.m23230a(str) || uuid == null) {
            throw new FileNotFoundException();
        }
        try {
            return m22973b(uuid, str);
        } catch (IOException e) {
            throw new FileNotFoundException();
        }
    }

    /* renamed from: a */
    private static File m22974a(UUID callId, boolean z) {
        C18524p.m3840d(callId, "callId");
        if (f33937c == null) {
            return null;
        }
        return new File(f33937c, callId.toString());
    }

    /* renamed from: a */
    public static final void m22978a(UUID callId) {
        C18524p.m3840d(callId, "callId");
        File m22974a = m22974a(callId, false);
        if (m22974a != null) {
            C10213ae.m23237a(m22974a);
        }
    }

    /* renamed from: b */
    private static File m22973b(UUID callId, String str) throws IOException {
        C18524p.m3840d(callId, "callId");
        File m22974a = m22974a(callId, false);
        File file = null;
        if (m22974a == null) {
            return null;
        }
        try {
            file = new File(m22974a, URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
        }
        return file;
    }
}
