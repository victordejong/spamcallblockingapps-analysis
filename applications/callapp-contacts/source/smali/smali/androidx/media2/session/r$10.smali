.class final Landroidx/media2/session/r$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->a(Landroidx/media2/session/b;ILandroid/net/Uri;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/r$c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 755
    iput-object p1, p0, Landroidx/media2/session/r$10;->c:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$10;->a:Landroid/net/Uri;

    iput-object p3, p0, Landroidx/media2/session/r$10;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/session/MediaSession$b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1758
    iget-object v0, p0, Landroidx/media2/session/r$10;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1759
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "setMediaUri(): Ignoring null uri from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionStub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    .line 1760
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1762
    :cond_0
    iget-object p1, p0, Landroidx/media2/session/r$10;->c:Landroidx/media2/session/r;

    iget-object p1, p1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object p1, p0, Landroidx/media2/session/r$10;->c:Landroidx/media2/session/r;

    iget-object p1, p1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    .line 1763
    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    const/4 p1, -0x6

    .line 1762
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
