.class public final Lcom/google/android/material/k/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/k/o$c;,
        Lcom/google/android/material/k/o$d;,
        Lcom/google/android/material/k/o$e;,
        Lcom/google/android/material/k/o$a;,
        Lcom/google/android/material/k/o$b;,
        Lcom/google/android/material/k/o$f;
    }
.end annotation


# instance fields
.field public a:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field g:Z

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/k/o$e;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/k/o$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/k/o;->h:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/k/o;->i:Ljava/util/List;

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/k/o;->a(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/k/o;->h:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/k/o;->i:Ljava/util/List;

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/k/o;->a(FF)V

    return-void
.end method

.method private a(F)V
    .locals 4

    .line 6327
    iget v0, p0, Lcom/google/android/material/k/o;->e:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return-void

    .line 302
    :cond_1
    new-instance v1, Lcom/google/android/material/k/o$c;

    .line 8319
    iget v2, p0, Lcom/google/android/material/k/o;->c:F

    .line 8323
    iget v3, p0, Lcom/google/android/material/k/o;->d:F

    .line 303
    invoke-direct {v1, v2, v3, v2, v3}, Lcom/google/android/material/k/o$c;-><init>(FFFF)V

    .line 9327
    iget v2, p0, Lcom/google/android/material/k/o;->e:F

    .line 304
    invoke-static {v1, v2}, Lcom/google/android/material/k/o$c;->a(Lcom/google/android/material/k/o$c;F)V

    .line 305
    invoke-static {v1, v0}, Lcom/google/android/material/k/o$c;->b(Lcom/google/android/material/k/o$c;F)V

    .line 306
    iget-object v0, p0, Lcom/google/android/material/k/o;->i:Ljava/util/List;

    new-instance v2, Lcom/google/android/material/k/o$a;

    invoke-direct {v2, v1}, Lcom/google/android/material/k/o$a;-><init>(Lcom/google/android/material/k/o$c;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9351
    iput p1, p0, Lcom/google/android/material/k/o;->e:F

    return-void
.end method

.method private a(Lcom/google/android/material/k/o$f;FF)V
    .locals 0

    .line 275
    invoke-direct {p0, p2}, Lcom/google/android/material/k/o;->a(F)V

    .line 276
    iget-object p2, p0, Lcom/google/android/material/k/o;->i:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5351
    iput p3, p0, Lcom/google/android/material/k/o;->e:F

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Matrix;)Lcom/google/android/material/k/o$f;
    .locals 2

    .line 5331
    iget v0, p0, Lcom/google/android/material/k/o;->f:F

    .line 255
    invoke-direct {p0, v0}, Lcom/google/android/material/k/o;->a(F)V

    .line 256
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 257
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/k/o;->i:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    new-instance v1, Lcom/google/android/material/k/o$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/material/k/o$1;-><init>(Lcom/google/android/material/k/o;Ljava/util/List;Landroid/graphics/Matrix;)V

    return-object v1
.end method

.method public final a(FF)V
    .locals 2

    const/high16 v0, 0x43870000    # 270.0f

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/k/o;->a(FFFF)V

    return-void
.end method

.method public final a(FFFF)V
    .locals 0

    .line 1335
    iput p1, p0, Lcom/google/android/material/k/o;->a:F

    .line 1339
    iput p2, p0, Lcom/google/android/material/k/o;->b:F

    .line 1343
    iput p1, p0, Lcom/google/android/material/k/o;->c:F

    .line 1347
    iput p2, p0, Lcom/google/android/material/k/o;->d:F

    .line 1351
    iput p3, p0, Lcom/google/android/material/k/o;->e:F

    add-float/2addr p3, p4

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p3, p1

    .line 1355
    iput p3, p0, Lcom/google/android/material/k/o;->f:F

    .line 118
    iget-object p1, p0, Lcom/google/android/material/k/o;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 119
    iget-object p1, p0, Lcom/google/android/material/k/o;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/google/android/material/k/o;->g:Z

    return-void
.end method

.method public final a(FFFFFF)V
    .locals 4

    .line 211
    new-instance v0, Lcom/google/android/material/k/o$c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/material/k/o$c;-><init>(FFFF)V

    .line 212
    invoke-static {v0, p5}, Lcom/google/android/material/k/o$c;->a(Lcom/google/android/material/k/o$c;F)V

    .line 213
    invoke-static {v0, p6}, Lcom/google/android/material/k/o$c;->b(Lcom/google/android/material/k/o$c;F)V

    .line 214
    iget-object v1, p0, Lcom/google/android/material/k/o;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Lcom/google/android/material/k/o$a;

    invoke-direct {v1, v0}, Lcom/google/android/material/k/o$a;-><init>(Lcom/google/android/material/k/o$c;)V

    add-float v0, p5, p6

    const/4 v2, 0x0

    cmpg-float p6, p6, v2

    if-gez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p6, :cond_1

    add-float/2addr p5, v3

    rem-float/2addr p5, v2

    :cond_1
    if-eqz p6, :cond_2

    add-float/2addr v3, v0

    rem-float/2addr v3, v2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 222
    :goto_1
    invoke-direct {p0, v1, p5, v3}, Lcom/google/android/material/k/o;->a(Lcom/google/android/material/k/o$f;FF)V

    add-float p5, p1, p3

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float p5, p5, p6

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    float-to-double v0, v0

    .line 229
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float p3, p3, v2

    add-float/2addr p5, p3

    .line 4343
    iput p5, p0, Lcom/google/android/material/k/o;->c:F

    add-float p3, p2, p4

    mul-float p3, p3, p6

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p4, p4, p1

    add-float/2addr p3, p4

    .line 4347
    iput p3, p0, Lcom/google/android/material/k/o;->d:F

    return-void
.end method

.method public final a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/google/android/material/k/o;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v2, p0, Lcom/google/android/material/k/o;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/k/o$e;

    .line 244
    invoke-virtual {v2, p1, p2}, Lcom/google/android/material/k/o$e;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(FF)V
    .locals 4

    .line 130
    new-instance v0, Lcom/google/android/material/k/o$d;

    invoke-direct {v0}, Lcom/google/android/material/k/o$d;-><init>()V

    .line 1446
    iput p1, v0, Lcom/google/android/material/k/o$d;->a:F

    .line 2446
    iput p2, v0, Lcom/google/android/material/k/o$d;->b:F

    .line 133
    iget-object v1, p0, Lcom/google/android/material/k/o;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/google/android/material/k/o$b;

    .line 3319
    iget v2, p0, Lcom/google/android/material/k/o;->c:F

    .line 3323
    iget v3, p0, Lcom/google/android/material/k/o;->d:F

    .line 135
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/k/o$b;-><init>(Lcom/google/android/material/k/o$d;FF)V

    .line 140
    invoke-virtual {v1}, Lcom/google/android/material/k/o$b;->a()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    .line 141
    invoke-virtual {v1}, Lcom/google/android/material/k/o$b;->a()F

    move-result v3

    add-float/2addr v3, v2

    .line 138
    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/material/k/o;->a(Lcom/google/android/material/k/o$f;FF)V

    .line 3343
    iput p1, p0, Lcom/google/android/material/k/o;->c:F

    .line 3347
    iput p2, p0, Lcom/google/android/material/k/o;->d:F

    return-void
.end method
