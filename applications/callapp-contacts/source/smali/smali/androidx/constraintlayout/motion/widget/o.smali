.class public final Landroidx/constraintlayout/motion/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/o;",
        ">;"
    }
.end annotation


# static fields
.field static a:[Ljava/lang/String;


# instance fields
.field b:Landroidx/constraintlayout/motion/a/c;

.field c:I

.field d:F

.field e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field j:F

.field k:F

.field l:I

.field m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field n:I

.field o:[D

.field p:[D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    .line 52
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/o;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/o;->c:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 61
    iput v1, p0, Landroidx/constraintlayout/motion/widget/o;->j:F

    .line 62
    iput v1, p0, Landroidx/constraintlayout/motion/widget/o;->k:F

    .line 63
    sget v1, Landroidx/constraintlayout/motion/widget/b;->a:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/o;->l:I

    .line 65
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/o;->m:Ljava/util/LinkedHashMap;

    .line 66
    iput v0, p0, Landroidx/constraintlayout/motion/widget/o;->n:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 308
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/o;->o:[D

    new-array v0, v0, [D

    .line 309
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/o;->p:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/h;Landroidx/constraintlayout/motion/widget/o;Landroidx/constraintlayout/motion/widget/o;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 54
    iput v4, v0, Landroidx/constraintlayout/motion/widget/o;->c:I

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 61
    iput v5, v0, Landroidx/constraintlayout/motion/widget/o;->j:F

    .line 62
    iput v5, v0, Landroidx/constraintlayout/motion/widget/o;->k:F

    .line 63
    sget v5, Landroidx/constraintlayout/motion/widget/b;->a:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/o;->l:I

    .line 65
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/o;->m:Ljava/util/LinkedHashMap;

    .line 66
    iput v4, v0, Landroidx/constraintlayout/motion/widget/o;->n:I

    const/16 v4, 0x12

    new-array v5, v4, [D

    .line 308
    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/o;->o:[D

    new-array v4, v4, [D

    .line 309
    iput-object v4, v0, Landroidx/constraintlayout/motion/widget/o;->p:[D

    .line 125
    iget v4, v1, Landroidx/constraintlayout/motion/widget/h;->p:I

    const/4 v5, 0x1

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v4, v5, :cond_b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 2080
    iget v4, v1, Landroidx/constraintlayout/motion/widget/h;->b:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    .line 2082
    iput v4, v0, Landroidx/constraintlayout/motion/widget/o;->d:F

    .line 2084
    iget v7, v1, Landroidx/constraintlayout/motion/widget/h;->i:I

    iput v7, v0, Landroidx/constraintlayout/motion/widget/o;->c:I

    .line 2085
    iget v7, v1, Landroidx/constraintlayout/motion/widget/h;->j:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    iget v7, v1, Landroidx/constraintlayout/motion/widget/h;->j:F

    .line 2086
    :goto_0
    iget v9, v1, Landroidx/constraintlayout/motion/widget/h;->k:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    iget v9, v1, Landroidx/constraintlayout/motion/widget/h;->k:F

    .line 2087
    :goto_1
    iget v10, v3, Landroidx/constraintlayout/motion/widget/o;->h:F

    iget v11, v2, Landroidx/constraintlayout/motion/widget/o;->h:F

    sub-float v12, v10, v11

    .line 2088
    iget v13, v3, Landroidx/constraintlayout/motion/widget/o;->i:F

    iget v14, v2, Landroidx/constraintlayout/motion/widget/o;->i:F

    sub-float v15, v13, v14

    .line 2090
    iget v6, v0, Landroidx/constraintlayout/motion/widget/o;->d:F

    iput v6, v0, Landroidx/constraintlayout/motion/widget/o;->e:F

    .line 2094
    iget v6, v2, Landroidx/constraintlayout/motion/widget/o;->f:F

    div-float v17, v11, v8

    add-float v17, v6, v17

    .line 2095
    iget v5, v2, Landroidx/constraintlayout/motion/widget/o;->g:F

    div-float v18, v14, v8

    add-float v18, v5, v18

    .line 2096
    iget v2, v3, Landroidx/constraintlayout/motion/widget/o;->f:F

    div-float/2addr v10, v8

    add-float/2addr v2, v10

    .line 2097
    iget v3, v3, Landroidx/constraintlayout/motion/widget/o;->g:F

    div-float/2addr v13, v8

    add-float/2addr v3, v13

    sub-float v2, v2, v17

    sub-float v3, v3, v18

    mul-float v10, v2, v4

    add-float/2addr v6, v10

    mul-float v12, v12, v7

    div-float v7, v12, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    .line 2100
    iput v6, v0, Landroidx/constraintlayout/motion/widget/o;->f:F

    mul-float v6, v3, v4

    add-float/2addr v5, v6

    mul-float v15, v15, v9

    div-float v6, v15, v8

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    .line 2101
    iput v5, v0, Landroidx/constraintlayout/motion/widget/o;->g:F

    add-float/2addr v11, v12

    float-to-int v5, v11

    int-to-float v5, v5

    .line 2102
    iput v5, v0, Landroidx/constraintlayout/motion/widget/o;->h:F

    add-float/2addr v14, v15

    float-to-int v5, v14

    int-to-float v5, v5

    .line 2103
    iput v5, v0, Landroidx/constraintlayout/motion/widget/o;->i:F

    .line 2105
    iget v5, v1, Landroidx/constraintlayout/motion/widget/h;->l:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    iget v5, v1, Landroidx/constraintlayout/motion/widget/h;->l:F

    .line 2106
    :goto_2
    iget v8, v1, Landroidx/constraintlayout/motion/widget/h;->o:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    iget v8, v1, Landroidx/constraintlayout/motion/widget/h;->o:F

    .line 2107
    :goto_3
    iget v9, v1, Landroidx/constraintlayout/motion/widget/h;->m:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    iget v4, v1, Landroidx/constraintlayout/motion/widget/h;->m:F

    .line 2108
    :goto_4
    iget v9, v1, Landroidx/constraintlayout/motion/widget/h;->n:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x2

    const/16 v16, 0x0

    goto :goto_5

    :cond_5
    iget v9, v1, Landroidx/constraintlayout/motion/widget/h;->n:F

    move/from16 v16, v9

    const/4 v9, 0x2

    .line 2109
    :goto_5
    iput v9, v0, Landroidx/constraintlayout/motion/widget/o;->n:I

    move-object/from16 v9, p4

    .line 2110
    iget v10, v9, Landroidx/constraintlayout/motion/widget/o;->f:F

    mul-float v5, v5, v2

    add-float/2addr v10, v5

    mul-float v16, v16, v3

    add-float v10, v10, v16

    sub-float/2addr v10, v7

    float-to-int v5, v10

    int-to-float v5, v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/o;->f:F

    .line 2111
    iget v5, v9, Landroidx/constraintlayout/motion/widget/o;->g:F

    mul-float v2, v2, v8

    add-float/2addr v5, v2

    mul-float v3, v3, v4

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    float-to-int v2, v5

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/o;->g:F

    .line 2113
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/h;->g:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/a/c;->a(Ljava/lang/String;)Landroidx/constraintlayout/motion/a/c;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    .line 2114
    iget v1, v1, Landroidx/constraintlayout/motion/widget/h;->h:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->l:I

    return-void

    :cond_6
    move-object v9, v2

    .line 1140
    iget v2, v1, Landroidx/constraintlayout/motion/widget/h;->b:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    .line 1142
    iput v2, v0, Landroidx/constraintlayout/motion/widget/o;->d:F

    .line 1144
    iget v4, v1, Landroidx/constraintlayout/motion/widget/h;->i:I

    iput v4, v0, Landroidx/constraintlayout/motion/widget/o;->c:I

    .line 1145
    iget v4, v1, Landroidx/constraintlayout/motion/widget/h;->j:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_6

    :cond_7
    iget v4, v1, Landroidx/constraintlayout/motion/widget/h;->j:F

    .line 1146
    :goto_6
    iget v5, v1, Landroidx/constraintlayout/motion/widget/h;->k:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v2

    goto :goto_7

    :cond_8
    iget v5, v1, Landroidx/constraintlayout/motion/widget/h;->k:F

    .line 1148
    :goto_7
    iget v6, v3, Landroidx/constraintlayout/motion/widget/o;->h:F

    iget v7, v9, Landroidx/constraintlayout/motion/widget/o;->h:F

    sub-float v10, v6, v7

    .line 1149
    iget v11, v3, Landroidx/constraintlayout/motion/widget/o;->i:F

    iget v12, v9, Landroidx/constraintlayout/motion/widget/o;->i:F

    sub-float v13, v11, v12

    .line 1151
    iget v14, v0, Landroidx/constraintlayout/motion/widget/o;->d:F

    iput v14, v0, Landroidx/constraintlayout/motion/widget/o;->e:F

    .line 1155
    iget v14, v9, Landroidx/constraintlayout/motion/widget/o;->f:F

    div-float v15, v7, v8

    add-float/2addr v15, v14

    .line 1156
    iget v9, v9, Landroidx/constraintlayout/motion/widget/o;->g:F

    div-float v16, v12, v8

    add-float v16, v9, v16

    .line 1157
    iget v1, v3, Landroidx/constraintlayout/motion/widget/o;->f:F

    div-float/2addr v6, v8

    add-float/2addr v1, v6

    .line 1158
    iget v3, v3, Landroidx/constraintlayout/motion/widget/o;->g:F

    div-float/2addr v11, v8

    add-float/2addr v3, v11

    sub-float/2addr v1, v15

    sub-float v3, v3, v16

    mul-float v1, v1, v2

    add-float/2addr v14, v1

    mul-float v10, v10, v4

    div-float v1, v10, v8

    sub-float/2addr v14, v1

    float-to-int v1, v14

    int-to-float v1, v1

    .line 1161
    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->f:F

    mul-float v3, v3, v2

    add-float/2addr v9, v3

    mul-float v13, v13, v5

    div-float v1, v13, v8

    sub-float/2addr v9, v1

    float-to-int v1, v9

    int-to-float v1, v1

    .line 1162
    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->g:F

    add-float/2addr v7, v10

    float-to-int v1, v7

    int-to-float v1, v1

    .line 1163
    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->h:F

    add-float/2addr v12, v13

    float-to-int v1, v12

    int-to-float v1, v1

    .line 1164
    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->i:F

    const/4 v1, 0x3

    .line 1166
    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->n:I

    move-object/from16 v1, p3

    .line 1167
    iget v2, v1, Landroidx/constraintlayout/motion/widget/h;->l:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_9

    move/from16 v2, p1

    int-to-float v2, v2

    .line 1168
    iget v3, v0, Landroidx/constraintlayout/motion/widget/o;->h:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1169
    iget v3, v1, Landroidx/constraintlayout/motion/widget/h;->l:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/o;->f:F

    .line 1171
    :cond_9
    iget v2, v1, Landroidx/constraintlayout/motion/widget/h;->m:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_a

    move/from16 v2, p2

    int-to-float v2, v2

    .line 1172
    iget v3, v0, Landroidx/constraintlayout/motion/widget/o;->i:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1173
    iget v3, v1, Landroidx/constraintlayout/motion/widget/h;->m:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/o;->g:F

    .line 1176
    :cond_a
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/h;->g:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/a/c;->a(Ljava/lang/String;)Landroidx/constraintlayout/motion/a/c;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    .line 1177
    iget v1, v1, Landroidx/constraintlayout/motion/widget/h;->h:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->l:I

    return-void

    :cond_b
    move-object v9, v2

    .line 1182
    iget v2, v1, Landroidx/constraintlayout/motion/widget/h;->b:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    .line 1184
    iput v2, v0, Landroidx/constraintlayout/motion/widget/o;->d:F

    .line 1186
    iget v4, v1, Landroidx/constraintlayout/motion/widget/h;->i:I

    iput v4, v0, Landroidx/constraintlayout/motion/widget/o;->c:I

    .line 1187
    iget v4, v1, Landroidx/constraintlayout/motion/widget/h;->j:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v2

    goto :goto_8

    :cond_c
    iget v4, v1, Landroidx/constraintlayout/motion/widget/h;->j:F

    .line 1188
    :goto_8
    iget v6, v1, Landroidx/constraintlayout/motion/widget/h;->k:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_d

    move v6, v2

    goto :goto_9

    :cond_d
    iget v6, v1, Landroidx/constraintlayout/motion/widget/h;->k:F

    .line 1190
    :goto_9
    iget v7, v3, Landroidx/constraintlayout/motion/widget/o;->h:F

    iget v10, v9, Landroidx/constraintlayout/motion/widget/o;->h:F

    sub-float/2addr v7, v10

    .line 1191
    iget v10, v3, Landroidx/constraintlayout/motion/widget/o;->i:F

    iget v11, v9, Landroidx/constraintlayout/motion/widget/o;->i:F

    sub-float/2addr v10, v11

    .line 1193
    iget v11, v0, Landroidx/constraintlayout/motion/widget/o;->d:F

    iput v11, v0, Landroidx/constraintlayout/motion/widget/o;->e:F

    .line 1195
    iget v11, v1, Landroidx/constraintlayout/motion/widget/h;->l:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_a

    :cond_e
    iget v2, v1, Landroidx/constraintlayout/motion/widget/h;->l:F

    .line 1197
    :goto_a
    iget v11, v9, Landroidx/constraintlayout/motion/widget/o;->f:F

    iget v12, v9, Landroidx/constraintlayout/motion/widget/o;->h:F

    div-float v13, v12, v8

    add-float/2addr v13, v11

    .line 1198
    iget v14, v9, Landroidx/constraintlayout/motion/widget/o;->g:F

    iget v15, v9, Landroidx/constraintlayout/motion/widget/o;->i:F

    div-float v17, v15, v8

    add-float v17, v14, v17

    .line 1199
    iget v5, v3, Landroidx/constraintlayout/motion/widget/o;->f:F

    iget v9, v3, Landroidx/constraintlayout/motion/widget/o;->h:F

    div-float/2addr v9, v8

    add-float/2addr v5, v9

    .line 1200
    iget v9, v3, Landroidx/constraintlayout/motion/widget/o;->g:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/o;->i:F

    div-float/2addr v3, v8

    add-float/2addr v9, v3

    sub-float/2addr v5, v13

    sub-float v9, v9, v17

    mul-float v3, v5, v2

    add-float/2addr v11, v3

    mul-float v7, v7, v4

    div-float v4, v7, v8

    sub-float/2addr v11, v4

    float-to-int v11, v11

    int-to-float v11, v11

    .line 1203
    iput v11, v0, Landroidx/constraintlayout/motion/widget/o;->f:F

    mul-float v2, v2, v9

    add-float/2addr v14, v2

    mul-float v10, v10, v6

    div-float v6, v10, v8

    sub-float/2addr v14, v6

    float-to-int v8, v14

    int-to-float v8, v8

    .line 1204
    iput v8, v0, Landroidx/constraintlayout/motion/widget/o;->g:F

    add-float/2addr v12, v7

    float-to-int v7, v12

    int-to-float v7, v7

    .line 1205
    iput v7, v0, Landroidx/constraintlayout/motion/widget/o;->h:F

    add-float/2addr v15, v10

    float-to-int v7, v15

    int-to-float v7, v7

    .line 1206
    iput v7, v0, Landroidx/constraintlayout/motion/widget/o;->i:F

    .line 1207
    iget v7, v1, Landroidx/constraintlayout/motion/widget/h;->m:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_f

    const/16 v16, 0x0

    goto :goto_b

    :cond_f
    iget v7, v1, Landroidx/constraintlayout/motion/widget/h;->m:F

    move/from16 v16, v7

    :goto_b
    neg-float v7, v9

    mul-float v7, v7, v16

    mul-float v5, v5, v16

    const/4 v8, 0x1

    .line 1213
    iput v8, v0, Landroidx/constraintlayout/motion/widget/o;->n:I

    move-object/from16 v8, p4

    .line 1214
    iget v9, v8, Landroidx/constraintlayout/motion/widget/o;->f:F

    add-float/2addr v9, v3

    sub-float/2addr v9, v4

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/o;->f:F

    .line 1215
    iget v4, v8, Landroidx/constraintlayout/motion/widget/o;->g:F

    add-float/2addr v4, v2

    sub-float/2addr v4, v6

    float-to-int v2, v4

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/o;->g:F

    add-float/2addr v3, v7

    .line 1216
    iput v3, v0, Landroidx/constraintlayout/motion/widget/o;->f:F

    add-float/2addr v2, v5

    .line 1217
    iput v2, v0, Landroidx/constraintlayout/motion/widget/o;->g:F

    .line 1219
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/h;->g:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/motion/a/c;->a(Ljava/lang/String;)Landroidx/constraintlayout/motion/a/c;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    .line 1220
    iget v1, v1, Landroidx/constraintlayout/motion/widget/h;->h:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/o;->l:I

    return-void
.end method

.method public static a(FF[F[I[D)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 572
    :goto_0
    array-length v7, p3

    const/4 v8, 0x1

    if-ge v2, v7, :cond_4

    .line 573
    aget-wide v9, p4, v2

    double-to-float v7, v9

    .line 578
    aget v9, p3, v2

    if-eq v9, v8, :cond_3

    const/4 v8, 0x2

    if-eq v9, v8, :cond_2

    const/4 v8, 0x3

    if-eq v9, v8, :cond_1

    const/4 v8, 0x4

    if-eq v9, v8, :cond_0

    goto :goto_1

    :cond_0
    move v6, v7

    goto :goto_1

    :cond_1
    move v4, v7

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    move v3, v7

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    mul-float p3, v4, v1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    sub-float/2addr v3, p3

    mul-float p3, v6, v1

    div-float/2addr p3, p4

    sub-float/2addr v5, p3

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float v4, v4, p3

    mul-float v6, v6, p3

    add-float/2addr v4, v3

    add-float/2addr v6, v5

    sub-float p4, p3, p0

    mul-float v3, v3, p4

    mul-float v4, v4, p0

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 629
    aput v3, p2, v0

    sub-float/2addr p3, p1

    mul-float v5, v5, p3

    mul-float v6, v6, p1

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    .line 630
    aput v5, p2, v8

    return-void
.end method

.method static a(FF)Z
    .locals 3

    .line 236
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p0, p1

    .line 239
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    return v1

    :cond_1
    return v2

    .line 237
    :cond_2
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method final a(Ljava/lang/String;[DI)I
    .locals 5

    .line 652
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/o;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/a;

    .line 653
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/a;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 654
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/a;->b()F

    move-result p1

    float-to-double v3, p1

    aput-wide v3, p2, v1

    return v2

    .line 657
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/a;->a()I

    move-result v0

    .line 658
    new-array v2, v0, [F

    .line 659
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/a;->a([F)V

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 p1, p3, 0x1

    .line 661
    aget v3, v2, v1

    float-to-double v3, v3

    aput-wide v3, p2, p3

    add-int/lit8 v1, v1, 0x1

    move p3, p1

    goto :goto_0

    :cond_1
    return v0
.end method

.method final a(FFFF)V
    .locals 0

    .line 668
    iput p1, p0, Landroidx/constraintlayout/motion/widget/o;->f:F

    .line 669
    iput p2, p0, Landroidx/constraintlayout/motion/widget/o;->g:F

    .line 670
    iput p3, p0, Landroidx/constraintlayout/motion/widget/o;->h:F

    .line 671
    iput p4, p0, Landroidx/constraintlayout/motion/widget/o;->i:F

    return-void
.end method

.method public final a(Landroidx/constraintlayout/widget/c$a;)V
    .locals 5

    .line 681
    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$c;

    iget-object v0, v0, Landroidx/constraintlayout/widget/c$c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/motion/a/c;->a(Ljava/lang/String;)Landroidx/constraintlayout/motion/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/o;->b:Landroidx/constraintlayout/motion/a/c;

    .line 682
    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$c;

    iget v0, v0, Landroidx/constraintlayout/widget/c$c;->d:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/o;->l:I

    .line 683
    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$c;

    iget v0, v0, Landroidx/constraintlayout/widget/c$c;->g:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/o;->j:F

    .line 684
    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->c:Landroidx/constraintlayout/widget/c$c;

    iget v0, v0, Landroidx/constraintlayout/widget/c$c;->e:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/o;->c:I

    .line 685
    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->b:Landroidx/constraintlayout/widget/c$d;

    iget v0, v0, Landroidx/constraintlayout/widget/c$d;->e:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/o;->k:F

    .line 686
    iget-object v0, p1, Landroidx/constraintlayout/widget/c$a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 687
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 688
    iget-object v2, p1, Landroidx/constraintlayout/widget/c$a;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/a;

    .line 3062
    iget-object v3, v2, Landroidx/constraintlayout/widget/a;->b:Landroidx/constraintlayout/widget/a$a;

    .line 689
    sget-object v4, Landroidx/constraintlayout/widget/a$a;->STRING_TYPE:Landroidx/constraintlayout/widget/a$a;

    if-eq v3, v4, :cond_0

    .line 690
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/o;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a([D[I)V
    .locals 7

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 634
    iget v2, p0, Landroidx/constraintlayout/motion/widget/o;->e:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Landroidx/constraintlayout/motion/widget/o;->f:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/o;->g:F

    const/4 v4, 0x2

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/o;->h:F

    const/4 v4, 0x3

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/o;->i:F

    const/4 v4, 0x4

    aput v2, v1, v4

    iget v2, p0, Landroidx/constraintlayout/motion/widget/o;->j:F

    const/4 v4, 0x5

    aput v2, v1, v4

    const/4 v2, 0x0

    .line 636
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 637
    aget v4, p2, v3

    if-ge v4, v0, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 638
    aget v5, p2, v3

    aget v5, v1, v5

    float-to-double v5, v5

    aput-wide v5, p1, v2

    move v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a([I[D[FI)V
    .locals 9

    .line 253
    iget v0, p0, Landroidx/constraintlayout/motion/widget/o;->f:F

    .line 254
    iget v1, p0, Landroidx/constraintlayout/motion/widget/o;->g:F

    .line 255
    iget v2, p0, Landroidx/constraintlayout/motion/widget/o;->h:F

    .line 256
    iget v3, p0, Landroidx/constraintlayout/motion/widget/o;->i:F

    const/4 v4, 0x0

    .line 258
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4

    .line 259
    aget-wide v7, p2, v4

    double-to-float v5, v7

    .line 261
    aget v7, p1, v4

    if-eq v7, v6, :cond_3

    const/4 v6, 0x2

    if-eq v7, v6, :cond_2

    const/4 v6, 0x3

    if-eq v7, v6, :cond_1

    const/4 v6, 0x4

    if-eq v7, v6, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    add-float/2addr v0, v2

    const/4 p2, 0x0

    add-float/2addr v0, p2

    .line 276
    aput v0, p3, p4

    add-int/2addr p4, v6

    div-float/2addr v3, p1

    add-float/2addr v1, v3

    add-float/2addr v1, p2

    .line 277
    aput v1, p3, p4

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 38
    check-cast p1, Landroidx/constraintlayout/motion/widget/o;

    .line 3676
    iget v0, p0, Landroidx/constraintlayout/motion/widget/o;->e:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/o;->e:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method
