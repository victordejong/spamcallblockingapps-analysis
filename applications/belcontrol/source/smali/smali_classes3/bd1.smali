.class public Lbd1;
.super Lid1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbd1$a;
    }
.end annotation


# instance fields
.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lhd1;",
            "Lbd1$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhc1;)V
    .locals 1

    invoke-direct {p0}, Lid1;-><init>()V

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    iput-object v0, p0, Lbd1;->b:Ljava/util/Map;

    iput-object p1, p0, Lgc1;->a:Lhc1;

    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lbd1;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lgc1;->a:Lhc1;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lhc1;->c(I)Lhd1;

    move-result-object v2

    iget-object v3, p0, Lbd1;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lbd1;->b:Ljava/util/Map;

    new-instance v4, Lbd1$a;

    invoke-direct {v4}, Lbd1$a;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-eq v1, v4, :cond_3

    :cond_2
    iget-object v4, p0, Lbd1;->b:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbd1$a;

    invoke-virtual {v2}, Lhd1;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2}, Lhd1;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwc1;

    invoke-virtual {v4, v2}, Lbd1$a;->a(Lwc1;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public c(Lhd1;)F
    .locals 1

    iget-object v0, p0, Lbd1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbd1$a;

    invoke-virtual {p1}, Lbd1$a;->c()F

    move-result v0

    invoke-static {v0}, Lgd1;->a(F)F

    move-result v0

    invoke-virtual {p1}, Lbd1$a;->b()F

    move-result p1

    invoke-static {p1}, Lcd1;->a(F)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method
