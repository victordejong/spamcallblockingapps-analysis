.class public Landroidx/core/h/l;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private a:Landroid/view/ViewParent;

.field private b:Landroid/view/ViewParent;

.field private final c:Landroid/view/View;

.field private d:Z

.field private e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    .line 58
    return-void
.end method

.method private a(ILandroid/view/ViewParent;)V
    .locals 0

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_0

    .line 422
    :goto_0
    return-void

    .line 416
    :pswitch_0
    iput-object p2, p0, Landroidx/core/h/l;->a:Landroid/view/ViewParent;

    goto :goto_0

    .line 419
    :pswitch_1
    iput-object p2, p0, Landroidx/core/h/l;->b:Landroid/view/ViewParent;

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(IIII[II[I)Z
    .locals 11

    .prologue
    .line 238
    invoke-virtual {p0}, Landroidx/core/h/l;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    move/from16 v0, p6

    invoke-direct {p0, v0}, Landroidx/core/h/l;->d(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 240
    if-nez v1, :cond_0

    .line 241
    const/4 v1, 0x0

    .line 274
    :goto_0
    return v1

    .line 244
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_3

    .line 245
    :cond_1
    const/4 v3, 0x0

    .line 246
    const/4 v2, 0x0

    .line 247
    if-eqz p5, :cond_6

    .line 248
    iget-object v2, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 249
    const/4 v2, 0x0

    aget v3, p5, v2

    .line 250
    const/4 v2, 0x1

    aget v2, p5, v2

    move v9, v2

    move v10, v3

    .line 253
    :goto_1
    if-nez p7, :cond_5

    .line 254
    invoke-direct {p0}, Landroidx/core/h/l;->d()[I

    move-result-object v8

    .line 255
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v8, v2

    .line 256
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v8, v2

    .line 259
    :goto_2
    iget-object v2, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p6

    invoke-static/range {v1 .. v8}, Landroidx/core/h/x;->a(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    .line 262
    if-eqz p5, :cond_2

    .line 263
    iget-object v1, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 264
    const/4 v1, 0x0

    aget v2, p5, v1

    sub-int/2addr v2, v10

    aput v2, p5, v1

    .line 265
    const/4 v1, 0x1

    aget v2, p5, v1

    sub-int/2addr v2, v9

    aput v2, p5, v1

    .line 267
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 268
    :cond_3
    if-eqz p5, :cond_4

    .line 270
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p5, v1

    .line 271
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p5, v1

    .line 274
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v8, p7

    goto :goto_2

    :cond_6
    move v9, v2

    move v10, v3

    goto :goto_1
.end method

.method private d(I)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 404
    packed-switch p1, :pswitch_data_0

    .line 410
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 406
    :pswitch_0
    iget-object v0, p0, Landroidx/core/h/l;->a:Landroid/view/ViewParent;

    goto :goto_0

    .line 408
    :pswitch_1
    iget-object v0, p0, Landroidx/core/h/l;->b:Landroid/view/ViewParent;

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d()[I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroidx/core/h/l;->e:[I

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/core/h/l;->e:[I

    .line 428
    :cond_0
    iget-object v0, p0, Landroidx/core/h/l;->e:[I

    return-object v0
.end method


# virtual methods
.method public a(IIII[II[I)V
    .locals 0

    .prologue
    .line 231
    invoke-direct/range {p0 .. p7}, Landroidx/core/h/l;->b(IIII[II[I)Z

    .line 233
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Landroidx/core/h/l;->d:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/h/u;->x(Landroid/view/View;)V

    .line 73
    :cond_0
    iput-boolean p1, p0, Landroidx/core/h/l;->d:Z

    .line 74
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Landroidx/core/h/l;->d:Z

    return v0
.end method

.method public a(FF)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0}, Landroidx/core/h/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-direct {p0, v0}, Landroidx/core/h/l;->d(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_0

    .line 371
    iget-object v0, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    invoke-static {v1, v0, p1, p2}, Landroidx/core/h/x;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    .line 375
    :cond_0
    return v0
.end method

.method public a(FFZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0}, Landroidx/core/h/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-direct {p0, v0}, Landroidx/core/h/l;->d(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_0

    .line 351
    iget-object v0, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    invoke-static {v1, v0, p1, p2, p3}, Landroidx/core/h/x;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    .line 355
    :cond_0
    return v0
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroidx/core/h/l;->d(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 145
    invoke-virtual {p0, p2}, Landroidx/core/h/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 164
    :goto_0
    return v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroidx/core/h/l;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 151
    iget-object v0, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    .line 152
    :goto_1
    if-eqz v1, :cond_3

    .line 153
    iget-object v3, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    invoke-static {v1, v0, v3, p1, p2}, Landroidx/core/h/x;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-direct {p0, p2, v1}, Landroidx/core/h/l;->a(ILandroid/view/ViewParent;)V

    .line 155
    iget-object v3, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    invoke-static {v1, v0, v3, p1, p2}, Landroidx/core/h/x;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    move v0, v2

    .line 156
    goto :goto_0

    .line 158
    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 159
    check-cast v0, Landroid/view/View;

    .line 161
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 164
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IIII[I)Z
    .locals 8

    .prologue
    .line 204
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Landroidx/core/h/l;->b(IIII[II[I)Z

    move-result v0

    return v0
.end method

.method public a(IIII[II)Z
    .locals 8

    .prologue
    .line 218
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/core/h/l;->b(IIII[II[I)Z

    move-result v0

    return v0
.end method

.method public a(II[I[I)Z
    .locals 6

    .prologue
    .line 288
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/h/l;->a(II[I[II)Z

    move-result v0

    return v0
.end method

.method public a(II[I[II)Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 302
    invoke-virtual {p0}, Landroidx/core/h/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0, p5}, Landroidx/core/h/l;->d(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 304
    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v6

    .line 308
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_6

    .line 311
    :cond_2
    if-eqz p4, :cond_8

    .line 312
    iget-object v1, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 313
    aget v2, p4, v6

    .line 314
    aget v1, p4, v7

    move v8, v1

    move v9, v2

    .line 317
    :goto_1
    if-nez p3, :cond_7

    .line 318
    invoke-direct {p0}, Landroidx/core/h/l;->d()[I

    move-result-object v4

    .line 320
    :goto_2
    aput v6, v4, v6

    .line 321
    aput v6, v4, v7

    .line 322
    iget-object v1, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/core/h/x;->a(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 324
    if-eqz p4, :cond_3

    .line 325
    iget-object v0, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 326
    aget v0, p4, v6

    sub-int/2addr v0, v9

    aput v0, p4, v6

    .line 327
    aget v0, p4, v7

    sub-int/2addr v0, v8

    aput v0, p4, v7

    .line 329
    :cond_3
    aget v0, v4, v6

    if-nez v0, :cond_4

    aget v0, v4, v7

    if-eqz v0, :cond_5

    :cond_4
    move v0, v7

    :goto_3
    move v6, v0

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_3

    .line 330
    :cond_6
    if-eqz p4, :cond_0

    .line 331
    aput v6, p4, v6

    .line 332
    aput v6, p4, v7

    goto :goto_0

    :cond_7
    move-object v4, p3

    goto :goto_2

    :cond_8
    move v8, v6

    move v9, v6

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/h/l;->a(I)Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/h/l;->a(II)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/h/l;->c(I)V

    .line 176
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 186
    invoke-direct {p0, p1}, Landroidx/core/h/l;->d(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Landroidx/core/h/l;->c:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/h/x;->a(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/h/l;->a(ILandroid/view/ViewParent;)V

    .line 191
    :cond_0
    return-void
.end method
