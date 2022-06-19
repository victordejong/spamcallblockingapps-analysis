.class public final Landroidx/constraintlayout/a/g;
.super Landroidx/constraintlayout/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/g$a;
    }
.end annotation


# instance fields
.field g:Landroidx/constraintlayout/a/g$a;

.field h:Landroidx/constraintlayout/a/c;

.field private i:I

.field private j:[Landroidx/constraintlayout/a/h;

.field private k:[Landroidx/constraintlayout/a/h;

.field private l:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/c;)V
    .locals 2

    .line 160
    invoke-direct {p0, p1}, Landroidx/constraintlayout/a/b;-><init>(Landroidx/constraintlayout/a/c;)V

    const/16 v0, 0x80

    .line 29
    iput v0, p0, Landroidx/constraintlayout/a/g;->i:I

    new-array v1, v0, [Landroidx/constraintlayout/a/h;

    .line 30
    iput-object v1, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    new-array v0, v0, [Landroidx/constraintlayout/a/h;

    .line 31
    iput-object v0, p0, Landroidx/constraintlayout/a/g;->k:[Landroidx/constraintlayout/a/h;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Landroidx/constraintlayout/a/g;->l:I

    .line 33
    new-instance v0, Landroidx/constraintlayout/a/g$a;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/a/g$a;-><init>(Landroidx/constraintlayout/a/g;Landroidx/constraintlayout/a/g;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/g;->g:Landroidx/constraintlayout/a/g$a;

    .line 161
    iput-object p1, p0, Landroidx/constraintlayout/a/g;->h:Landroidx/constraintlayout/a/c;

    return-void
.end method

.method private final e(Landroidx/constraintlayout/a/h;)V
    .locals 5

    .line 203
    iget v0, p0, Landroidx/constraintlayout/a/g;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    array-length v3, v2

    if-le v0, v3, :cond_0

    .line 204
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/a/h;

    iput-object v0, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    .line 205
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/a/h;

    iput-object v0, p0, Landroidx/constraintlayout/a/g;->k:[Landroidx/constraintlayout/a/h;

    .line 207
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    iget v2, p0, Landroidx/constraintlayout/a/g;->l:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    .line 208
    iput v2, p0, Landroidx/constraintlayout/a/g;->l:I

    if-le v2, v1, :cond_2

    sub-int/2addr v2, v1

    .line 210
    aget-object v0, v0, v2

    iget v0, v0, Landroidx/constraintlayout/a/h;->b:I

    iget v2, p1, Landroidx/constraintlayout/a/h;->b:I

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 211
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/a/g;->l:I

    if-ge v2, v3, :cond_1

    .line 212
    iget-object v3, p0, Landroidx/constraintlayout/a/g;->k:[Landroidx/constraintlayout/a/h;

    iget-object v4, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/a/g;->k:[Landroidx/constraintlayout/a/h;

    new-instance v4, Landroidx/constraintlayout/a/g$1;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/a/g$1;-><init>(Landroidx/constraintlayout/a/g;)V

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 220
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/a/g;->l:I

    if-ge v0, v2, :cond_2

    .line 221
    iget-object v2, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    iget-object v3, p0, Landroidx/constraintlayout/a/g;->k:[Landroidx/constraintlayout/a/h;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    :cond_2
    iput-boolean v1, p1, Landroidx/constraintlayout/a/h;->a:Z

    .line 226
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method private f(Landroidx/constraintlayout/a/h;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 230
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/a/g;->l:I

    if-ge v1, v2, :cond_2

    .line 231
    iget-object v2, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 232
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/a/g;->l:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 233
    iget-object v2, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 235
    iput v2, p0, Landroidx/constraintlayout/a/g;->l:I

    .line 236
    iput-boolean v0, p1, Landroidx/constraintlayout/a/h;->a:Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a([Z)Landroidx/constraintlayout/a/h;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 174
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/a/g;->l:I

    if-ge v2, v4, :cond_6

    .line 175
    iget-object v4, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    aget-object v4, v4, v2

    .line 176
    iget v5, v4, Landroidx/constraintlayout/a/h;->b:I

    aget-boolean v5, p1, v5

    if-nez v5, :cond_5

    .line 179
    iget-object v5, p0, Landroidx/constraintlayout/a/g;->g:Landroidx/constraintlayout/a/g$a;

    .line 1044
    iput-object v4, v5, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ne v3, v1, :cond_2

    .line 181
    iget-object v6, p0, Landroidx/constraintlayout/a/g;->g:Landroidx/constraintlayout/a/g$a;

    :goto_1
    if-ltz v4, :cond_1

    .line 1092
    iget-object v7, v6, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    iget-object v7, v7, Landroidx/constraintlayout/a/h;->h:[F

    aget v7, v7, v4

    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-gtz v9, :cond_1

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    goto :goto_5

    .line 184
    :cond_2
    iget-object v6, p0, Landroidx/constraintlayout/a/g;->g:Landroidx/constraintlayout/a/g$a;

    iget-object v7, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    aget-object v7, v7, v3

    :goto_3
    if-ltz v4, :cond_4

    .line 1105
    iget-object v8, v7, Landroidx/constraintlayout/a/h;->h:[F

    aget v8, v8, v4

    .line 1106
    iget-object v9, v6, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    iget-object v9, v9, Landroidx/constraintlayout/a/h;->h:[F

    aget v9, v9, v4

    cmpl-float v10, v9, v8

    if-eqz v10, :cond_3

    cmpg-float v4, v9, v8

    if-gez v4, :cond_4

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_5

    :goto_5
    move v3, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-ne v3, v1, :cond_7

    const/4 p1, 0x0

    return-object p1

    .line 191
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    aget-object p1, p1, v3

    return-object p1
.end method

.method public final a(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/b;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 244
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    if-nez v2, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v3, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    .line 250
    invoke-interface {v3}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_9

    .line 252
    invoke-interface {v3, v6}, Landroidx/constraintlayout/a/b$a;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object v7

    .line 253
    invoke-interface {v3, v6}, Landroidx/constraintlayout/a/b$a;->b(I)F

    move-result v8

    .line 254
    iget-object v9, v0, Landroidx/constraintlayout/a/g;->g:Landroidx/constraintlayout/a/g$a;

    .line 3044
    iput-object v7, v9, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    .line 255
    iget-object v9, v0, Landroidx/constraintlayout/a/g;->g:Landroidx/constraintlayout/a/g$a;

    .line 3048
    iget-object v10, v9, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    iget-boolean v10, v10, Landroidx/constraintlayout/a/h;->a:Z

    const v11, 0x38d1b717    # 1.0E-4f

    const/16 v12, 0x9

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_2

    .line 3051
    iget-object v15, v9, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    iget-object v15, v15, Landroidx/constraintlayout/a/h;->h:[F

    aget v16, v15, v10

    iget-object v5, v2, Landroidx/constraintlayout/a/h;->h:[F

    aget v5, v5, v10

    mul-float v5, v5, v8

    add-float v16, v16, v5

    aput v16, v15, v10

    .line 3052
    iget-object v5, v9, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    iget-object v5, v5, Landroidx/constraintlayout/a/h;->h:[F

    aget v5, v5, v10

    .line 3053
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v11

    if-gez v5, :cond_1

    .line 3054
    iget-object v5, v9, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    iget-object v5, v5, Landroidx/constraintlayout/a/h;->h:[F

    aput v13, v5, v10

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-eqz v14, :cond_3

    .line 3060
    iget-object v5, v9, Landroidx/constraintlayout/a/g$a;->c:Landroidx/constraintlayout/a/g;

    iget-object v9, v9, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    .line 4025
    invoke-direct {v5, v9}, Landroidx/constraintlayout/a/g;->f(Landroidx/constraintlayout/a/h;)V

    :cond_3
    const/4 v14, 0x0

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v12, :cond_7

    .line 3064
    iget-object v10, v2, Landroidx/constraintlayout/a/h;->h:[F

    aget v10, v10, v5

    cmpl-float v15, v10, v13

    if-eqz v15, :cond_6

    mul-float v10, v10, v8

    .line 3067
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v15, v15, v11

    if-gez v15, :cond_5

    const/4 v10, 0x0

    .line 3070
    :cond_5
    iget-object v15, v9, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    iget-object v15, v15, Landroidx/constraintlayout/a/h;->h:[F

    aput v10, v15, v5

    goto :goto_4

    .line 3072
    :cond_6
    iget-object v10, v9, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    iget-object v10, v10, Landroidx/constraintlayout/a/h;->h:[F

    aput v13, v10, v5

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    if-eqz v14, :cond_8

    .line 256
    invoke-direct {v0, v7}, Landroidx/constraintlayout/a/g;->e(Landroidx/constraintlayout/a/h;)V

    .line 258
    :cond_8
    iget v5, v0, Landroidx/constraintlayout/a/g;->b:F

    iget v7, v1, Landroidx/constraintlayout/a/b;->b:F

    mul-float v7, v7, v8

    add-float/2addr v5, v7

    iput v5, v0, Landroidx/constraintlayout/a/g;->b:F

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 260
    :cond_9
    invoke-direct {v0, v2}, Landroidx/constraintlayout/a/g;->f(Landroidx/constraintlayout/a/h;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 166
    iget v0, p0, Landroidx/constraintlayout/a/g;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Landroidx/constraintlayout/a/g;->l:I

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Landroidx/constraintlayout/a/g;->b:F

    return-void
.end method

.method public final d(Landroidx/constraintlayout/a/h;)V
    .locals 3

    .line 196
    iget-object v0, p0, Landroidx/constraintlayout/a/g;->g:Landroidx/constraintlayout/a/g$a;

    .line 2044
    iput-object p1, v0, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    .line 197
    iget-object v0, p0, Landroidx/constraintlayout/a/g;->g:Landroidx/constraintlayout/a/g$a;

    .line 2135
    iget-object v0, v0, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    iget-object v0, v0, Landroidx/constraintlayout/a/h;->h:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 198
    iget-object v0, p1, Landroidx/constraintlayout/a/h;->h:[F

    iget v1, p1, Landroidx/constraintlayout/a/h;->d:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 199
    invoke-direct {p0, p1}, Landroidx/constraintlayout/a/g;->e(Landroidx/constraintlayout/a/h;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " goal -> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/a/g;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 267
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/a/g;->l:I

    if-ge v1, v2, :cond_0

    .line 268
    iget-object v2, p0, Landroidx/constraintlayout/a/g;->j:[Landroidx/constraintlayout/a/h;

    aget-object v2, v2, v1

    .line 269
    iget-object v3, p0, Landroidx/constraintlayout/a/g;->g:Landroidx/constraintlayout/a/g$a;

    .line 4044
    iput-object v2, v3, Landroidx/constraintlayout/a/g$a;->a:Landroidx/constraintlayout/a/h;

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/a/g;->g:Landroidx/constraintlayout/a/g$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
