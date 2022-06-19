.class final Landroidx/media2/session/o$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/o;->a(Landroid/net/Uri;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 163
    iput-object p1, p0, Landroidx/media2/session/o$14;->c:Landroidx/media2/session/o;

    iput-object p2, p0, Landroidx/media2/session/o$14;->a:Landroid/net/Uri;

    iput-object p3, p0, Landroidx/media2/session/o$14;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    iget-object p1, p0, Landroidx/media2/session/o$14;->c:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object p1, p0, Landroidx/media2/session/o$14;->c:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    return-void
.end method
