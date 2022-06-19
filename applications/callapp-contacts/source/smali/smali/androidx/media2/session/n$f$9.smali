.class final Landroidx/media2/session/n$f$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$f;->onPlaybackSpeedChanged(Landroidx/media2/common/SessionPlayer;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/SessionPlayer;

.field final synthetic b:F

.field final synthetic c:Landroidx/media2/session/n$f;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$f;Landroidx/media2/common/SessionPlayer;F)V
    .locals 0

    .line 1437
    iput-object p1, p0, Landroidx/media2/session/n$f$9;->c:Landroidx/media2/session/n$f;

    iput-object p2, p0, Landroidx/media2/session/n$f$9;->a:Landroidx/media2/common/SessionPlayer;

    iput p3, p0, Landroidx/media2/session/n$f$9;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/media2/session/n$f$9;->a:Landroidx/media2/common/SessionPlayer;

    .line 1441
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->e()J

    move-result-wide v4

    iget v6, p0, Landroidx/media2/session/n$f$9;->b:F

    move-object v0, p1

    move v1, p2

    .line 1440
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/MediaSession$a;->a(IJJF)V

    return-void
.end method
