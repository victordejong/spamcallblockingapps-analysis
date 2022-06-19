.class public final Lcom/facebook/internal/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0015\"\u0004\u0008\u001c\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;",
        "",
        "callId",
        "Ljava/util/UUID;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "originalUri",
        "Landroid/net/Uri;",
        "(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V",
        "attachmentName",
        "",
        "getAttachmentName",
        "()Ljava/lang/String;",
        "attachmentUrl",
        "getAttachmentUrl",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "getCallId",
        "()Ljava/util/UUID;",
        "isContentUri",
        "",
        "()Z",
        "setContentUri",
        "(Z)V",
        "getOriginalUri",
        "()Landroid/net/Uri;",
        "shouldCreateFile",
        "getShouldCreateFile",
        "setShouldCreateFile",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private final e:Ljava/util/UUID;

.field private final f:Landroid/graphics/Bitmap;

.field private final g:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "callId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/y$a;->e:Ljava/util/UUID;

    iput-object p2, p0, Lcom/facebook/internal/y$a;->f:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/facebook/internal/y$a;->g:Landroid/net/Uri;

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    .line 212
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v1, "content"

    .line 213
    invoke-static {v1, p2}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iput-boolean v0, p0, Lcom/facebook/internal/y$a;->c:Z

    .line 216
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v2, "media"

    .line 1405
    invoke-static {p2, v2, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 216
    :goto_0
    iput-boolean v0, p0, Lcom/facebook/internal/y$a;->d:Z

    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-static {v2, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    iput-boolean v0, p0, Lcom/facebook/internal/y$a;->d:Z

    goto :goto_1

    .line 219
    :cond_2
    invoke-static {p3}, Lcom/facebook/internal/ae;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 220
    :cond_3
    new-instance p1, Lcom/facebook/FacebookException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unsupported scheme for media Uri : "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    if-eqz p2, :cond_7

    .line 223
    iput-boolean v0, p0, Lcom/facebook/internal/y$a;->d:Z

    .line 227
    :goto_1
    iget-boolean p2, p0, Lcom/facebook/internal/y$a;->d:Z

    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lcom/facebook/internal/y$a;->b:Ljava/lang/String;

    .line 229
    iget-boolean v0, p0, Lcom/facebook/internal/y$a;->d:Z

    if-nez v0, :cond_6

    .line 230
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 233
    :cond_6
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object p3

    .line 232
    invoke-static {p3, p1, p2}, Lcom/facebook/FacebookContentProvider;->a(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FacebookContentProvider.\u2026, callId, attachmentName)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    :goto_3
    iput-object p1, p0, Lcom/facebook/internal/y$a;->a:Ljava/lang/String;

    return-void

    .line 225
    :cond_7
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "Cannot share media without a bitmap or Uri set"

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
