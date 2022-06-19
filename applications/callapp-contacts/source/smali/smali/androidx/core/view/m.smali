.class public final Landroidx/core/view/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field private b:Landroid/view/ViewParent;

.field private c:Landroid/view/ViewParent;

.field private final d:Landroid/view/View;

.field private e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    return-void
.end method

.method private a(ILandroid/view/ViewParent;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    iput-object p2, p0, Landroidx/core/view/m;->c:Landroid/view/ViewParent;

    :goto_0
    return-void

    .line 416
    :cond_1
    iput-object p2, p0, Landroidx/core/view/m;->b:Landroid/view/ViewParent;

    return-void
.end method

.method private a()[I
    .locals 1

    .line 425
    iget-object v0, p0, Landroidx/core/view/m;->e:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 426
    iput-object v0, p0, Landroidx/core/view/m;->e:[I

    .line 428
    :cond_0
    iget-object v0, p0, Landroidx/core/view/m;->e:[I

    return-object v0
.end method

.method private b(IIII[II[I)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p5

    .line 2086
    iget-boolean v2, v0, Landroidx/core/view/m;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    move/from16 v2, p6

    .line 239
    invoke-direct {p0, v2}, Landroidx/core/view/m;->c(I)Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    const/4 v12, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_6

    .line 270
    aput v3, v1, v3

    .line 271
    aput v3, v1, v12

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 248
    iget-object v5, v0, Landroidx/core/view/m;->d:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 249
    aget v5, v1, v3

    .line 250
    aget v6, v1, v12

    move v13, v5

    move v14, v6

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-nez p7, :cond_4

    .line 254
    invoke-direct {p0}, Landroidx/core/view/m;->a()[I

    move-result-object v5

    .line 255
    aput v3, v5, v3

    .line 256
    aput v3, v5, v12

    move-object v11, v5

    goto :goto_2

    :cond_4
    move-object/from16 v11, p7

    .line 259
    :goto_2
    iget-object v5, v0, Landroidx/core/view/m;->d:Landroid/view/View;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v4 .. v11}, Landroidx/core/view/x;->a(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    if-eqz v1, :cond_5

    .line 263
    iget-object v2, v0, Landroidx/core/view/m;->d:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 264
    aget v2, v1, v3

    sub-int/2addr v2, v13

    aput v2, v1, v3

    .line 265
    aget v2, v1, v12

    sub-int/2addr v2, v14

    aput v2, v1, v12

    :cond_5
    return v12

    :cond_6
    :goto_3
    return v3
.end method

.method private c(I)Landroid/view/ViewParent;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 408
    :cond_0
    iget-object p1, p0, Landroidx/core/view/m;->c:Landroid/view/ViewParent;

    return-object p1

    .line 406
    :cond_1
    iget-object p1, p0, Landroidx/core/view/m;->b:Landroid/view/ViewParent;

    return-object p1
.end method


# virtual methods
.method public final a(IIII[II[I)V
    .locals 0

    .line 231
    invoke-direct/range {p0 .. p7}, Landroidx/core/view/m;->b(IIII[II[I)Z

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 70
    iget-boolean v0, p0, Landroidx/core/view/m;->a:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/v;->z(Landroid/view/View;)V

    .line 73
    :cond_0
    iput-boolean p1, p0, Landroidx/core/view/m;->a:Z

    return-void
.end method

.method public final a(FF)Z
    .locals 2

    .line 5086
    iget-boolean v0, p0, Landroidx/core/view/m;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0, v1}, Landroidx/core/view/m;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v1, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroidx/core/view/x;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public final a(FFZ)Z
    .locals 2

    .line 4086
    iget-boolean v0, p0, Landroidx/core/view/m;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    invoke-direct {p0, v1}, Landroidx/core/view/m;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroidx/core/view/x;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public final a(I)Z
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Landroidx/core/view/m;->c(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(II)Z
    .locals 5

    .line 145
    invoke-virtual {p0, p2}, Landroidx/core/view/m;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1086
    :cond_0
    iget-boolean v0, p0, Landroidx/core/view/m;->a:Z

    if-eqz v0, :cond_6

    .line 150
    iget-object v0, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 151
    iget-object v2, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_6

    .line 153
    iget-object v3, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/view/x;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 154
    invoke-direct {p0, p2, v0}, Landroidx/core/view/m;->a(ILandroid/view/ViewParent;)V

    .line 155
    iget-object v3, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    .line 1248
    instance-of v4, v0, Landroidx/core/view/o;

    if-eqz v4, :cond_1

    .line 1250
    check-cast v0, Landroidx/core/view/o;

    invoke-interface {v0, v2, v3, p1, p2}, Landroidx/core/view/o;->b(Landroid/view/View;Landroid/view/View;II)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    .line 1254
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt p2, v4, :cond_2

    .line 1256
    :try_start_0
    invoke-interface {v0, v2, v3, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1258
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "ViewParent "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onNestedScrollAccepted"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ViewParentCompat"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1261
    :cond_2
    instance-of p2, v0, Landroidx/core/view/n;

    if-eqz p2, :cond_3

    .line 1262
    check-cast v0, Landroidx/core/view/n;

    invoke-interface {v0, v2, v3, p1}, Landroidx/core/view/n;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_3
    :goto_1
    return v1

    .line 158
    :cond_4
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_5

    .line 159
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 161
    :cond_5
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public final a(IIII[I)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 204
    invoke-direct/range {v0 .. v7}, Landroidx/core/view/m;->b(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public final a(II[I[I)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 288
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/m;->a(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final a(II[I[II)Z
    .locals 10

    .line 3086
    iget-boolean v0, p0, Landroidx/core/view/m;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 303
    invoke-direct {p0, p5}, Landroidx/core/view/m;->c(I)Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_8

    .line 331
    aput v1, p4, v1

    .line 332
    aput v1, p4, v0

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 312
    iget-object v3, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 313
    aget v3, p4, v1

    .line 314
    aget v4, p4, v0

    move v8, v3

    move v9, v4

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-nez p3, :cond_4

    .line 318
    invoke-direct {p0}, Landroidx/core/view/m;->a()[I

    move-result-object p3

    .line 320
    :cond_4
    aput v1, p3, v1

    .line 321
    aput v1, p3, v0

    .line 322
    iget-object v3, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    invoke-static/range {v2 .. v7}, Landroidx/core/view/x;->a(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz p4, :cond_5

    .line 325
    iget-object p1, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 326
    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    .line 327
    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    .line 329
    :cond_5
    aget p1, p3, v1

    if-nez p1, :cond_7

    aget p1, p3, v0

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    return v1

    :cond_7
    :goto_2
    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method public final b(I)V
    .locals 4

    .line 186
    invoke-direct {p0, p1}, Landroidx/core/view/m;->c(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 188
    iget-object v1, p0, Landroidx/core/view/m;->d:Landroid/view/View;

    .line 1282
    instance-of v2, v0, Landroidx/core/view/o;

    if-eqz v2, :cond_0

    .line 1284
    check-cast v0, Landroidx/core/view/o;

    invoke-interface {v0, v1, p1}, Landroidx/core/view/o;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 1287
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 1289
    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1291
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ViewParent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not implement interface method onStopNestedScroll"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ViewParentCompat"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1294
    :cond_1
    instance-of v2, v0, Landroidx/core/view/n;

    if-eqz v2, :cond_2

    .line 1295
    check-cast v0, Landroidx/core/view/n;

    invoke-interface {v0, v1}, Landroidx/core/view/n;->onStopNestedScroll(Landroid/view/View;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0}, Landroidx/core/view/m;->a(ILandroid/view/ViewParent;)V

    :cond_3
    return-void
.end method
