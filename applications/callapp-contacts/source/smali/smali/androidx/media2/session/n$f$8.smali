.class final Landroidx/media2/session/n$f$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$f;->onBufferingStateChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/MediaItem;

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/common/SessionPlayer;

.field final synthetic d:Landroidx/media2/session/n$f;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$f;Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SessionPlayer;)V
    .locals 0

    .line 1426
    iput-object p1, p0, Landroidx/media2/session/n$f$8;->d:Landroidx/media2/session/n$f;

    iput-object p2, p0, Landroidx/media2/session/n$f$8;->a:Landroidx/media2/common/MediaItem;

    iput p3, p0, Landroidx/media2/session/n$f$8;->b:I

    iput-object p4, p0, Landroidx/media2/session/n$f$8;->c:Landroidx/media2/common/SessionPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$a;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1429
    iget-object v2, p0, Landroidx/media2/session/n$f$8;->a:Landroidx/media2/common/MediaItem;

    iget v3, p0, Landroidx/media2/session/n$f$8;->b:I

    iget-object v0, p0, Landroidx/media2/session/n$f$8;->c:Landroidx/media2/common/SessionPlayer;

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->g()J

    move-result-wide v4

    .line 1430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Landroidx/media2/session/n$f$8;->c:Landroidx/media2/common/SessionPlayer;

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->e()J

    move-result-wide v8

    move-object v0, p1

    move v1, p2

    .line 1429
    invoke-virtual/range {v0 .. v9}, Landroidx/media2/session/MediaSession$a;->a(ILandroidx/media2/common/MediaItem;IJJJ)V

    return-void
.end method
