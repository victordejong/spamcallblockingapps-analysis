.class final Landroidx/media2/session/n$f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$f;->onTrackSelected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field final synthetic b:Landroidx/media2/session/n$f;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$f;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0

    .line 1596
    iput-object p1, p0, Landroidx/media2/session/n$f$4;->b:Landroidx/media2/session/n$f;

    iput-object p2, p0, Landroidx/media2/session/n$f$4;->a:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Landroidx/media2/session/n$f$4;->a:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/media2/session/MediaSession$a;->a(ILandroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method
