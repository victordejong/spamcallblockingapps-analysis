.class final Lcom/google/android/exoplayer2/ui/PlayerView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/google/android/exoplayer2/ac$a;
.implements Lcom/google/android/exoplayer2/text/j;
.implements Lcom/google/android/exoplayer2/ui/PlayerControlView$c;
.implements Lcom/google/android/exoplayer2/ui/spherical/d;
.implements Lcom/google/android/exoplayer2/video/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/PlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private final b:Lcom/google/android/exoplayer2/al$a;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerView;)V
    .locals 0

    .line 1535
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    new-instance p1, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->b:Lcom/google/android/exoplayer2/al$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->n(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    return-void
.end method

.method public final a(IIIF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1556
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->b(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Landroid/view/TextureView;

    if-eqz p2, :cond_6

    const/16 p2, 0x5a

    if-eq p3, p2, :cond_2

    const/16 p2, 0x10e

    if-ne p3, p2, :cond_3

    :cond_2
    div-float/2addr v0, p1

    move p1, v0

    .line 1563
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p2

    if-eqz p2, :cond_4

    .line 1564
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->b(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1566
    :cond_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Lcom/google/android/exoplayer2/ui/PlayerView;I)I

    .line 1567
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p2

    if-eqz p2, :cond_5

    .line 1570
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->b(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1572
    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->b(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Landroid/view/TextureView;I)V

    .line 1575
    :cond_6
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->d(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->b(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(FLcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/aa;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/aa;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/ac$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/ac$b;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/al;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/al;I)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V
    .locals 3

    .line 1590
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->f(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ac;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ac;

    .line 1591
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object p2

    .line 1592
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1594
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->H()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1596
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->x()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->b:Lcom/google/android/exoplayer2/al$a;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->c:Ljava/lang/Object;

    goto :goto_0

    .line 1597
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1598
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1600
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->b:Lcom/google/android/exoplayer2/al$a;

    const/4 v2, 0x0

    .line 2955
    invoke-virtual {p2, v0, v1, v2}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object p2

    .line 1601
    iget p2, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 1602
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result p1

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1607
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->c:Ljava/lang/Object;

    .line 1610
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->g(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .line 1543
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Lcom/google/android/exoplayer2/ui/PlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    .line 2157
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1580
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->e(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->e(Lcom/google/android/exoplayer2/ui/PlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 1617
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->h(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    .line 1618
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->i(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    .line 1619
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->j(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    return-void
.end method

.method public synthetic b(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$b(Lcom/google/android/exoplayer2/ac$a;Z)V

    return-void
.end method

.method public synthetic b(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$b(Lcom/google/android/exoplayer2/ac$a;ZI)V

    return-void
.end method

.method public synthetic c(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$c(Lcom/google/android/exoplayer2/ac$a;Ljava/util/List;)V

    return-void
.end method

.method public synthetic c(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$c(Lcom/google/android/exoplayer2/ac$a;Z)V

    return-void
.end method

.method public final c(ZI)V
    .locals 0

    .line 1625
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->h(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    .line 1626
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->j(Lcom/google/android/exoplayer2/ui/PlayerView;)V

    return-void
.end method

.method public synthetic d(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$d(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1656
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->m(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result v0

    return v0
.end method

.method public synthetic e(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$e(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 1631
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->k(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->l(Lcom/google/android/exoplayer2/ui/PlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1632
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->a()V

    :cond_0
    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1649
    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/PlayerView$a;->a:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->c(Lcom/google/android/exoplayer2/ui/PlayerView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/PlayerView;->a(Landroid/view/TextureView;I)V

    return-void
.end method

.method public synthetic p_()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$p_(Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public synthetic q_()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$q_(Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method
