.class public Ldc1;
.super Lid1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc1$a;
    }
.end annotation


# instance fields
.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lhd1;",
            "Ldc1$a;",
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

    iput-object v0, p0, Ldc1;->b:Ljava/util/Map;

    iput-object p1, p0, Lgc1;->a:Lhc1;

    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldc1;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lgc1;->a:Lhc1;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lhc1;->c(I)Lhd1;

    move-result-object v1

    iget-object v2, p0, Ldc1;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ldc1;->b:Ljava/util/Map;

    new-instance v3, Ldc1$a;

    invoke-direct {v3}, Ldc1$a;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Ldc1;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc1$a;

    invoke-virtual {v1}, Lhd1;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Lhd1;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwc1;

    invoke-virtual {v2, v1}, Ldc1$a;->a(Lwc1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Lhd1;)F
    .locals 1

    iget-object v0, p0, Ldc1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldc1$a;

    invoke-virtual {p1}, Ldc1$a;->c()F

    move-result v0

    invoke-static {v0}, Lfc1;->a(F)F

    move-result v0

    invoke-virtual {p1}, Ldc1$a;->b()F

    move-result p1

    invoke-static {p1}, Lec1;->a(F)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method
