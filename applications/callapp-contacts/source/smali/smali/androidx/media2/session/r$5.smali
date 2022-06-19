.class final Landroidx/media2/session/r$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->a(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/r$c<",
        "Landroidx/media2/session/SessionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/SessionCommand;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 0

    .line 641
    iput-object p1, p0, Landroidx/media2/session/r$5;->c:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$5;->a:Landroidx/media2/session/SessionCommand;

    iput-object p3, p0, Landroidx/media2/session/r$5;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroidx/media2/session/MediaSession$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1644
    iget-object p1, p0, Landroidx/media2/session/r$5;->c:Landroidx/media2/session/r;

    iget-object p1, p1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object p1, p0, Landroidx/media2/session/r$5;->c:Landroidx/media2/session/r;

    iget-object p1, p1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    .line 1645
    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    .line 1644
    invoke-static {}, Landroidx/media2/session/MediaSession$d;->e()Landroidx/media2/session/SessionResult;

    move-result-object p1

    return-object p1
.end method
