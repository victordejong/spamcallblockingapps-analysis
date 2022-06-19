.class final Landroidx/media2/session/o$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;Landroid/os/Looper;)V
    .locals 0

    .line 971
    iput-object p1, p0, Landroidx/media2/session/o$a;->a:Landroidx/media2/session/o;

    .line 972
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 977
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media2/session/MediaSession$b;

    .line 978
    iget-object v0, p0, Landroidx/media2/session/o$a;->a:Landroidx/media2/session/o;

    iget-object v0, v0, Landroidx/media2/session/o;->g:Landroidx/media2/session/a;

    invoke-virtual {v0, p1}, Landroidx/media2/session/a;->b(Landroidx/media2/session/MediaSession$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1990
    :try_start_0
    iget-object v0, p1, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    const/4 v1, 0x0

    .line 980
    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaSession$a;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :catch_0
    iget-object v0, p0, Landroidx/media2/session/o$a;->a:Landroidx/media2/session/o;

    iget-object v0, v0, Landroidx/media2/session/o;->g:Landroidx/media2/session/a;

    invoke-virtual {v0, p1}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;)V

    :cond_0
    return-void
.end method
