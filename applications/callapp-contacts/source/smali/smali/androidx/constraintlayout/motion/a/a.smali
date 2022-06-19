.class public final Landroidx/constraintlayout/motion/a/a;
.super Landroidx/constraintlayout/motion/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/a/a$a;
    }
.end annotation


# instance fields
.field a:[Landroidx/constraintlayout/motion/a/a$a;

.field private final b:[D


# direct methods
.method public constructor <init>([I[D[[D)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 168
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/a/b;-><init>()V

    .line 169
    iput-object v1, v0, Landroidx/constraintlayout/motion/a/a;->b:[D

    .line 170
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [Landroidx/constraintlayout/motion/a/a$a;

    iput-object v2, v0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 173
    :goto_0
    iget-object v7, v0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length v8, v7

    if-ge v4, v8, :cond_5

    .line 174
    aget v8, p1, v4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v8, :cond_4

    if-eq v8, v3, :cond_3

    if-eq v8, v10, :cond_2

    if-eq v8, v9, :cond_0

    goto :goto_2

    :cond_0
    if-ne v5, v3, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    move v6, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x2

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x3

    .line 188
    :goto_2
    new-instance v22, Landroidx/constraintlayout/motion/a/a$a;

    aget-wide v10, v1, v4

    add-int/lit8 v23, v4, 0x1

    aget-wide v12, v1, v23

    aget-object v8, p3, v4

    aget-wide v14, v8, v2

    aget-object v8, p3, v4

    aget-wide v16, v8, v3

    aget-object v8, p3, v23

    aget-wide v18, v8, v2

    aget-object v8, p3, v23

    aget-wide v20, v8, v3

    move-object/from16 v8, v22

    move v9, v6

    invoke-direct/range {v8 .. v21}, Landroidx/constraintlayout/motion/a/a$a;-><init>(IDDDDDD)V

    aput-object v22, v7, v4

    move/from16 v4, v23

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 4

    .line 110
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/a/a$a;->c:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    .line 111
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v1

    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->c:D

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    iget-wide v2, v0, Landroidx/constraintlayout/motion/a/a$a;->d:D

    cmpl-double v0, p1, v2

    if-lez v0, :cond_1

    .line 113
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->d:D

    .line 116
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 117
    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/a/a$a;->d:D

    cmpg-double v0, p1, v2

    if-gtz v0, :cond_3

    .line 119
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Landroidx/constraintlayout/motion/a/a$a;->r:Z

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/a/a$a;->b(D)D

    move-result-wide p1

    return-wide p1

    .line 125
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/a/a$a;->a(D)V

    .line 128
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/a/a$a;->a()D

    move-result-wide p1

    return-wide p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public final a(D[D)V
    .locals 6

    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/a/a$a;->c:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    .line 41
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v1

    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->c:D

    .line 43
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    iget-wide v4, v0, Landroidx/constraintlayout/motion/a/a$a;->d:D

    cmpl-double v0, p1, v4

    if-lez v0, :cond_1

    .line 44
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length p2, p1

    sub-int/2addr p2, v3

    aget-object p1, p1, p2

    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->d:D

    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 48
    aget-object v2, v2, v0

    iget-wide v4, v2, Landroidx/constraintlayout/motion/a/a$a;->d:D

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_3

    .line 49
    iget-object v2, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Landroidx/constraintlayout/motion/a/a$a;->r:Z

    if-eqz v2, :cond_2

    .line 50
    iget-object v2, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/motion/a/a$a;->b(D)D

    move-result-wide v4

    aput-wide v4, p3, v1

    .line 51
    iget-object v1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/a/a$a;->c(D)D

    move-result-wide p1

    aput-wide p1, p3, v3

    return-void

    .line 54
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/motion/a/a$a;->a(D)V

    .line 55
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/a/a$a;->a()D

    move-result-wide p1

    aput-wide p1, p3, v1

    .line 56
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/a/a$a;->b()D

    move-result-wide p1

    aput-wide p1, p3, v3

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final a(D[F)V
    .locals 6

    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/a/a$a;->c:D

    const/4 v0, 0x1

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    .line 65
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v1

    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->c:D

    goto :goto_0

    .line 66
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length v3, v2

    sub-int/2addr v3, v0

    aget-object v2, v2, v3

    iget-wide v2, v2, Landroidx/constraintlayout/motion/a/a$a;->d:D

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    .line 67
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length p2, p1

    sub-int/2addr p2, v0

    aget-object p1, p1, p2

    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->d:D

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 70
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 71
    aget-object v3, v3, v2

    iget-wide v3, v3, Landroidx/constraintlayout/motion/a/a$a;->d:D

    cmpg-double v5, p1, v3

    if-gtz v5, :cond_3

    .line 72
    iget-object v3, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Landroidx/constraintlayout/motion/a/a$a;->r:Z

    if-eqz v3, :cond_2

    .line 73
    iget-object v3, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/motion/a/a$a;->b(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p3, v1

    .line 74
    iget-object v1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/motion/a/a$a;->c(D)D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v0

    return-void

    .line 77
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/motion/a/a$a;->a(D)V

    .line 78
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/a/a$a;->a()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v1

    .line 79
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/a/a$a;->b()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v0

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a()[D
    .locals 1

    .line 165
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->b:[D

    return-object v0
.end method

.method public final b(D)D
    .locals 4

    .line 138
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/a/a$a;->c:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    .line 139
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v1

    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->c:D

    .line 141
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    iget-wide v2, v0, Landroidx/constraintlayout/motion/a/a$a;->d:D

    cmpl-double v0, p1, v2

    if-lez v0, :cond_1

    .line 142
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->d:D

    .line 145
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 146
    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/a/a$a;->d:D

    cmpg-double v0, p1, v2

    if-gtz v0, :cond_3

    .line 147
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Landroidx/constraintlayout/motion/a/a$a;->r:Z

    if-eqz v0, :cond_2

    .line 149
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v1

    .line 2284
    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->l:D

    return-wide p1

    .line 153
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/a/a$a;->a(D)V

    .line 155
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/a/a$a;->c()D

    move-result-wide p1

    return-wide p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public final b(D[D)V
    .locals 7

    .line 87
    iget-object v0, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroidx/constraintlayout/motion/a/a$a;->c:D

    const/4 v0, 0x1

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    .line 88
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v1

    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->c:D

    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length v3, v2

    sub-int/2addr v3, v0

    aget-object v2, v2, v3

    iget-wide v2, v2, Landroidx/constraintlayout/motion/a/a$a;->d:D

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    .line 90
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length p2, p1

    sub-int/2addr p2, v0

    aget-object p1, p1, p2

    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->d:D

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 93
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 94
    aget-object v3, v3, v2

    iget-wide v3, v3, Landroidx/constraintlayout/motion/a/a$a;->d:D

    cmpg-double v5, p1, v3

    if-gtz v5, :cond_4

    .line 95
    iget-object v3, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Landroidx/constraintlayout/motion/a/a$a;->r:Z

    if-eqz v3, :cond_2

    .line 96
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v2

    .line 1284
    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->l:D

    .line 96
    aput-wide p1, p3, v1

    .line 97
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v2

    .line 1288
    iget-wide p1, p1, Landroidx/constraintlayout/motion/a/a$a;->m:D

    .line 97
    aput-wide p1, p3, v0

    return-void

    .line 100
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/motion/a/a$a;->a(D)V

    .line 101
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/motion/a/a$a;->c()D

    move-result-wide p1

    aput-wide p1, p3, v1

    .line 102
    iget-object p1, p0, Landroidx/constraintlayout/motion/a/a;->a:[Landroidx/constraintlayout/motion/a/a$a;

    aget-object p1, p1, v2

    .line 2267
    iget-wide v1, p1, Landroidx/constraintlayout/motion/a/a$a;->j:D

    iget-wide v3, p1, Landroidx/constraintlayout/motion/a/a$a;->p:D

    mul-double v1, v1, v3

    .line 2268
    iget-wide v3, p1, Landroidx/constraintlayout/motion/a/a$a;->k:D

    neg-double v3, v3

    iget-wide v5, p1, Landroidx/constraintlayout/motion/a/a$a;->o:D

    mul-double v3, v3, v5

    .line 2269
    iget-wide v5, p1, Landroidx/constraintlayout/motion/a/a$a;->n:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    div-double/2addr v5, v1

    .line 2270
    iget-boolean p1, p1, Landroidx/constraintlayout/motion/a/a$a;->q:Z

    if-eqz p1, :cond_3

    neg-double p1, v3

    mul-double p1, p1, v5

    goto :goto_2

    :cond_3
    mul-double p1, v3, v5

    .line 102
    :goto_2
    aput-wide p1, p3, v0

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
