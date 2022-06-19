.class Landroidx/appcompat/b/a/a$b;
.super Landroidx/appcompat/b/a/d$a;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/d",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroidx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/h",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/appcompat/b/a/a$b;Landroidx/appcompat/b/a/a;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 634
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/b/a/d$a;-><init>(Landroidx/appcompat/b/a/d$a;Landroidx/appcompat/b/a/d;Landroid/content/res/Resources;)V

    .line 635
    if-eqz p1, :cond_0

    .line 637
    iget-object v0, p1, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    iput-object v0, p0, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    .line 638
    iget-object v0, p1, Landroidx/appcompat/b/a/a$b;->b:Landroidx/b/h;

    iput-object v0, p0, Landroidx/appcompat/b/a/a$b;->b:Landroidx/b/h;

    .line 643
    :goto_0
    return-void

    .line 640
    :cond_0
    new-instance v0, Landroidx/b/d;

    invoke-direct {v0}, Landroidx/b/d;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    .line 641
    new-instance v0, Landroidx/b/h;

    invoke-direct {v0}, Landroidx/b/h;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/b/a/a$b;->b:Landroidx/b/h;

    goto :goto_0
.end method

.method private static f(II)J
    .locals 4

    .prologue
    .line 712
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method a(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 681
    if-gez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/b/a/a$b;->b:Landroidx/b/h;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method a(II)I
    .locals 6

    .prologue
    .line 685
    invoke-static {p1, p2}, Landroidx/appcompat/b/a/a$b;->f(II)J

    move-result-wide v0

    .line 686
    iget-object v2, p0, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method a(IILandroid/graphics/drawable/Drawable;Z)I
    .locals 10

    .prologue
    .line 652
    invoke-super {p0, p3}, Landroidx/appcompat/b/a/d$a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 653
    invoke-static {p1, p2}, Landroidx/appcompat/b/a/a$b;->f(II)J

    move-result-wide v4

    .line 654
    const-wide/16 v0, 0x0

    .line 655
    if-eqz p4, :cond_0

    .line 656
    const-wide v0, 0x200000000L

    .line 658
    :cond_0
    iget-object v3, p0, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    int-to-long v6, v2

    or-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroidx/b/d;->c(JLjava/lang/Object;)V

    .line 659
    if-eqz p4, :cond_1

    .line 660
    invoke-static {p2, p1}, Landroidx/appcompat/b/a/a$b;->f(II)J

    move-result-wide v4

    .line 661
    iget-object v3, p0, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    int-to-long v6, v2

    const-wide v8, 0x100000000L

    or-long/2addr v6, v8

    or-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroidx/b/d;->c(JLjava/lang/Object;)V

    .line 663
    :cond_1
    return v2
.end method

.method a([I)I
    .locals 1

    .prologue
    .line 673
    invoke-super {p0, p1}, Landroidx/appcompat/b/a/d$a;->b([I)I

    move-result v0

    .line 674
    if-ltz v0, :cond_0

    .line 677
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {p0, v0}, Landroidx/appcompat/b/a/d$a;->b([I)I

    move-result v0

    goto :goto_0
.end method

.method a([ILandroid/graphics/drawable/Drawable;I)I
    .locals 3

    .prologue
    .line 667
    invoke-super {p0, p1, p2}, Landroidx/appcompat/b/a/d$a;->a([ILandroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 668
    iget-object v1, p0, Landroidx/appcompat/b/a/a$b;->b:Landroidx/b/h;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/b/h;->b(ILjava/lang/Object;)V

    .line 669
    return v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    invoke-virtual {v0}, Landroidx/b/d;->a()Landroidx/b/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    .line 648
    iget-object v0, p0, Landroidx/appcompat/b/a/a$b;->b:Landroidx/b/h;

    invoke-virtual {v0}, Landroidx/b/h;->a()Landroidx/b/h;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/b/a/a$b;->b:Landroidx/b/h;

    .line 649
    return-void
.end method

.method b(II)Z
    .locals 6

    .prologue
    .line 690
    invoke-static {p1, p2}, Landroidx/appcompat/b/a/a$b;->f(II)J

    move-result-wide v0

    .line 691
    iget-object v2, p0, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x100000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(II)Z
    .locals 6

    .prologue
    .line 695
    invoke-static {p1, p2}, Landroidx/appcompat/b/a/a$b;->f(II)J

    move-result-wide v0

    .line 696
    iget-object v2, p0, Landroidx/appcompat/b/a/a$b;->a:Landroidx/b/d;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroidx/b/d;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x200000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 702
    new-instance v0, Landroidx/appcompat/b/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/b/a/a;-><init>(Landroidx/appcompat/b/a/a$b;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 708
    new-instance v0, Landroidx/appcompat/b/a/a;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/b/a/a;-><init>(Landroidx/appcompat/b/a/a$b;Landroid/content/res/Resources;)V

    return-object v0
.end method
