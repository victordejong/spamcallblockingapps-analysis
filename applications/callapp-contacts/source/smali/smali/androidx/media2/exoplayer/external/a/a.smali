.class public final Landroidx/media2/exoplayer/external/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/ae$b;
.implements Landroidx/media2/exoplayer/external/audio/f;
.implements Landroidx/media2/exoplayer/external/audio/g;
.implements Landroidx/media2/exoplayer/external/drm/g;
.implements Landroidx/media2/exoplayer/external/metadata/d;
.implements Landroidx/media2/exoplayer/external/source/u;
.implements Landroidx/media2/exoplayer/external/upstream/c$a;
.implements Landroidx/media2/exoplayer/external/video/f;
.implements Landroidx/media2/exoplayer/external/video/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/a/a$a;,
        Landroidx/media2/exoplayer/external/a/a$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media2/exoplayer/external/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroidx/media2/exoplayer/external/a/a$b;

.field public c:Landroidx/media2/exoplayer/external/ae;

.field private final d:Landroidx/media2/exoplayer/external/util/b;

.field private final e:Landroidx/media2/exoplayer/external/al$b;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/util/b;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/util/b;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->d:Landroidx/media2/exoplayer/external/util/b;

    .line 90
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 91
    new-instance p1, Landroidx/media2/exoplayer/external/a/a$b;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/a/a$b;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 92
    new-instance p1, Landroidx/media2/exoplayer/external/al$b;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/al$b;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->e:Landroidx/media2/exoplayer/external/al$b;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/a/a$a;)Landroidx/media2/exoplayer/external/a/b$a;
    .locals 2

    .line 613
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 615
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/ae;->c()I

    move-result p1

    .line 616
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/a/a$b;->a(I)Landroidx/media2/exoplayer/external/a/a$a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 618
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/ae;->k()Landroidx/media2/exoplayer/external/al;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 621
    :cond_1
    sget-object v0, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    :goto_1
    const/4 v1, 0x0

    .line 620
    invoke-direct {p0, v0, p1, v1}, Landroidx/media2/exoplayer/external/a/a;->a(Landroidx/media2/exoplayer/external/al;ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    move-result-object p1

    return-object p1

    :cond_2
    move-object p1, v0

    .line 624
    :cond_3
    iget-object v0, p1, Landroidx/media2/exoplayer/external/a/a$a;->b:Landroidx/media2/exoplayer/external/al;

    iget v1, p1, Landroidx/media2/exoplayer/external/a/a$a;->c:I

    iget-object p1, p1, Landroidx/media2/exoplayer/external/a/a$a;->a:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-direct {p0, v0, v1, p1}, Landroidx/media2/exoplayer/external/a/a;->a(Landroidx/media2/exoplayer/external/al;ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroidx/media2/exoplayer/external/al;ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    .line 579
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v5, p3

    .line 583
    iget-object p3, p0, Landroidx/media2/exoplayer/external/a/a;->d:Landroidx/media2/exoplayer/external/util/b;

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/util/b;->a()J

    move-result-wide v1

    .line 585
    iget-object p3, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    .line 586
    invoke-interface {p3}, Landroidx/media2/exoplayer/external/ae;->k()Landroidx/media2/exoplayer/external/al;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/ae;->c()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    .line 587
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    .line 588
    iget-object p3, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    .line 590
    invoke-interface {p3}, Landroidx/media2/exoplayer/external/ae;->h()I

    move-result p3

    iget v4, v5, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    if-ne p3, v4, :cond_2

    iget-object p3, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    .line 591
    invoke-interface {p3}, Landroidx/media2/exoplayer/external/ae;->i()I

    move-result p3

    iget v4, v5, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    if-ne p3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 593
    iget-object p3, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/ae;->e()J

    move-result-wide v6

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    .line 595
    iget-object p3, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/ae;->j()J

    move-result-wide v6

    goto :goto_2

    .line 600
    :cond_4
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    iget-object p3, p0, Landroidx/media2/exoplayer/external/a/a;->e:Landroidx/media2/exoplayer/external/al$b;

    .line 6648
    invoke-virtual {p1, p2, p3, v6, v7}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    move-result-object p3

    .line 7218
    iget-wide v3, p3, Landroidx/media2/exoplayer/external/al$b;->i:J

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v6

    .line 602
    :cond_6
    :goto_2
    new-instance p3, Landroidx/media2/exoplayer/external/a/b$a;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    .line 608
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/ae;->e()J

    move-result-wide v8

    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    .line 609
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/ae;->g()J

    move-result-wide v10

    move-object v0, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v11}, Landroidx/media2/exoplayer/external/a/b$a;-><init>(JLandroidx/media2/exoplayer/external/al;ILandroidx/media2/exoplayer/external/source/t$a;JJJ)V

    return-object p3
.end method

.method private d(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;
    .locals 1

    .line 646
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 648
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    invoke-virtual {v0, p2}, Landroidx/media2/exoplayer/external/a/a$b;->a(Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/a/a;->a(Landroidx/media2/exoplayer/external/a/a$a;)Landroidx/media2/exoplayer/external/a/b$a;

    move-result-object p1

    return-object p1

    .line 651
    :cond_0
    sget-object v0, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/a/a;->a(Landroidx/media2/exoplayer/external/al;ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    move-result-object p1

    return-object p1

    .line 653
    :cond_1
    iget-object p2, p0, Landroidx/media2/exoplayer/external/a/a;->c:Landroidx/media2/exoplayer/external/ae;

    invoke-interface {p2}, Landroidx/media2/exoplayer/external/ae;->k()Landroidx/media2/exoplayer/external/al;

    move-result-object p2

    .line 654
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 656
    :cond_3
    sget-object p2, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    :goto_1
    const/4 v0, 0x0

    .line 655
    invoke-direct {p0, p2, p1, v0}, Landroidx/media2/exoplayer/external/a/a;->a(Landroidx/media2/exoplayer/external/al;ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method private m()Landroidx/media2/exoplayer/external/a/b$a;
    .locals 1

    .line 629
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 7705
    iget-object v0, v0, Landroidx/media2/exoplayer/external/a/a$b;->d:Landroidx/media2/exoplayer/external/a/a$a;

    .line 629
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/a/a;->a(Landroidx/media2/exoplayer/external/a/a$a;)Landroidx/media2/exoplayer/external/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method private n()Landroidx/media2/exoplayer/external/a/b$a;
    .locals 1

    .line 637
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 7714
    iget-object v0, v0, Landroidx/media2/exoplayer/external/a/a$b;->e:Landroidx/media2/exoplayer/external/a/a$a;

    .line 637
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/a/a;->a(Landroidx/media2/exoplayer/external/a/a$a;)Landroidx/media2/exoplayer/external/a/b$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 491
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a/a;->l()Landroidx/media2/exoplayer/external/a/b$a;

    .line 492
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 482
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 3764
    iget-object v0, p1, Landroidx/media2/exoplayer/external/a/a$b;->c:Landroidx/media2/exoplayer/external/a/a$a;

    iput-object v0, p1, Landroidx/media2/exoplayer/external/a/a$b;->d:Landroidx/media2/exoplayer/external/a/a$a;

    .line 483
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a/a;->l()Landroidx/media2/exoplayer/external/a/b$a;

    .line 484
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IIIF)V
    .locals 0

    .line 303
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 304
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 0

    .line 269
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->m()Landroidx/media2/exoplayer/external/a/b$a;

    .line 270
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 0

    .line 196
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 197
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILandroidx/media2/exoplayer/external/source/t$a;)V
    .locals 5

    .line 322
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 1795
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->f:Landroidx/media2/exoplayer/external/al;

    iget-object v2, p2, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1796
    :goto_0
    new-instance v4, Landroidx/media2/exoplayer/external/a/a$a;

    if-eqz v1, :cond_1

    .line 1797
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->f:Landroidx/media2/exoplayer/external/al;

    goto :goto_1

    :cond_1
    sget-object v1, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    :goto_1
    invoke-direct {v4, p2, v1, p1}, Landroidx/media2/exoplayer/external/a/a$a;-><init>(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/al;I)V

    .line 1798
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1800
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/a/a$a;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->c:Landroidx/media2/exoplayer/external/a/a$a;

    .line 1801
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->f:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1802
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->c:Landroidx/media2/exoplayer/external/a/a$a;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->d:Landroidx/media2/exoplayer/external/a/a$a;

    .line 323
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/a/a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    .line 324
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final a(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/a/a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    .line 346
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;Ljava/io/IOException;Z)V
    .locals 0

    .line 383
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/a/a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    .line 384
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 0

    .line 410
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/a/a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    .line 411
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    .line 287
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 288
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .locals 1

    .line 474
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->m()Landroidx/media2/exoplayer/external/a/b$a;

    .line 475
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/Format;)V
    .locals 1

    .line 261
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 262
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/al;I)V
    .locals 4

    .line 424
    iget-object p2, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    const/4 v0, 0x0

    .line 2769
    :goto_0
    iget-object v1, p2, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2770
    iget-object v1, p2, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    .line 2771
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/a/a$a;

    invoke-virtual {p2, v1, p1}, Landroidx/media2/exoplayer/external/a/a$b;->a(Landroidx/media2/exoplayer/external/a/a$a;Landroidx/media2/exoplayer/external/al;)Landroidx/media2/exoplayer/external/a/a$a;

    move-result-object v1

    .line 2772
    iget-object v2, p2, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2773
    iget-object v2, p2, Landroidx/media2/exoplayer/external/a/a$b;->b:Ljava/util/HashMap;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/a/a$a;->a:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2775
    :cond_0
    iget-object v0, p2, Landroidx/media2/exoplayer/external/a/a$b;->e:Landroidx/media2/exoplayer/external/a/a$a;

    if-eqz v0, :cond_1

    .line 2776
    iget-object v0, p2, Landroidx/media2/exoplayer/external/a/a$b;->e:Landroidx/media2/exoplayer/external/a/a$a;

    invoke-virtual {p2, v0, p1}, Landroidx/media2/exoplayer/external/a/a$b;->a(Landroidx/media2/exoplayer/external/a/a$a;Landroidx/media2/exoplayer/external/al;)Landroidx/media2/exoplayer/external/a/a$a;

    move-result-object v0

    iput-object v0, p2, Landroidx/media2/exoplayer/external/a/a$b;->e:Landroidx/media2/exoplayer/external/a/a$a;

    .line 2778
    :cond_1
    iput-object p1, p2, Landroidx/media2/exoplayer/external/a/a$b;->f:Landroidx/media2/exoplayer/external/al;

    .line 2779
    iget-object p1, p2, Landroidx/media2/exoplayer/external/a/a$b;->c:Landroidx/media2/exoplayer/external/a/a$a;

    iput-object p1, p2, Landroidx/media2/exoplayer/external/a/a$b;->d:Landroidx/media2/exoplayer/external/a/a$a;

    .line 425
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a/a;->l()Landroidx/media2/exoplayer/external/a/b$a;

    .line 426
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 1

    .line 243
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a/a;->l()Landroidx/media2/exoplayer/external/a/b$a;

    .line 244
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a/a;->l()Landroidx/media2/exoplayer/external/a/b$a;

    .line 159
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/trackselection/f;)V
    .locals 1

    .line 434
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a/a;->l()Landroidx/media2/exoplayer/external/a/b$a;

    .line 435
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 0

    .line 252
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 253
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 442
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a/a;->l()Landroidx/media2/exoplayer/external/a/b$a;

    .line 443
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ZI)V
    .locals 0

    .line 450
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a/a;->l()Landroidx/media2/exoplayer/external/a/b$a;

    .line 451
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 499
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 4737
    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/a/a$b;->g:Z

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    const/4 v1, 0x0

    .line 4789
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->g:Z

    .line 4790
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->c:Landroidx/media2/exoplayer/external/a/a$a;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->d:Landroidx/media2/exoplayer/external/a/a$a;

    .line 501
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a/a;->l()Landroidx/media2/exoplayer/external/a/b$a;

    .line 502
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 216
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 217
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(ILandroidx/media2/exoplayer/external/source/t$a;)V
    .locals 3

    .line 331
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/a/a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    .line 332
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 1811
    iget-object v0, p1, Landroidx/media2/exoplayer/external/a/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/a/a$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1816
    :cond_0
    iget-object v2, p1, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1817
    iget-object v0, p1, Landroidx/media2/exoplayer/external/a/a$b;->e:Landroidx/media2/exoplayer/external/a/a$a;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/media2/exoplayer/external/a/a$b;->e:Landroidx/media2/exoplayer/external/a/a$a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/a/a$a;->a:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/source/t$a;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1818
    iget-object p2, p1, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p2, p1, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/a/a$a;

    :goto_0
    iput-object p2, p1, Landroidx/media2/exoplayer/external/a/a$b;->e:Landroidx/media2/exoplayer/external/a/a$a;

    .line 1820
    :cond_2
    iget-object p2, p1, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1821
    iget-object p2, p1, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/a/a$a;

    iput-object p2, p1, Landroidx/media2/exoplayer/external/a/a$b;->c:Landroidx/media2/exoplayer/external/a/a$a;

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 333
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final b(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 0

    .line 357
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/a/a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    .line 358
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/Format;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 188
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 1

    .line 279
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->m()Landroidx/media2/exoplayer/external/a/b$a;

    .line 280
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 0

    .line 178
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 179
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 224
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 225
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(ILandroidx/media2/exoplayer/external/source/t$a;)V
    .locals 2

    .line 391
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 1828
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/a/a$a;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->e:Landroidx/media2/exoplayer/external/a/a$a;

    .line 392
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/a/a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    .line 393
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 0

    .line 369
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/a/a;->d(ILandroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/b$a;

    .line 370
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/a/a;->l()Landroidx/media2/exoplayer/external/a/b$a;

    .line 170
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 232
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 233
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 1

    .line 206
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->m()Landroidx/media2/exoplayer/external/a/b$a;

    .line 207
    iget-object p1, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 312
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 313
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 5641
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 5724
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5726
    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/a/a$a;

    .line 5641
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/a/a;->a(Landroidx/media2/exoplayer/external/a/a$a;)Landroidx/media2/exoplayer/external/a/b$a;

    .line 513
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 2

    .line 522
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 523
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 530
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 531
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    .line 538
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 539
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    .line 546
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->n()Landroidx/media2/exoplayer/external/a/b$a;

    .line 547
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 2

    .line 562
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/a/a;->m()Landroidx/media2/exoplayer/external/a/b$a;

    .line 563
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l()Landroidx/media2/exoplayer/external/a/b$a;
    .locals 1

    .line 633
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/a/a$b;->a()Landroidx/media2/exoplayer/external/a/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/a/a;->a(Landroidx/media2/exoplayer/external/a/a$a;)Landroidx/media2/exoplayer/external/a/b$a;

    move-result-object v0

    return-object v0
.end method
