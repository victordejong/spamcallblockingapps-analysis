.class final Landroidx/media2/session/o$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/o;->b(Landroid/support/v4/media/MediaDescriptionCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaDescriptionCompat;

.field final synthetic b:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    .line 447
    iput-object p1, p0, Landroidx/media2/session/o$11;->b:Landroidx/media2/session/o;

    iput-object p2, p0, Landroidx/media2/session/o$11;->a:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    iget-object p1, p0, Landroidx/media2/session/o$11;->a:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MediaSessionLegacyStub"

    const-string v0, "onRemoveQueueItem(): Media ID shouldn\'t be null"

    .line 454
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/o$11;->b:Landroidx/media2/session/o;

    iget-object v0, v0, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 458
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 459
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    .line 460
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    iget-object p1, p0, Landroidx/media2/session/o$11;->b:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1, v1}, Landroidx/media2/session/MediaSession$c;->c(I)Lcom/google/common/util/concurrent/a;

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
