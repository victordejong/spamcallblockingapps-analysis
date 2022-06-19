.class final Landroidx/media2/session/r$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->b(Landroidx/media2/session/b;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/r$b<",
        "Landroidx/media2/session/LibraryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Ljava/lang/String;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Landroidx/media2/session/r$27;->b:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$27;->a:Ljava/lang/String;

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

    .line 2024
    iget-object v0, p0, Landroidx/media2/session/r$27;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2025
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getItem(): Ignoring empty mediaId from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionStub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    new-instance p1, Landroidx/media2/session/LibraryResult;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object p1

    .line 2028
    :cond_0
    iget-object p1, p0, Landroidx/media2/session/r$27;->b:Landroidx/media2/session/r;

    invoke-virtual {p1}, Landroidx/media2/session/r;->b()Landroidx/media2/session/MediaLibraryService$a$b;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media2/session/MediaLibraryService$a$b;->v()Landroidx/media2/session/LibraryResult;

    move-result-object p1

    return-object p1
.end method
