.class public interface abstract Landroidx/media2/session/MediaSessionService$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract b(Landroidx/media2/session/MediaSessionService;)V
.end method

.method public abstract c(Landroidx/media2/session/MediaSession;)V
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e(Landroidx/media2/session/MediaSession;)Landroidx/media2/session/MediaSessionService$a;
.end method

.method public abstract f(Landroid/content/Intent;II)I
.end method

.method public abstract onDestroy()V
.end method
