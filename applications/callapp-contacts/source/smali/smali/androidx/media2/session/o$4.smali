.class final Landroidx/media2/session/o$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/o;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;J)V
    .locals 0

    .line 312
    iput-object p1, p0, Landroidx/media2/session/o$4;->b:Landroidx/media2/session/o;

    iput-wide p2, p0, Landroidx/media2/session/o$4;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget-object p1, p0, Landroidx/media2/session/o$4;->b:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->B()Landroidx/media2/common/SessionPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->n()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object p1, p0, Landroidx/media2/session/o$4;->b:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    iget-wide v0, p0, Landroidx/media2/session/o$4;->a:J

    long-to-int v1, v0

    invoke-interface {p1, v1}, Landroidx/media2/session/MediaSession$c;->b(I)Lcom/google/common/util/concurrent/a;

    return-void
.end method
