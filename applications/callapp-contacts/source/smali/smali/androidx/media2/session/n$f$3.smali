.class final Landroidx/media2/session/n$f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$f;->onTracksChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroidx/media2/session/n;

.field final synthetic c:Landroidx/media2/session/n$f;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$f;Ljava/util/List;Landroidx/media2/session/n;)V
    .locals 0

    .line 1577
    iput-object p1, p0, Landroidx/media2/session/n$f$3;->c:Landroidx/media2/session/n$f;

    iput-object p2, p0, Landroidx/media2/session/n$f$3;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/session/n$f$3;->b:Landroidx/media2/session/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1580
    iget-object v0, p0, Landroidx/media2/session/n$f$3;->a:Ljava/util/List;

    invoke-static {v0}, Landroidx/media2/session/s;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Landroidx/media2/session/n$f$3;->b:Landroidx/media2/session/n;

    const/4 v1, 0x1

    .line 1582
    invoke-virtual {v0, v1}, Landroidx/media2/session/n;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    .line 1581
    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v4

    iget-object v0, p0, Landroidx/media2/session/n$f$3;->b:Landroidx/media2/session/n;

    const/4 v1, 0x2

    .line 1584
    invoke-virtual {v0, v1}, Landroidx/media2/session/n;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    .line 1583
    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v5

    iget-object v0, p0, Landroidx/media2/session/n$f$3;->b:Landroidx/media2/session/n;

    const/4 v1, 0x4

    .line 1586
    invoke-virtual {v0, v1}, Landroidx/media2/session/n;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    .line 1585
    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v6

    iget-object v0, p0, Landroidx/media2/session/n$f$3;->b:Landroidx/media2/session/n;

    const/4 v1, 0x5

    .line 1588
    invoke-virtual {v0, v1}, Landroidx/media2/session/n;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    .line 1587
    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v7

    move-object v1, p1

    move v2, p2

    .line 1580
    invoke-virtual/range {v1 .. v7}, Landroidx/media2/session/MediaSession$a;->a(ILjava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method
