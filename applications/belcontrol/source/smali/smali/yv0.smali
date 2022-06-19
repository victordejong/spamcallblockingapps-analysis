.class public Lyv0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:F

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyv0;->a:Ljava/lang/String;

    iput p2, p0, Lyv0;->b:F

    iput p3, p0, Lyv0;->c:I

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/Float;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyv0;",
            ">;",
            "Ljava/lang/Float;",
            ")",
            "Ljava/util/List<",
            "Lzv0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    const/high16 v2, -0x3d4e0000    # -89.0f

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzv0;

    invoke-virtual {v2}, Lzv0;->b()F

    move-result v4

    invoke-virtual {v2}, Lzv0;->c()F

    move-result v2

    add-float/2addr v4, v2

    add-float v2, v4, v3

    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyv0;

    iget v5, v4, Lyv0;->b:F

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float v5, v5, v6

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float/2addr v5, v6

    sub-float/2addr v5, v3

    new-instance v3, Lzv0;

    iget-object v6, v4, Lyv0;->a:Ljava/lang/String;

    iget v4, v4, Lyv0;->c:I

    invoke-direct {v3, v6, v2, v5, v4}, Lzv0;-><init>(Ljava/lang/String;FFI)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
