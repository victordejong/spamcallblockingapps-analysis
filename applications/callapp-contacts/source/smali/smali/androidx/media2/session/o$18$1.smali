.class final Landroidx/media2/session/o$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/o$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/o$18;->a(Landroidx/media2/session/MediaSession$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/o$18;


# direct methods
.method constructor <init>(Landroidx/media2/session/o$18;)V
    .locals 0

    .line 246
    iput-object p1, p0, Landroidx/media2/session/o$18$1;->a:Landroidx/media2/session/o$18;

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

    .line 251
    iget-object p1, p0, Landroidx/media2/session/o$18$1;->a:Landroidx/media2/session/o$18;

    iget-object p1, p1, Landroidx/media2/session/o$18;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->c()Lcom/google/common/util/concurrent/a;

    .line 252
    iget-object p1, p0, Landroidx/media2/session/o$18$1;->a:Landroidx/media2/session/o$18;

    iget-object p1, p1, Landroidx/media2/session/o$18;->a:Landroidx/media2/session/o;

    iget-object p1, p1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Landroidx/media2/session/MediaSession$c;->a(J)Lcom/google/common/util/concurrent/a;

    return-void
.end method
