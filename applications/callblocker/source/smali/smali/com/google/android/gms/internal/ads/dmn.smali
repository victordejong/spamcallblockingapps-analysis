.class final Lcom/google/android/gms/internal/ads/dmn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:[S

.field private g:I

.field private h:[S

.field private i:I

.field private j:[S

.field private k:I

.field private l:[S

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/dmn;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    .line 4
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->c:I

    .line 5
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->d:I

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmn;->f:[S

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->g:I

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->i:I

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->k:I

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmn;->l:[S

    .line 14
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmn;->m:I

    .line 15
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmn;->n:I

    .line 16
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmn;->u:I

    .line 17
    iput v2, p0, Lcom/google/android/gms/internal/ads/dmn;->o:F

    .line 18
    iput v2, p0, Lcom/google/android/gms/internal/ads/dmn;->p:F

    .line 19
    return-void
.end method

.method private final a([SIII)I
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 76
    .line 77
    const/16 v3, 0xff

    .line 78
    const/4 v5, 0x1

    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int v9, p2, v0

    move v4, p3

    move v2, v8

    move v6, v8

    .line 81
    :goto_0
    if-gt v4, p4, :cond_3

    move v7, v8

    move v1, v8

    .line 83
    :goto_1
    if-ge v7, v4, :cond_1

    .line 84
    add-int v0, v9, v7

    aget-short v0, p1, v0

    .line 85
    add-int v10, v9, v4

    add-int/2addr v10, v7

    aget-short v10, p1, v10

    .line 86
    if-lt v0, v10, :cond_0

    sub-int/2addr v0, v10

    :goto_2
    add-int/2addr v1, v0

    .line 87
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 86
    :cond_0
    sub-int v0, v10, v0

    goto :goto_2

    .line 88
    :cond_1
    mul-int v0, v1, v6

    mul-int v7, v5, v4

    if-ge v0, v7, :cond_2

    move v5, v1

    move v6, v4

    .line 91
    :cond_2
    mul-int v0, v1, v3

    mul-int v7, v2, v4

    if-le v0, v7, :cond_4

    move v0, v1

    move v3, v4

    .line 94
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v2, v0

    goto :goto_0

    .line 95
    :cond_3
    div-int v0, v5, v6

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->w:I

    .line 96
    div-int v0, v2, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->x:I

    .line 97
    return v6

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method private final a(I)V
    .locals 3

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->i:I

    if-le v0, v1, :cond_0

    .line 53
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->i:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->i:I

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->i:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    .line 55
    :cond_0
    return-void
.end method

.method private static a(II[SI[SI[SI)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 221
    move v5, v1

    :goto_0
    if-ge v5, p1, :cond_1

    .line 222
    mul-int v0, p3, p1

    add-int v4, v0, v5

    .line 223
    mul-int v0, p7, p1

    add-int v3, v0, v5

    .line 224
    mul-int v0, p5, p1

    add-int v2, v0, v5

    move v0, v1

    .line 225
    :goto_1
    if-ge v0, p0, :cond_0

    .line 226
    aget-short v6, p4, v2

    sub-int v7, p0, v0

    mul-int/2addr v6, v7

    aget-short v7, p6, v3

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v4

    .line 227
    add-int/2addr v4, p1

    .line 228
    add-int/2addr v2, p1

    .line 229
    add-int/2addr v3, p1

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 232
    :cond_1
    return-void
.end method

.method private final a([SII)V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/dmn;->a(I)V

    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v3, p3

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    .line 63
    return-void
.end method

.method private final b(I)V
    .locals 3

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->g:I

    if-le v0, v1, :cond_0

    .line 57
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->g:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->g:I

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    .line 59
    :cond_0
    return-void
.end method

.method private final b([SII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 64
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    div-int v4, v0, p3

    .line 65
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int v5, v0, p3

    .line 66
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int v6, p2, v0

    move v3, v1

    .line 67
    :goto_0
    if-ge v3, v4, :cond_1

    move v0, v1

    move v2, v1

    .line 69
    :goto_1
    if-ge v0, v5, :cond_0

    .line 70
    mul-int v7, v3, v5

    add-int/2addr v7, v6

    add-int/2addr v7, v0

    aget-short v7, p1, v7

    add-int/2addr v2, v7

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_0
    div-int v0, v2, v5

    .line 73
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmn;->f:[S

    int-to-short v0, v0

    aput-short v0, v2, v3

    .line 74
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method private final c()V
    .locals 20

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    move/from16 v17, v0

    .line 99
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->o:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->p:F

    div-float v18, v2, v3

    .line 100
    move/from16 v0, v18

    float-to-double v2, v0

    const-wide v4, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    move/from16 v0, v18

    float-to-double v2, v0

    const-wide v4, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v2, v2, v4

    if-gez v2, :cond_10

    .line 102
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    if-lt v2, v3, :cond_2

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    move/from16 v19, v0

    .line 104
    const/4 v7, 0x0

    .line 105
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->t:I

    if-lez v2, :cond_4

    .line 107
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->t:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7, v2}, Lcom/google/android/gms/internal/ads/dmn;->a([SII)V

    .line 109
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->t:I

    sub-int/2addr v3, v2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/dmn;->t:I

    .line 111
    add-int/2addr v7, v2

    .line 168
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    add-int/2addr v2, v7

    move/from16 v0, v19

    if-le v2, v0, :cond_1

    .line 170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    sub-int/2addr v2, v7

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v4, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    .line 176
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->p:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_18

    .line 177
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->p:F

    .line 178
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    move/from16 v0, v17

    if-eq v3, v0, :cond_18

    .line 179
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->a:I

    int-to-float v3, v3

    div-float v2, v3, v2

    float-to-int v3, v2

    .line 180
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->a:I

    move v4, v2

    move v5, v3

    .line 181
    :goto_2
    const/16 v2, 0x4000

    if-gt v5, v2, :cond_3

    const/16 v2, 0x4000

    if-le v4, v2, :cond_11

    .line 182
    :cond_3
    div-int/lit8 v3, v5, 0x2

    .line 183
    div-int/lit8 v2, v4, 0x2

    move v4, v2

    move v5, v3

    goto :goto_2

    .line 112
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    .line 113
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->a:I

    const/16 v3, 0xfa0

    if-le v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->a:I

    div-int/lit16 v2, v2, 0xfa0

    .line 114
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->c:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->d:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v2, v3}, Lcom/google/android/gms/internal/ads/dmn;->a([SIII)I

    move-result v2

    .line 130
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->w:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dmn;->x:I

    .line 131
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/dmn;->u:I

    if-nez v5, :cond_9

    .line 132
    :cond_5
    const/4 v3, 0x0

    .line 139
    :goto_5
    if-eqz v3, :cond_c

    .line 140
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->u:I

    move/from16 v16, v3

    .line 142
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->w:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/dmn;->v:I

    .line 143
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->u:I

    .line 146
    move/from16 v0, v18

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_e

    .line 147
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    .line 148
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v18, v2

    if-ltz v2, :cond_d

    .line 149
    move/from16 v0, v16

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v18, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 152
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dmn;->a(I)V

    .line 153
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    add-int v9, v7, v16

    move-object v8, v6

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/dmn;->a(II[SI[SI[SI)V

    .line 154
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    .line 156
    add-int v2, v2, v16

    add-int/2addr v7, v2

    goto/16 :goto_0

    .line 113
    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    .line 116
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v2}, Lcom/google/android/gms/internal/ads/dmn;->b([SII)V

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dmn;->f:[S

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/dmn;->c:I

    div-int/2addr v6, v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/dmn;->d:I

    div-int/2addr v8, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v6, v8}, Lcom/google/android/gms/internal/ads/dmn;->a([SIII)I

    move-result v3

    .line 118
    const/4 v4, 0x1

    if-eq v2, v4, :cond_1b

    .line 119
    mul-int v4, v3, v2

    .line 120
    shl-int/lit8 v3, v2, 0x2

    sub-int v3, v4, v3

    .line 121
    shl-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    .line 122
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->c:I

    if-ge v3, v2, :cond_1a

    .line 123
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->c:I

    .line 124
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->d:I

    if-le v4, v3, :cond_19

    .line 125
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->d:I

    .line 126
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v2, v3}, Lcom/google/android/gms/internal/ads/dmn;->a([SIII)I

    move-result v2

    goto/16 :goto_4

    .line 128
    :cond_8
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v4}, Lcom/google/android/gms/internal/ads/dmn;->b([SII)V

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dmn;->f:[S

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/dmn;->a([SIII)I

    move-result v2

    goto/16 :goto_4

    .line 134
    :cond_9
    mul-int/lit8 v5, v3, 0x3

    if-le v4, v5, :cond_a

    .line 135
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 136
    :cond_a
    shl-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dmn;->v:I

    mul-int/lit8 v4, v4, 0x3

    if-gt v3, v4, :cond_b

    .line 137
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 138
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_c
    move/from16 v16, v2

    .line 141
    goto/16 :goto_6

    .line 151
    :cond_d
    move/from16 v0, v16

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    sub-float v3, v3, v18

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v18, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->t:I

    move/from16 v2, v16

    goto/16 :goto_7

    .line 157
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    .line 158
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v18, v2

    if-gez v2, :cond_f

    .line 159
    move/from16 v0, v16

    int-to-float v2, v0

    mul-float v2, v2, v18

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v18

    div-float/2addr v2, v3

    float-to-int v8, v2

    .line 162
    :goto_a
    add-int v2, v16, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dmn;->a(I)V

    .line 163
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v2, v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int v5, v5, v16

    invoke-static {v12, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    add-int v11, v2, v16

    add-int v13, v7, v16

    move-object v14, v12

    move v15, v7

    invoke-static/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/dmn;->a(II[SI[SI[SI)V

    .line 165
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    add-int v3, v16, v8

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    .line 167
    add-int/2addr v7, v8

    goto/16 :goto_0

    .line 161
    :cond_f
    move/from16 v0, v16

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, v18

    div-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->t:I

    move/from16 v8, v16

    goto :goto_a

    .line 174
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dmn;->a([SII)V

    .line 175
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    goto/16 :goto_1

    .line 185
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    sub-int v2, v2, v17

    .line 186
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->s:I

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/dmn;->k:I

    if-le v3, v6, :cond_12

    .line 187
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->k:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/dmn;->k:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v2

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gms/internal/ads/dmn;->k:I

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dmn;->l:[S

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/dmn;->k:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/dmn;->l:[S

    .line 189
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int v6, v6, v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dmn;->l:[S

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/dmn;->s:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v9, v2

    invoke-static {v3, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gms/internal/ads/dmn;->r:I

    .line 191
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->s:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->s:I

    .line 192
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->s:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_17

    .line 193
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->m:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/dmn;->n:I

    mul-int/2addr v6, v4

    if-le v2, v6, :cond_14

    .line 194
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/dmn;->a(I)V

    .line 195
    const/4 v2, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    if-ge v2, v6, :cond_13

    .line 196
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dmn;->l:[S

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v2

    .line 198
    aget-short v10, v8, v9

    .line 199
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    add-int/2addr v9, v11

    aget-short v8, v8, v9

    .line 200
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/ads/dmn;->n:I

    mul-int/2addr v9, v4

    .line 201
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/gms/internal/ads/dmn;->m:I

    mul-int/2addr v11, v5

    .line 202
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/gms/internal/ads/dmn;->m:I

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v12, v5

    .line 203
    sub-int v9, v12, v9

    .line 204
    sub-int v11, v12, v11

    .line 205
    mul-int/2addr v10, v9

    sub-int v9, v11, v9

    mul-int/2addr v8, v9

    add-int/2addr v8, v10

    div-int/2addr v8, v11

    int-to-short v8, v8

    .line 206
    aput-short v8, v6, v7

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 208
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->n:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->n:I

    .line 209
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    goto :goto_c

    .line 210
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->m:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->m:I

    .line 211
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->m:I

    if-ne v2, v4, :cond_15

    .line 212
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->m:I

    .line 213
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->n:I

    if-ne v2, v5, :cond_16

    const/4 v2, 0x1

    :goto_e
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 214
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->n:I

    .line 215
    :cond_15
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_b

    .line 213
    :cond_16
    const/4 v2, 0x0

    goto :goto_e

    .line 216
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/dmn;->s:I

    add-int/lit8 v2, v2, -0x1

    .line 217
    if-eqz v2, :cond_18

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dmn;->l:[S

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v4, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dmn;->l:[S

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/ads/dmn;->s:I

    sub-int/2addr v7, v2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dmn;->s:I

    sub-int v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gms/internal/ads/dmn;->s:I

    .line 220
    :cond_18
    return-void

    :cond_19
    move v3, v4

    goto/16 :goto_9

    :cond_1a
    move v2, v3

    goto/16 :goto_8

    :cond_1b
    move v2, v3

    goto/16 :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 36
    iget v2, p0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->o:F

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmn;->p:F

    div-float/2addr v0, v3

    .line 38
    iget v3, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    int-to-float v4, v2

    div-float v0, v4, v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmn;->s:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmn;->p:F

    div-float/2addr v0, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v3, v0

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dmn;->b(I)V

    move v0, v1

    .line 40
    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v4, v5

    if-ge v0, v4, :cond_0

    .line 41
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    iget v5, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v0

    aput-short v1, v4, v5

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmn;->e:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmn;->c()V

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    if-le v0, v3, :cond_1

    .line 46
    iput v3, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    .line 47
    :cond_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    .line 48
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmn;->t:I

    .line 49
    iput v1, p0, Lcom/google/android/gms/internal/ads/dmn;->s:I

    .line 50
    return-void
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/google/android/gms/internal/ads/dmn;->o:F

    .line 21
    return-void
.end method

.method public final a(Ljava/nio/ShortBuffer;)V
    .locals 5

    .prologue
    .line 24
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    div-int/2addr v0, v1

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x1

    .line 26
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dmn;->b(I)V

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmn;->h:[S

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v3, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dmn;->q:I

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dmn;->c()V

    .line 30
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    return v0
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/ads/dmn;->p:F

    .line 23
    return-void
.end method

.method public final b(Ljava/nio/ShortBuffer;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 31
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v2, v0

    invoke-virtual {p1, v1, v5, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 33
    iget v1, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    iget v2, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dmn;->j:[S

    iget v3, p0, Lcom/google/android/gms/internal/ads/dmn;->r:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dmn;->b:I

    mul-int/2addr v3, v4

    invoke-static {v1, v0, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    return-void
.end method
