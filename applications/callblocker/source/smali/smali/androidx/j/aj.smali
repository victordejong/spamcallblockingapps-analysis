.class public abstract Landroidx/j/aj;
.super Landroidx/j/m;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/aj$a;,
        Landroidx/j/aj$b;
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/String;


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/j/aj;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Landroidx/j/m;-><init>()V

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Landroidx/j/aj;->i:I

    .line 101
    return-void
.end method

.method private b(Landroidx/j/s;Landroidx/j/s;)Landroidx/j/aj$b;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 195
    new-instance v1, Landroidx/j/aj$b;

    invoke-direct {v1}, Landroidx/j/aj$b;-><init>()V

    .line 196
    iput-boolean v4, v1, Landroidx/j/aj$b;->a:Z

    .line 197
    iput-boolean v4, v1, Landroidx/j/aj$b;->b:Z

    .line 198
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p1, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroidx/j/aj$b;->c:I

    .line 200
    iget-object v0, p1, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroidx/j/aj$b;->e:Landroid/view/ViewGroup;

    .line 205
    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p2, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroidx/j/aj$b;->d:I

    .line 207
    iget-object v0, p2, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroidx/j/aj$b;->f:Landroid/view/ViewGroup;

    .line 212
    :goto_1
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 213
    iget v0, v1, Landroidx/j/aj$b;->c:I

    iget v2, v1, Landroidx/j/aj$b;->d:I

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Landroidx/j/aj$b;->e:Landroid/view/ViewGroup;

    iget-object v2, v1, Landroidx/j/aj$b;->f:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_2

    move-object v0, v1

    .line 243
    :goto_2
    return-object v0

    .line 202
    :cond_0
    iput v5, v1, Landroidx/j/aj$b;->c:I

    .line 203
    iput-object v6, v1, Landroidx/j/aj$b;->e:Landroid/view/ViewGroup;

    goto :goto_0

    .line 209
    :cond_1
    iput v5, v1, Landroidx/j/aj$b;->d:I

    .line 210
    iput-object v6, v1, Landroidx/j/aj$b;->f:Landroid/view/ViewGroup;

    goto :goto_1

    .line 217
    :cond_2
    iget v0, v1, Landroidx/j/aj$b;->c:I

    iget v2, v1, Landroidx/j/aj$b;->d:I

    if-eq v0, v2, :cond_5

    .line 218
    iget v0, v1, Landroidx/j/aj$b;->c:I

    if-nez v0, :cond_4

    .line 219
    iput-boolean v4, v1, Landroidx/j/aj$b;->b:Z

    .line 220
    iput-boolean v3, v1, Landroidx/j/aj$b;->a:Z

    :cond_3
    :goto_3
    move-object v0, v1

    .line 243
    goto :goto_2

    .line 221
    :cond_4
    iget v0, v1, Landroidx/j/aj$b;->d:I

    if-nez v0, :cond_3

    .line 222
    iput-boolean v3, v1, Landroidx/j/aj$b;->b:Z

    .line 223
    iput-boolean v3, v1, Landroidx/j/aj$b;->a:Z

    goto :goto_3

    .line 227
    :cond_5
    iget-object v0, v1, Landroidx/j/aj$b;->f:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 228
    iput-boolean v4, v1, Landroidx/j/aj$b;->b:Z

    .line 229
    iput-boolean v3, v1, Landroidx/j/aj$b;->a:Z

    goto :goto_3

    .line 230
    :cond_6
    iget-object v0, v1, Landroidx/j/aj$b;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 231
    iput-boolean v3, v1, Landroidx/j/aj$b;->b:Z

    .line 232
    iput-boolean v3, v1, Landroidx/j/aj$b;->a:Z

    goto :goto_3

    .line 236
    :cond_7
    if-nez p1, :cond_8

    iget v0, v1, Landroidx/j/aj$b;->d:I

    if-nez v0, :cond_8

    .line 237
    iput-boolean v3, v1, Landroidx/j/aj$b;->b:Z

    .line 238
    iput-boolean v3, v1, Landroidx/j/aj$b;->a:Z

    goto :goto_3

    .line 239
    :cond_8
    if-nez p2, :cond_3

    iget v0, v1, Landroidx/j/aj$b;->c:I

    if-nez v0, :cond_3

    .line 240
    iput-boolean v4, v1, Landroidx/j/aj$b;->b:Z

    .line 241
    iput-boolean v3, v1, Landroidx/j/aj$b;->a:Z

    goto :goto_3
.end method

.method private d(Landroidx/j/s;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p1, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 151
    iget-object v1, p1, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p1, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v1, "android:visibility:parent"

    iget-object v2, p1, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 154
    iget-object v1, p1, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    iget-object v1, p1, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:screenLocation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Landroidx/j/s;ILandroidx/j/s;I)Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 283
    iget v0, p0, Landroidx/j/aj;->i:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v1

    .line 297
    :goto_0
    return-object v0

    .line 286
    :cond_1
    if-nez p2, :cond_2

    .line 287
    iget-object v0, p4, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 288
    invoke-virtual {p0, v0, v3}, Landroidx/j/aj;->b(Landroid/view/View;Z)Landroidx/j/s;

    move-result-object v2

    .line 290
    invoke-virtual {p0, v0, v3}, Landroidx/j/aj;->a(Landroid/view/View;Z)Landroidx/j/s;

    move-result-object v0

    .line 292
    invoke-direct {p0, v2, v0}, Landroidx/j/aj;->b(Landroidx/j/s;Landroidx/j/s;)Landroidx/j/aj$b;

    move-result-object v0

    .line 293
    iget-boolean v0, v0, Landroidx/j/aj$b;->a:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 294
    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p4, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroidx/j/aj;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 250
    invoke-direct {p0, p2, p3}, Landroidx/j/aj;->b(Landroidx/j/s;Landroidx/j/s;)Landroidx/j/aj$b;

    move-result-object v0

    .line 251
    iget-boolean v1, v0, Landroidx/j/aj$b;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/j/aj$b;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/j/aj$b;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 253
    :cond_0
    iget-boolean v1, v0, Landroidx/j/aj$b;->b:Z

    if-eqz v1, :cond_1

    .line 254
    iget v3, v0, Landroidx/j/aj$b;->c:I

    iget v5, v0, Landroidx/j/aj$b;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/j/aj;->a(Landroid/view/ViewGroup;Landroidx/j/s;ILandroidx/j/s;I)Landroid/animation/Animator;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    .line 257
    :cond_1
    iget v3, v0, Landroidx/j/aj$b;->c:I

    iget v5, v0, Landroidx/j/aj$b;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/j/aj;->b(Landroid/view/ViewGroup;Landroidx/j/s;ILandroidx/j/s;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 126
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iput p1, p0, Landroidx/j/aj;->i:I

    .line 130
    return-void
.end method

.method public a(Landroidx/j/s;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Landroidx/j/aj;->d(Landroidx/j/s;)V

    .line 161
    return-void
.end method

.method public a(Landroidx/j/s;Landroidx/j/s;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 507
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v0

    .line 510
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p2, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    .line 511
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:visibility"

    .line 512
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 517
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/j/aj;->b(Landroidx/j/s;Landroidx/j/s;)Landroidx/j/aj$b;

    move-result-object v1

    .line 518
    iget-boolean v2, v1, Landroidx/j/aj$b;->a:Z

    if-eqz v2, :cond_0

    iget v2, v1, Landroidx/j/aj$b;->c:I

    if-eqz v2, :cond_3

    iget v1, v1, Landroidx/j/aj$b;->d:I

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Landroidx/j/aj;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;Landroidx/j/s;ILandroidx/j/s;I)Landroid/animation/Animator;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 340
    iget v0, p0, Landroidx/j/aj;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eq v0, v9, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-object v2

    .line 344
    :cond_1
    if-eqz p2, :cond_0

    .line 349
    iget-object v7, p2, Landroidx/j/s;->b:Landroid/view/View;

    .line 350
    if-eqz p4, :cond_3

    iget-object v0, p4, Landroidx/j/s;->b:Landroid/view/View;

    move-object v1, v0

    .line 355
    :goto_1
    sget v0, Landroidx/j/j$a;->save_overlay_view:I

    invoke-virtual {v7, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 356
    if-eqz v0, :cond_4

    move v1, v3

    move-object v5, v2

    move-object v6, v0

    .line 419
    :goto_2
    if-eqz v6, :cond_d

    .line 420
    if-nez v1, :cond_2

    .line 421
    iget-object v0, p2, Landroidx/j/s;->a:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:screenLocation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 422
    aget v2, v0, v4

    .line 423
    aget v0, v0, v3

    .line 424
    new-array v5, v9, [I

    .line 425
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 426
    aget v4, v5, v4

    sub-int/2addr v2, v4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v6, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 427
    aget v2, v5, v3

    sub-int/2addr v0, v2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 428
    invoke-static {p1}, Landroidx/j/x;->a(Landroid/view/ViewGroup;)Landroidx/j/w;

    move-result-object v0

    invoke-interface {v0, v6}, Landroidx/j/w;->a(Landroid/view/View;)V

    .line 430
    :cond_2
    invoke-virtual {p0, p1, v6, p2, p4}, Landroidx/j/aj;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;

    move-result-object v2

    .line 431
    if-nez v1, :cond_0

    .line 432
    if-nez v2, :cond_c

    .line 433
    invoke-static {p1}, Landroidx/j/x;->a(Landroid/view/ViewGroup;)Landroidx/j/w;

    move-result-object v0

    invoke-interface {v0, v6}, Landroidx/j/w;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 350
    goto :goto_1

    .line 365
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 366
    :cond_5
    if-eqz v1, :cond_6

    move v0, v4

    move-object v5, v2

    move-object v6, v1

    .line 386
    :goto_3
    if-eqz v0, :cond_f

    .line 390
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a

    move v1, v4

    move-object v6, v7

    .line 392
    goto :goto_2

    :cond_6
    move v0, v3

    move-object v5, v2

    move-object v6, v2

    .line 370
    goto :goto_3

    .line 374
    :cond_7
    const/4 v0, 0x4

    if-ne p5, v0, :cond_8

    move v0, v4

    move-object v5, v1

    move-object v6, v2

    .line 375
    goto :goto_3

    .line 378
    :cond_8
    if-ne v7, v1, :cond_9

    move v0, v4

    move-object v5, v1

    move-object v6, v2

    .line 379
    goto :goto_3

    :cond_9
    move v0, v3

    move-object v5, v2

    move-object v6, v2

    .line 381
    goto :goto_3

    .line 393
    :cond_a
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_f

    .line 394
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 395
    invoke-virtual {p0, v0, v3}, Landroidx/j/aj;->a(Landroid/view/View;Z)Landroidx/j/s;

    move-result-object v1

    .line 396
    invoke-virtual {p0, v0, v3}, Landroidx/j/aj;->b(Landroid/view/View;Z)Landroidx/j/s;

    move-result-object v8

    .line 399
    invoke-direct {p0, v1, v8}, Landroidx/j/aj;->b(Landroidx/j/s;Landroidx/j/s;)Landroidx/j/aj$b;

    move-result-object v1

    .line 400
    iget-boolean v1, v1, Landroidx/j/aj$b;->a:Z

    if-nez v1, :cond_b

    .line 401
    invoke-static {p1, v7, v0}, Landroidx/j/r;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    move v1, v4

    move-object v6, v0

    goto/16 :goto_2

    .line 404
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 405
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, -0x1

    if-eq v1, v0, :cond_f

    .line 406
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroidx/j/aj;->e:Z

    if-eqz v0, :cond_f

    move v1, v4

    move-object v6, v7

    .line 410
    goto/16 :goto_2

    .line 435
    :cond_c
    sget v0, Landroidx/j/j$a;->save_overlay_view:I

    invoke-virtual {v7, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 438
    new-instance v0, Landroidx/j/aj$1;

    invoke-direct {v0, p0, p1, v6, v7}, Landroidx/j/aj$1;-><init>(Landroidx/j/aj;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroidx/j/aj;->a(Landroidx/j/m$c;)Landroidx/j/m;

    goto/16 :goto_0

    .line 466
    :cond_d
    if-eqz v5, :cond_0

    .line 467
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 468
    invoke-static {v5, v4}, Landroidx/j/ac;->a(Landroid/view/View;I)V

    .line 469
    invoke-virtual {p0, p1, v5, p2, p4}, Landroidx/j/aj;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/s;Landroidx/j/s;)Landroid/animation/Animator;

    move-result-object v2

    .line 470
    if-eqz v2, :cond_e

    .line 471
    new-instance v0, Landroidx/j/aj$a;

    invoke-direct {v0, v5, p5, v3}, Landroidx/j/aj$a;-><init>(Landroid/view/View;IZ)V

    .line 473
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 474
    invoke-static {v2, v0}, Landroidx/j/a;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 475
    invoke-virtual {p0, v0}, Landroidx/j/aj;->a(Landroidx/j/m$c;)Landroidx/j/m;

    goto/16 :goto_0

    .line 477
    :cond_e
    invoke-static {v5, v0}, Landroidx/j/ac;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_f
    move v1, v4

    goto/16 :goto_2
.end method

.method public b(Landroidx/j/s;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Landroidx/j/aj;->d(Landroidx/j/s;)V

    .line 166
    return-void
.end method
