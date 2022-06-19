.class public Ltc1;
.super Lgc1;
.source ""


# instance fields
.field public final b:[Lid1;

.field public final c:[Lrc1;

.field public final d:Lsc1;

.field public final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Lgc1;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    new-instance v1, Lhc1;

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    invoke-direct {v1, v0, p1}, Lhc1;-><init>(FF)V

    iput-object v1, p0, Lgc1;->a:Lhc1;

    new-instance p1, Lsc1;

    invoke-direct {p1}, Lsc1;-><init>()V

    iput-object p1, p0, Ltc1;->d:Lsc1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltc1;->e:Z

    const/16 v0, 0x9

    new-array v0, v0, [Lid1;

    new-instance v1, Ldc1;

    iget-object v2, p0, Lgc1;->a:Lhc1;

    invoke-direct {v1, v2}, Ldc1;-><init>(Lhc1;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ldd1;

    iget-object v3, p0, Lgc1;->a:Lhc1;

    invoke-direct {v1, v3}, Ldd1;-><init>(Lhc1;)V

    aput-object v1, v0, p1

    new-instance v1, Lkc1;

    invoke-direct {v1, v3}, Lkc1;-><init>(Lhc1;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Loc1;

    invoke-direct {v1, v3}, Loc1;-><init>(Lhc1;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lmc1;

    invoke-direct {v1, v3}, Lmc1;-><init>(Lhc1;)V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lcc1;

    invoke-direct {v1, v3}, Lcc1;-><init>(Lhc1;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lbd1;

    iget-object v3, p0, Lgc1;->a:Lhc1;

    invoke-direct {v1, v3}, Lbd1;-><init>(Lhc1;)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Luc1;

    iget-object v3, p0, Lgc1;->a:Lhc1;

    invoke-direct {v1, v3}, Luc1;-><init>(Lhc1;)V

    const/4 v5, 0x7

    aput-object v1, v0, v5

    new-instance v1, Lic1;

    invoke-direct {v1, v3}, Lic1;-><init>(Lhc1;)V

    const/16 v5, 0x8

    aput-object v1, v0, v5

    iput-object v0, p0, Ltc1;->b:[Lid1;

    new-array v0, v4, [Lrc1;

    new-instance v1, Lxc1;

    invoke-direct {v1, v3}, Lxc1;-><init>(Lhc1;)V

    aput-object v1, v0, v2

    new-instance v1, Lzc1;

    invoke-direct {v1, v3}, Lzc1;-><init>(Lhc1;)V

    aput-object v1, v0, p1

    iput-object v0, p0, Ltc1;->c:[Lrc1;

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object v0, p0, Ltc1;->b:[Lid1;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Lgc1;->a(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltc1;->c:[Lrc1;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lgc1;->a(Landroid/hardware/SensorEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Ltc1;->c(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 9

    iget-object v0, p0, Lgc1;->a:Lhc1;

    invoke-virtual {v0, p1}, Lhc1;->d(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Ltc1;->b:[Lid1;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Lgc1;->b(Landroid/view/MotionEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltc1;->c:[Lrc1;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Lgc1;->b(Landroid/view/MotionEvent;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lgc1;->a:Lhc1;

    invoke-virtual {v0}, Lhc1;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x0

    if-ge v1, v0, :cond_3

    iget-object v4, p0, Lgc1;->a:Lhc1;

    invoke-virtual {v4}, Lhc1;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhd1;

    iget-object v5, p0, Ltc1;->b:[Lid1;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-virtual {v8, v4}, Lid1;->c(Lhd1;)F

    move-result v8

    add-float/2addr v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    iget-object v4, p0, Ltc1;->d:Lsc1;

    invoke-virtual {v4, v3}, Lsc1;->b(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    :cond_4
    iget-object v0, p0, Ltc1;->c:[Lrc1;

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_5

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lrc1;->c()F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Ltc1;->d:Lsc1;

    invoke-virtual {v0, v3}, Lsc1;->a(F)V

    :cond_6
    iget-object v0, p0, Lgc1;->a:Lhc1;

    invoke-virtual {v0, p1}, Lhc1;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Ltc1;->e:Z

    return v0
.end method
