.class public final Lcom/facebook/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/y$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001%B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0007J\u0008\u0010\r\u001a\u00020\tH\u0007J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0018\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0018\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u0007J$\u0010\u0017\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0007H\u0007J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001aH\u0007J\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0004H\u0007J\u0018\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u0007H\u0002J \u0010\"\u001a\u00020\t2\u0006\u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u0007H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/facebook/internal/NativeAppCallAttachmentStore;",
        "",
        "()V",
        "ATTACHMENTS_DIR_NAME",
        "",
        "TAG",
        "attachmentsDirectory",
        "Ljava/io/File;",
        "addAttachments",
        "",
        "attachments",
        "",
        "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;",
        "cleanupAllAttachments",
        "cleanupAttachmentsForCall",
        "callId",
        "Ljava/util/UUID;",
        "createAttachment",
        "attachmentBitmap",
        "Landroid/graphics/Bitmap;",
        "attachmentUri",
        "Landroid/net/Uri;",
        "ensureAttachmentsDirectoryExists",
        "getAttachmentFile",
        "attachmentName",
        "createDirs",
        "",
        "getAttachmentsDirectory",
        "getAttachmentsDirectoryForCall",
        "create",
        "openAttachment",
        "processAttachmentBitmap",
        "bitmap",
        "outputFile",
        "processAttachmentFile",
        "imageUri",
        "isContentUri",
        "Attachment",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/y;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/facebook/internal/y;

    invoke-direct {v0}, Lcom/facebook/internal/y;-><init>()V

    sput-object v0, Lcom/facebook/internal/y;->a:Lcom/facebook/internal/y;

    .line 48
    const-class v0, Lcom/facebook/internal/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeAppCallAttachmentStore::class.java.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/internal/y;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/y$a;
    .locals 2

    const-string v0, "callId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/facebook/internal/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/internal/y$a;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static final a(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/y$a;
    .locals 2

    const-string v0, "callId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/facebook/internal/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/internal/y$a;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static final a(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 145
    invoke-static {p1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 149
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/internal/y;->b(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 153
    :catch_0
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 146
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private static a(Ljava/util/UUID;Z)Ljava/io/File;
    .locals 1

    const-string p1, "callId"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget-object p1, Lcom/facebook/internal/y;->c:Ljava/io/File;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 179
    :cond_0
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/facebook/internal/y;->c:Ljava/io/File;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final a(Ljava/util/UUID;)V
    .locals 1

    const-string v0, "callId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 136
    invoke-static {p0, v0}, Lcom/facebook/internal/y;->a(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 138
    invoke-static {p0}, Lcom/facebook/internal/ae;->a(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method private static b(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "callId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 189
    invoke-static {p0, v0}, Lcom/facebook/internal/y;->a(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 191
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method
