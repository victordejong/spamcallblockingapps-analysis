.class public abstract Landroidx/constraintlayout/motion/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/q$m;,
        Landroidx/constraintlayout/motion/widget/q$g;,
        Landroidx/constraintlayout/motion/widget/q$b;,
        Landroidx/constraintlayout/motion/widget/q$p;,
        Landroidx/constraintlayout/motion/widget/q$o;,
        Landroidx/constraintlayout/motion/widget/q$n;,
        Landroidx/constraintlayout/motion/widget/q$l;,
        Landroidx/constraintlayout/motion/widget/q$k;,
        Landroidx/constraintlayout/motion/widget/q$d;,
        Landroidx/constraintlayout/motion/widget/q$f;,
        Landroidx/constraintlayout/motion/widget/q$e;,
        Landroidx/constraintlayout/motion/widget/q$j;,
        Landroidx/constraintlayout/motion/widget/q$i;,
        Landroidx/constraintlayout/motion/widget/q$h;,
        Landroidx/constraintlayout/motion/widget/q$a;,
        Landroidx/constraintlayout/motion/widget/q$c;
    }
.end annotation


# instance fields
.field protected a:Landroidx/constraintlayout/motion/a/b;

.field protected b:[I

.field protected c:[F

.field d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 40
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->b:[I

    new-array v0, v0, [F

    .line 41
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:[F

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 3

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/a/b;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/a/b;->a(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public a(I)V
    .locals 13

    .line 130
    iget v0, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/q;->b:[I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/q;->c:[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 1335
    array-length v4, v1

    add-int/lit8 v4, v4, 0xa

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 1337
    aput v0, v4, v5

    .line 1338
    aput v5, v4, v3

    const/4 v0, 0x2

    const/4 v6, 0x2

    :cond_1
    :goto_0
    if-lez v6, :cond_4

    add-int/lit8 v6, v6, -0x1

    .line 1340
    aget v7, v4, v6

    add-int/lit8 v6, v6, -0x1

    .line 1341
    aget v8, v4, v6

    if-ge v7, v8, :cond_1

    .line 1353
    aget v9, v1, v8

    move v10, v7

    move v11, v10

    :goto_1
    if-ge v10, v8, :cond_3

    .line 1356
    aget v12, v1, v10

    if-gt v12, v9, :cond_2

    .line 1357
    invoke-static {v1, v2, v11, v10}, Landroidx/constraintlayout/motion/widget/q$m;->a([I[FII)V

    add-int/lit8 v11, v11, 0x1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1361
    :cond_3
    invoke-static {v1, v2, v11, v8}, Landroidx/constraintlayout/motion/widget/q$m;->a([I[FII)V

    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v10, v11, -0x1

    .line 1344
    aput v10, v4, v6

    add-int/lit8 v6, v9, 0x1

    .line 1345
    aput v7, v4, v9

    add-int/lit8 v7, v6, 0x1

    .line 1346
    aput v8, v4, v6

    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 1347
    aput v11, v4, v7

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 138
    :goto_2
    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    if-ge v1, v4, :cond_6

    .line 139
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/q;->b:[I

    add-int/lit8 v6, v1, -0x1

    aget v6, v4, v6

    aget v4, v4, v1

    if-eq v6, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    :cond_6
    new-array v1, v2, [D

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v2, v0, v5

    .line 145
    const-class v2, D

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 147
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    if-ge v2, v4, :cond_9

    if-lez v2, :cond_7

    .line 148
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/q;->b:[I

    aget v6, v4, v2

    add-int/lit8 v7, v2, -0x1

    aget v4, v4, v7

    if-eq v6, v4, :cond_8

    .line 152
    :cond_7
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/q;->b:[I

    aget v4, v4, v2

    int-to-double v6, v4

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double v6, v6, v8

    aput-wide v6, v1, v3

    .line 153
    aget-object v4, v0, v3

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/q;->c:[F

    aget v6, v6, v2

    float-to-double v6, v6

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 156
    :cond_9
    invoke-static {p1, v1, v0}, Landroidx/constraintlayout/motion/a/b;->a(I[D[[D)Landroidx/constraintlayout/motion/a/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/a/b;

    return-void
.end method

.method public a(IF)V
    .locals 3

    .line 120
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->b:[I

    array-length v1, v0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_0

    .line 121
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->b:[I

    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:[F

    .line 124
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->b:[I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    aput p1, v0, v1

    .line 125
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/q;->c:[F

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 126
    iput v1, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    return-void
.end method

.method public abstract a(Landroid/view/View;F)V
.end method

.method public final b(F)F
    .locals 3

    .line 67
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->a:Landroidx/constraintlayout/motion/a/b;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/a/b;->b(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->d:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 49
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/motion/widget/q;->e:I

    if-ge v2, v3, :cond_0

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->b:[I

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/q;->c:[F

    aget v0, v0, v2

    float-to-double v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
