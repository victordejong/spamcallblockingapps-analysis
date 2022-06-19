.class public Lcom/google/android/material/q/m;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/q/m$c;,
        Lcom/google/android/material/q/m$d;,
        Lcom/google/android/material/q/m$e;,
        Lcom/google/android/material/q/m$a;,
        Lcom/google/android/material/q/m$b;,
        Lcom/google/android/material/q/m$f;
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

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/q/m$e;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/q/m$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/m;->g:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/q/m;->h:Ljava/util/List;

    .line 92
    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/q/m;->a(FF)V

    .line 93
    return-void
.end method

.method private a(F)V
    .locals 6

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 248
    invoke-direct {p0}, Lcom/google/android/material/q/m;->e()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/q/m;->e()F

    move-result v0

    sub-float v0, p1, v0

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 253
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 257
    new-instance v1, Lcom/google/android/material/q/m$c;

    .line 258
    invoke-virtual {p0}, Lcom/google/android/material/q/m;->c()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/q/m;->d()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/q/m;->c()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/q/m;->d()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/material/q/m$c;-><init>(FFFF)V

    .line 259
    invoke-direct {p0}, Lcom/google/android/material/q/m;->e()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/q/m$c;->a(Lcom/google/android/material/q/m$c;F)V

    .line 260
    invoke-static {v1, v0}, Lcom/google/android/material/q/m$c;->b(Lcom/google/android/material/q/m$c;F)V

    .line 261
    iget-object v0, p0, Lcom/google/android/material/q/m;->h:Ljava/util/List;

    new-instance v2, Lcom/google/android/material/q/m$a;

    invoke-direct {v2, v1}, Lcom/google/android/material/q/m$a;-><init>(Lcom/google/android/material/q/m$c;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/material/q/m;->f(F)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/material/q/m$f;FF)V
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0, p2}, Lcom/google/android/material/q/m;->a(F)V

    .line 239
    iget-object v0, p0, Lcom/google/android/material/q/m;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-direct {p0, p3}, Lcom/google/android/material/q/m;->f(F)V

    .line 241
    return-void
.end method

.method private b(F)V
    .locals 0

    .prologue
    .line 290
    iput p1, p0, Lcom/google/android/material/q/m;->a:F

    .line 291
    return-void
.end method

.method private c(F)V
    .locals 0

    .prologue
    .line 294
    iput p1, p0, Lcom/google/android/material/q/m;->b:F

    .line 295
    return-void
.end method

.method private d(F)V
    .locals 0

    .prologue
    .line 298
    iput p1, p0, Lcom/google/android/material/q/m;->c:F

    .line 299
    return-void
.end method

.method private e()F
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/google/android/material/q/m;->e:F

    return v0
.end method

.method private e(F)V
    .locals 0

    .prologue
    .line 302
    iput p1, p0, Lcom/google/android/material/q/m;->d:F

    .line 303
    return-void
.end method

.method private f()F
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/google/android/material/q/m;->f:F

    return v0
.end method

.method private f(F)V
    .locals 0

    .prologue
    .line 306
    iput p1, p0, Lcom/google/android/material/q/m;->e:F

    .line 307
    return-void
.end method

.method private g(F)V
    .locals 0

    .prologue
    .line 310
    iput p1, p0, Lcom/google/android/material/q/m;->f:F

    .line 311
    return-void
.end method


# virtual methods
.method a()F
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/google/android/material/q/m;->a:F

    return v0
.end method

.method a(Landroid/graphics/Matrix;)Lcom/google/android/material/q/m$f;
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/android/material/q/m;->f()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/q/m;->a(F)V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/q/m;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    new-instance v1, Lcom/google/android/material/q/m$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/material/q/m$1;-><init>(Lcom/google/android/material/q/m;Ljava/util/List;Landroid/graphics/Matrix;)V

    return-object v1
.end method

.method public a(FF)V
    .locals 2

    .prologue
    .line 104
    const/high16 v0, 0x43870000    # 270.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/q/m;->a(FFFF)V

    .line 105
    return-void
.end method

.method public a(FFFF)V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/material/q/m;->b(F)V

    .line 110
    invoke-direct {p0, p2}, Lcom/google/android/material/q/m;->c(F)V

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/material/q/m;->d(F)V

    .line 112
    invoke-direct {p0, p2}, Lcom/google/android/material/q/m;->e(F)V

    .line 113
    invoke-direct {p0, p3}, Lcom/google/android/material/q/m;->f(F)V

    .line 114
    add-float v0, p3, p4

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/material/q/m;->g(F)V

    .line 115
    iget-object v0, p0, Lcom/google/android/material/q/m;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lcom/google/android/material/q/m;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    return-void
.end method

.method public a(FFFFFF)V
    .locals 8

    .prologue
    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 175
    new-instance v0, Lcom/google/android/material/q/m$c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/material/q/m$c;-><init>(FFFF)V

    .line 176
    invoke-static {v0, p5}, Lcom/google/android/material/q/m$c;->a(Lcom/google/android/material/q/m$c;F)V

    .line 177
    invoke-static {v0, p6}, Lcom/google/android/material/q/m$c;->b(Lcom/google/android/material/q/m$c;F)V

    .line 178
    iget-object v1, p0, Lcom/google/android/material/q/m;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v3, Lcom/google/android/material/q/m$a;

    invoke-direct {v3, v0}, Lcom/google/android/material/q/m$a;-><init>(Lcom/google/android/material/q/m$c;)V

    .line 181
    add-float v0, p5, p6

    .line 185
    const/4 v1, 0x0

    cmpg-float v1, p6, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    move v2, v1

    .line 186
    :goto_0
    if-eqz v2, :cond_2

    add-float v1, v6, p5

    rem-float/2addr v1, v7

    :goto_1
    if-eqz v2, :cond_0

    add-float/2addr v0, v6

    rem-float/2addr v0, v7

    :cond_0
    invoke-direct {p0, v3, v1, v0}, Lcom/google/android/material/q/m;->a(Lcom/google/android/material/q/m$f;FF)V

    .line 191
    add-float v0, p1, p3

    mul-float/2addr v0, v4

    sub-float v1, p3, p1

    div-float/2addr v1, v5

    add-float v2, p5, p6

    float-to-double v2, v2

    .line 193
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 191
    invoke-direct {p0, v0}, Lcom/google/android/material/q/m;->d(F)V

    .line 194
    add-float v0, p2, p4

    mul-float/2addr v0, v4

    sub-float v1, p4, p2

    div-float/2addr v1, v5

    add-float v2, p5, p6

    float-to-double v2, v2

    .line 196
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 194
    invoke-direct {p0, v0}, Lcom/google/android/material/q/m;->e(F)V

    .line 197
    return-void

    .line 185
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, p5

    .line 186
    goto :goto_1
.end method

.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    .prologue
    .line 206
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/q/m;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/material/q/m;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/m$e;

    .line 208
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/q/m$e;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 206
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method b()F
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/google/android/material/q/m;->b:F

    return v0
.end method

.method public b(FF)V
    .locals 5

    .prologue
    const/high16 v4, 0x43870000    # 270.0f

    .line 126
    new-instance v0, Lcom/google/android/material/q/m$d;

    invoke-direct {v0}, Lcom/google/android/material/q/m$d;-><init>()V

    .line 127
    invoke-static {v0, p1}, Lcom/google/android/material/q/m$d;->a(Lcom/google/android/material/q/m$d;F)F

    .line 128
    invoke-static {v0, p2}, Lcom/google/android/material/q/m$d;->b(Lcom/google/android/material/q/m$d;F)F

    .line 129
    iget-object v1, p0, Lcom/google/android/material/q/m;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v1, Lcom/google/android/material/q/m$b;

    invoke-virtual {p0}, Lcom/google/android/material/q/m;->c()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/q/m;->d()F

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/q/m$b;-><init>(Lcom/google/android/material/q/m$d;FF)V

    .line 136
    invoke-virtual {v1}, Lcom/google/android/material/q/m$b;->a()F

    move-result v0

    add-float/2addr v0, v4

    .line 137
    invoke-virtual {v1}, Lcom/google/android/material/q/m$b;->a()F

    move-result v2

    add-float/2addr v2, v4

    .line 134
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/material/q/m;->a(Lcom/google/android/material/q/m$f;FF)V

    .line 139
    invoke-direct {p0, p1}, Lcom/google/android/material/q/m;->d(F)V

    .line 140
    invoke-direct {p0, p2}, Lcom/google/android/material/q/m;->e(F)V

    .line 141
    return-void
.end method

.method c()F
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/google/android/material/q/m;->c:F

    return v0
.end method

.method d()F
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/google/android/material/q/m;->d:F

    return v0
.end method
