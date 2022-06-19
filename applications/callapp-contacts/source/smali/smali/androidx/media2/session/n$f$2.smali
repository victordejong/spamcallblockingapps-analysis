.class final Landroidx/media2/session/n$f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$f;->onVideoSizeChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/VideoSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/VideoSize;

.field final synthetic b:Landroidx/media2/session/n$f;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$f;Landroidx/media2/common/VideoSize;)V
    .locals 0

    .line 1565
    iput-object p1, p0, Landroidx/media2/session/n$f$2;->b:Landroidx/media2/session/n$f;

    iput-object p2, p0, Landroidx/media2/session/n$f$2;->a:Landroidx/media2/common/VideoSize;

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

    .line 1568
    iget-object v0, p0, Landroidx/media2/session/n$f$2;->a:Landroidx/media2/common/VideoSize;

    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroidx/media2/common/VideoSize;)Landroidx/media2/common/VideoSize;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/media2/session/MediaSession$a;->a(ILandroidx/media2/common/VideoSize;)V

    return-void
.end method
