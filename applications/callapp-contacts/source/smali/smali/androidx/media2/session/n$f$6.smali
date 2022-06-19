.class final Landroidx/media2/session/n$f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$f;->onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/MediaItem;

.field final synthetic b:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field final synthetic c:Landroidx/media2/common/SubtitleData;

.field final synthetic d:Landroidx/media2/session/n$f;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$f;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 0

    .line 1619
    iput-object p1, p0, Landroidx/media2/session/n$f$6;->d:Landroidx/media2/session/n$f;

    iput-object p2, p0, Landroidx/media2/session/n$f$6;->a:Landroidx/media2/common/MediaItem;

    iput-object p3, p0, Landroidx/media2/session/n$f$6;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iput-object p4, p0, Landroidx/media2/session/n$f$6;->c:Landroidx/media2/common/SubtitleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1622
    iget-object v0, p0, Landroidx/media2/session/n$f$6;->a:Landroidx/media2/common/MediaItem;

    iget-object v1, p0, Landroidx/media2/session/n$f$6;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    iget-object v2, p0, Landroidx/media2/session/n$f$6;->c:Landroidx/media2/common/SubtitleData;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroidx/media2/session/MediaSession$a;->a(ILandroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    return-void
.end method
