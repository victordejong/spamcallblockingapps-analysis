.class final Landroidx/media2/session/r$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->b(Landroidx/media2/session/b;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Ljava/lang/String;I)V
    .locals 0

    .line 829
    iput-object p1, p0, Landroidx/media2/session/r$15;->c:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$15;->a:Ljava/lang/String;

    iput p3, p0, Landroidx/media2/session/r$15;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/MediaSession$b;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$b;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Landroidx/media2/session/r$15;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "replacePlaylistItem(): Ignoring empty mediaId from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionStub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-static {}, Landroidx/media2/common/SessionPlayer$b;->b()Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 837
    :cond_0
    iget-object p1, p0, Landroidx/media2/session/r$15;->c:Landroidx/media2/session/r;

    iget-object v0, p0, Landroidx/media2/session/r$15;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media2/session/r;->a(Ljava/lang/String;)Landroidx/media2/common/MediaItem;

    .line 839
    invoke-static {}, Landroidx/media2/common/SessionPlayer$b;->b()Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
