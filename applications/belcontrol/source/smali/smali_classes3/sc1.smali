.class public Lsc1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsc1$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsc1$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsc1$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsc1;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsc1;->b:Ljava/util/ArrayList;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lsc1;->c:J

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    invoke-virtual {p0}, Lsc1;->c()V

    iget-object v0, p0, Lsc1;->b:Ljava/util/ArrayList;

    new-instance v1, Lsc1$a;

    invoke-direct {v1, p1}, Lsc1$a;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(F)V
    .locals 2

    invoke-virtual {p0}, Lsc1;->c()V

    iget-object v0, p0, Lsc1;->a:Ljava/util/ArrayList;

    new-instance v1, Lsc1$a;

    invoke-direct {v1, p1}, Lsc1$a;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lsc1;->c:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    const-wide v4, 0x3fecccccc0000000L    # 0.8999999761581421

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lsc1;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v2}, Lsc1;->d(Ljava/util/ArrayList;F)V

    iget-object v3, p0, Lsc1;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v2}, Lsc1;->d(Ljava/util/ArrayList;F)V

    iput-wide v0, p0, Lsc1;->c:J

    return-void
.end method

.method public final d(Ljava/util/ArrayList;F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lsc1$a;",
            ">;F)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsc1$a;

    iget v4, v3, Lsc1$a;->a:F

    mul-float v4, v4, p2

    iput v4, v3, Lsc1$a;->a:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsc1$a;

    iget p2, p2, Lsc1$a;->a:F

    invoke-virtual {p0, p2}, Lsc1;->e(F)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final e(F)Z
    .locals 1

    const v0, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const v0, -0x48d83a54    # -1.0E-5f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
