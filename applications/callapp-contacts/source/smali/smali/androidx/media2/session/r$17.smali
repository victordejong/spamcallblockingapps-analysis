.class final Landroidx/media2/session/r$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/r;->b(Landroidx/media2/session/b;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;I)V
    .locals 0

    .line 867
    iput-object p1, p0, Landroidx/media2/session/r$17;->b:Landroidx/media2/session/r;

    iput p2, p0, Landroidx/media2/session/r$17;->a:I

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

    .line 870
    iget v0, p0, Landroidx/media2/session/r$17;->a:I

    if-gez v0, :cond_0

    .line 871
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "skipToPlaylistItem(): Ignoring negative index from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionStub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-static {}, Landroidx/media2/common/SessionPlayer$b;->b()Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 875
    :cond_0
    iget-object p1, p0, Landroidx/media2/session/r$17;->b:Landroidx/media2/session/r;

    iget-object p1, p1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    iget v0, p0, Landroidx/media2/session/r$17;->a:I

    invoke-interface {p1, v0}, Landroidx/media2/session/MediaSession$c;->b(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method
