.class final Lcom/google/android/exoplayer2/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/c;
.implements Lcom/google/android/exoplayer2/source/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/y;

.field private final b:Lcom/google/android/exoplayer2/y$c;

.field private c:Lcom/google/android/exoplayer2/source/s$a;

.field private d:Lcom/google/android/exoplayer2/drm/c$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/y;Lcom/google/android/exoplayer2/y$c;)V
    .locals 1

    .line 525
    iput-object p1, p0, Lcom/google/android/exoplayer2/y$a;->a:Lcom/google/android/exoplayer2/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    iget-object v0, p1, Lcom/google/android/exoplayer2/y;->d:Lcom/google/android/exoplayer2/source/s$a;

    .line 526
    iput-object v0, p0, Lcom/google/android/exoplayer2/y$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    .line 2056
    iget-object p1, p1, Lcom/google/android/exoplayer2/y;->e:Lcom/google/android/exoplayer2/drm/c$a;

    .line 527
    iput-object p1, p0, Lcom/google/android/exoplayer2/y$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    .line 528
    iput-object p2, p0, Lcom/google/android/exoplayer2/y$a;->b:Lcom/google/android/exoplayer2/y$c;

    return-void
.end method

.method private f(ILcom/google/android/exoplayer2/source/r$a;)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 654
    iget-object v0, p0, Lcom/google/android/exoplayer2/y$a;->b:Lcom/google/android/exoplayer2/y$c;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/y;->a(Lcom/google/android/exoplayer2/y$c;Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/y$a;->b:Lcom/google/android/exoplayer2/y$c;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/y;->a(Lcom/google/android/exoplayer2/y$c;I)I

    move-result p1

    .line 661
    iget-object v0, p0, Lcom/google/android/exoplayer2/y$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    iget v0, v0, Lcom/google/android/exoplayer2/source/s$a;->a:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/y$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/s$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 662
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/y$a;->a:Lcom/google/android/exoplayer2/y;

    .line 3056
    iget-object v0, v0, Lcom/google/android/exoplayer2/y;->d:Lcom/google/android/exoplayer2/source/s$a;

    const-wide/16 v1, 0x0

    .line 664
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/s$a;->a(ILcom/google/android/exoplayer2/source/r$a;J)Lcom/google/android/exoplayer2/source/s$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/y$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/y$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    iget v0, v0, Lcom/google/android/exoplayer2/drm/c$a;->a:I

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/y$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/c$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 668
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 669
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/y$a;->a:Lcom/google/android/exoplayer2/y;

    .line 4056
    iget-object v0, v0, Lcom/google/android/exoplayer2/y;->e:Lcom/google/android/exoplayer2/drm/c$a;

    .line 670
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/c$a;->a(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/drm/c$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/y$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 604
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 605
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->a()V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 539
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 540
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V
    .locals 0

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 575
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 595
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/o;)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/android/exoplayer2/source/r$a;Ljava/lang/Exception;)V
    .locals 0

    .line 620
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 621
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/c$a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final b(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 612
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 613
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->b()V

    :cond_0
    return-void
.end method

.method public final b(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 551
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/s$a;->b(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    :cond_0
    return-void
.end method

.method public final c(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 629
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->c()V

    :cond_0
    return-void
.end method

.method public final c(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    .line 561
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 562
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$a;->c:Lcom/google/android/exoplayer2/source/s$a;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/s$a;->c(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    :cond_0
    return-void
.end method

.method public final d(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 637
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->d()V

    :cond_0
    return-void
.end method

.method public final e(ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 0

    .line 644
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/y$a;->f(ILcom/google/android/exoplayer2/source/r$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 645
    iget-object p1, p0, Lcom/google/android/exoplayer2/y$a;->d:Lcom/google/android/exoplayer2/drm/c$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/c$a;->e()V

    :cond_0
    return-void
.end method
