.class final Landroidx/media2/session/o$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/o;->a(Landroid/support/v4/media/MediaDescriptionCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaDescriptionCompat;

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 0

    .line 424
    iput-object p1, p0, Landroidx/media2/session/o$10;->c:Landroidx/media2/session/o;

    iput-object p2, p0, Landroidx/media2/session/o$10;->a:Landroid/support/v4/media/MediaDescriptionCompat;

    iput p3, p0, Landroidx/media2/session/o$10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    iget-object p1, p0, Landroidx/media2/session/o$10;->a:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object p1

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MediaSessionLegacyStub"

    const-string v0, "onAddQueueItem(): Media ID shouldn\'t be empty"

    .line 431
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 434
    :cond_0
    iget-object p1, p0, Landroidx/media2/session/o$10;->c:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object p1, p0, Landroidx/media2/session/o$10;->c:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    .line 435
    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    .line 436
    iget-object p1, p0, Landroidx/media2/session/o$10;->c:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    iget v0, p0, Landroidx/media2/session/o$10;->b:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroidx/media2/session/MediaSession$c;->a(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/a;

    return-void
.end method
