.class final Landroidx/media2/session/n$f$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$f;->onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/SessionPlayer;

.field final synthetic b:J

.field final synthetic c:Landroidx/media2/session/n$f;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$f;Landroidx/media2/common/SessionPlayer;J)V
    .locals 0

    .line 1448
    iput-object p1, p0, Landroidx/media2/session/n$f$10;->c:Landroidx/media2/session/n$f;

    iput-object p2, p0, Landroidx/media2/session/n$f$10;->a:Landroidx/media2/common/SessionPlayer;

    iput-wide p3, p0, Landroidx/media2/session/n$f$10;->b:J

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

    .line 1451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/media2/session/n$f$10;->a:Landroidx/media2/common/SessionPlayer;

    .line 1452
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->e()J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/media2/session/n$f$10;->b:J

    move-object v0, p1

    move v1, p2

    .line 1451
    invoke-virtual/range {v0 .. v7}, Landroidx/media2/session/MediaSession$a;->a(IJJJ)V

    return-void
.end method
