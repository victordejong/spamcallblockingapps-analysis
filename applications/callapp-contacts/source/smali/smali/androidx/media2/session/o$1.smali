.class final Landroidx/media2/session/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/o;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/SessionCommand;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/os/ResultReceiver;

.field final synthetic d:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 115
    iput-object p1, p0, Landroidx/media2/session/o$1;->d:Landroidx/media2/session/o;

    iput-object p2, p0, Landroidx/media2/session/o$1;->a:Landroidx/media2/session/SessionCommand;

    iput-object p3, p0, Landroidx/media2/session/o$1;->b:Landroid/os/Bundle;

    iput-object p4, p0, Landroidx/media2/session/o$1;->c:Landroid/os/ResultReceiver;

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

    .line 118
    iget-object p1, p0, Landroidx/media2/session/o$1;->d:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object p1, p0, Landroidx/media2/session/o$1;->d:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    .line 119
    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    .line 118
    invoke-static {}, Landroidx/media2/session/MediaSession$d;->e()Landroidx/media2/session/SessionResult;

    move-result-object p1

    .line 120
    iget-object v0, p0, Landroidx/media2/session/o$1;->c:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Landroidx/media2/session/SessionResult;->a()I

    move-result v1

    .line 1185
    iget-object p1, p1, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    .line 121
    invoke-virtual {v0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
