.class final Landroidx/media2/session/n$f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/n$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$f;->onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/common/SessionPlayer;

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/session/n$f;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$f;Landroidx/media2/common/SessionPlayer;I)V
    .locals 0

    .line 1413
    iput-object p1, p0, Landroidx/media2/session/n$f$1;->c:Landroidx/media2/session/n$f;

    iput-object p2, p0, Landroidx/media2/session/n$f$1;->a:Landroidx/media2/common/SessionPlayer;

    iput p3, p0, Landroidx/media2/session/n$f$1;->b:I

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

    .line 1416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/media2/session/n$f$1;->a:Landroidx/media2/common/SessionPlayer;

    .line 1417
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->e()J

    move-result-wide v4

    iget v6, p0, Landroidx/media2/session/n$f$1;->b:I

    move-object v0, p1

    move v1, p2

    .line 1416
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/MediaSession$a;->a(IJJI)V

    return-void
.end method
