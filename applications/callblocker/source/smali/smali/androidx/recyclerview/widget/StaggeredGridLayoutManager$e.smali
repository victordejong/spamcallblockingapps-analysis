.class Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field final e:I

.field final synthetic f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 2515
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    .line 2510
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    .line 2511
    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2512
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I

    .line 2516
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    .line 2517
    return-void
.end method


# virtual methods
.method a(I)I
    .locals 2

    .prologue
    .line 2520
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2521
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    .line 2527
    :cond_0
    :goto_0
    return p1

    .line 2523
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2526
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a()V

    .line 2527
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    goto :goto_0
.end method

.method a(IIZ)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2793
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(IIZZZ)I

    move-result v0

    return v0
.end method

.method a(IIZZZ)I
    .locals 8

    .prologue
    .line 2756
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->c()I

    move-result v4

    .line 2757
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->d()I

    move-result v5

    .line 2758
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 2759
    :goto_0
    if-eq p1, p2, :cond_b

    .line 2760
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2761
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v6

    .line 2762
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v7

    .line 2763
    if-eqz p5, :cond_2

    if-gt v6, v5, :cond_1

    const/4 v2, 0x1

    move v3, v2

    .line 2765
    :goto_1
    if-eqz p5, :cond_5

    if-lt v7, v4, :cond_4

    const/4 v2, 0x1

    .line 2767
    :goto_2
    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 2768
    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 2770
    if-lt v6, v4, :cond_a

    if-gt v7, v5, :cond_a

    .line 2771
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 2783
    :goto_3
    return v0

    .line 2758
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 2763
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    :cond_2
    if-ge v6, v5, :cond_3

    const/4 v2, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    .line 2765
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    if-le v7, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 2773
    :cond_7
    if-eqz p4, :cond_8

    .line 2775
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_3

    .line 2776
    :cond_8
    if-lt v6, v4, :cond_9

    if-le v7, v5, :cond_a

    .line 2779
    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    goto :goto_3

    .line 2759
    :cond_a
    add-int/2addr p1, v1

    goto :goto_0

    .line 2783
    :cond_b
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public a(II)Landroid/view/View;
    .locals 5

    .prologue
    .line 2801
    const/4 v1, 0x0

    .line 2802
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 2803
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2804
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 2805
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2806
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    if-le v4, p1, :cond_1

    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 2807
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v4

    if-lt v4, p1, :cond_2

    :cond_1
    move-object v0, v1

    .line 2830
    :goto_1
    return-object v0

    .line 2810
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2804
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    .line 2817
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    .line 2818
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2819
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    if-ge v3, p1, :cond_6

    :cond_4
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 2820
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d(Landroid/view/View;)I

    move-result v3

    if-gt v3, p1, :cond_5

    move-object v0, v1

    .line 2821
    goto :goto_1

    .line 2823
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2817
    add-int/lit8 v2, v2, -0x1

    move-object v1, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method a()V
    .locals 3

    .prologue
    .line 2531
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2532
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    .line 2533
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/k;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    .line 2534
    iget-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_0

    .line 2535
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 2536
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    .line 2537
    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2538
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    .line 2541
    :cond_0
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2587
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 2588
    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    .line 2589
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2590
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    .line 2591
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2592
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2594
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2595
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I

    .line 2597
    :cond_2
    return-void
.end method

.method a(ZI)V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 2615
    if-eqz p1, :cond_1

    .line 2616
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b(I)I

    move-result v0

    .line 2620
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e()V

    .line 2621
    if-ne v0, v2, :cond_2

    .line 2632
    :cond_0
    :goto_1
    return-void

    .line 2618
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(I)I

    move-result v0

    goto :goto_0

    .line 2624
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    .line 2625
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k;->c()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2628
    :cond_4
    if-eq p2, v2, :cond_5

    .line 2629
    add-int/2addr v0, p2

    .line 2631
    :cond_5
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    goto :goto_1
.end method

.method b()I
    .locals 2

    .prologue
    .line 2545
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2546
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    .line 2549
    :goto_0
    return v0

    .line 2548
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a()V

    .line 2549
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    goto :goto_0
.end method

.method b(I)I
    .locals 2

    .prologue
    .line 2553
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2554
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2561
    :cond_0
    :goto_0
    return p1

    .line 2556
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2557
    if-eqz v0, :cond_0

    .line 2560
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c()V

    .line 2561
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    goto :goto_0
.end method

.method b(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2600
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    move-result-object v0

    .line 2601
    iput-object p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    .line 2602
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2604
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2605
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    .line 2607
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2608
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I

    .line 2610
    :cond_2
    return-void
.end method

.method c(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
    .locals 1

    .prologue
    .line 2681
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    return-object v0
.end method

.method c()V
    .locals 3

    .prologue
    .line 2565
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2566
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    .line 2567
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/k;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2568
    iget-boolean v0, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Z

    if-eqz v0, :cond_0

    .line 2569
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 2570
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;

    move-result-object v0

    .line 2571
    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2572
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->e:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c$a;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2575
    :cond_0
    return-void
.end method

.method c(I)V
    .locals 0

    .prologue
    .line 2646
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2647
    return-void
.end method

.method d()I
    .locals 2

    .prologue
    .line 2579
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2580
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2583
    :goto_0
    return v0

    .line 2582
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c()V

    .line 2583
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    goto :goto_0
.end method

.method d(I)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 2685
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    if-eq v0, v1, :cond_0

    .line 2686
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    .line 2688
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    if-eq v0, v1, :cond_1

    .line 2689
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2691
    :cond_1
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 2635
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2636
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f()V

    .line 2637
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I

    .line 2638
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2641
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    .line 2642
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2643
    return-void
.end method

.method g()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 2650
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2651
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2652
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    move-result-object v2

    .line 2653
    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    .line 2654
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2655
    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I

    .line 2657
    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 2658
    iput v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    .line 2660
    :cond_2
    iput v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2661
    return-void
.end method

.method h()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2664
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2665
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    move-result-object v1

    .line 2666
    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    .line 2667
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2668
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->c:I

    .line 2670
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2671
    :cond_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:Landroidx/recyclerview/widget/k;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/k;->e(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I

    .line 2673
    :cond_2
    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->b:I

    .line 2674
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 2677
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->d:I

    return v0
.end method

.method public j()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2700
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    .line 2701
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(IIZ)I

    move-result v0

    .line 2700
    :goto_0
    return v0

    .line 2701
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    .line 2702
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(IIZ)I

    move-result v0

    goto :goto_0
.end method

.method public k()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2718
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    .line 2719
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(IIZ)I

    move-result v0

    .line 2718
    :goto_0
    return v0

    .line 2719
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    .line 2720
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a(IIZ)I

    move-result v0

    goto :goto_0
.end method
