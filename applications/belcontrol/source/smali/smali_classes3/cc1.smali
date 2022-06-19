.class public Lcc1;
.super Lid1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc1$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lhd1;",
            "Lcc1$a;",
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

    iput-object v0, p0, Lcc1;->b:Ljava/util/Map;

    iput-object p1, p0, Lgc1;->a:Lhc1;

    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcc1;->b:Ljava/util/Map;

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

    invoke-virtual {v1}, Lhd1;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lhd1;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwc1;

    iget-object v3, p0, Lcc1;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcc1;->b:Ljava/util/Map;

    new-instance v4, Lcc1$a;

    invoke-direct {v4, v2}, Lcc1$a;-><init>(Lwc1;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcc1;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc1$a;

    invoke-virtual {v1, v2}, Lcc1$a;->a(Lwc1;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Lhd1;)F
    .locals 1

    iget-object v0, p0, Lcc1;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcc1$a;

    iget p1, p1, Lcc1$a;->c:F

    invoke-static {p1}, Lfd1;->a(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method
