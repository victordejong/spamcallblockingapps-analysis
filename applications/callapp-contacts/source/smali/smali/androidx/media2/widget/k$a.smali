.class final Landroidx/media2/widget/k$a;
.super Landroidx/media2/session/MediaController$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/k;


# direct methods
.method constructor <init>(Landroidx/media2/widget/k;)V
    .locals 0

    .line 440
    iput-object p1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-direct {p0}, Landroidx/media2/session/MediaController$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 446
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/k$b;->c(Landroidx/media2/widget/k;)V

    .line 447
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0}, Landroidx/media2/widget/k;->m()V

    return-void
.end method

.method public final a(F)V
    .locals 2

    .line 467
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;F)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 460
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget v0, v0, Landroidx/media2/widget/k;->d:I

    if-ne v0, p1, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iput p1, v0, Landroidx/media2/widget/k;->d:I

    .line 462
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;I)V

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 472
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;J)V

    return-void
.end method

.method public final a(Landroidx/media2/common/MediaItem;)V
    .locals 2

    .line 478
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroidx/media2/widget/k;->f:Landroidx/media2/common/MediaMetadata;

    .line 479
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public final a(Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2

    .line 514
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method

.method public final a(Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 2

    .line 502
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    return-void
.end method

.method public final a(Landroidx/media2/common/VideoSize;)V
    .locals 2

    .line 496
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Landroidx/media2/common/VideoSize;)V

    return-void
.end method

.method public final a(Landroidx/media2/session/SessionCommandGroup;)V
    .locals 1

    .line 453
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    invoke-static {v0, p1}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iput-object p1, v0, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    .line 455
    iget-object p1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object p1, p1, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/k$b;->b(Landroidx/media2/widget/k;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")V"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    return-void
.end method

.method public final b(Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2

    .line 520
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1, p1}, Landroidx/media2/widget/k$b;->b(Landroidx/media2/widget/k;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 490
    iget-object v0, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    iget-object v0, v0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    iget-object v1, p0, Landroidx/media2/widget/k$a;->a:Landroidx/media2/widget/k;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;)V

    return-void
.end method
