.class final Landroidx/media2/session/r$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->a(Landroidx/media2/session/b;ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic c:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Ljava/util/List;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0

    .line 705
    iput-object p1, p0, Landroidx/media2/session/r$8;->c:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$8;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/session/r$8;->b:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)Lcom/google/common/util/concurrent/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$b;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 708
    iget-object v0, p0, Landroidx/media2/session/r$8;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 709
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setPlaylist(): Ignoring null playlist from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionStub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-static {}, Landroidx/media2/common/SessionPlayer$b;->b()Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 712
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 713
    :goto_0
    iget-object v1, p0, Landroidx/media2/session/r$8;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 714
    iget-object v1, p0, Landroidx/media2/session/r$8;->c:Landroidx/media2/session/r;

    iget-object v2, p0, Landroidx/media2/session/r$8;->a:Ljava/util/List;

    .line 715
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 714
    invoke-virtual {v1, v2}, Landroidx/media2/session/r;->a(Ljava/lang/String;)Landroidx/media2/common/MediaItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    :cond_1
    iget-object v0, p0, Landroidx/media2/session/r$8;->c:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    iget-object v1, p0, Landroidx/media2/session/r$8;->b:Landroidx/versionedparcelable/ParcelImpl;

    .line 1078
    invoke-static {v1}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object v1

    .line 721
    check-cast v1, Landroidx/media2/common/MediaMetadata;

    .line 720
    invoke-interface {v0, p1, v1}, Landroidx/media2/session/MediaSession$c;->a(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
