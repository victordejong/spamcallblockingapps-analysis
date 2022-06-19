.class Landroidx/recyclerview/widget/a;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/a$a;,
        Landroidx/recyclerview/widget/a$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroidx/recyclerview/widget/a$a;

.field d:Ljava/lang/Runnable;

.field final e:Z

.field final f:Landroidx/recyclerview/widget/j;

.field private g:Landroidx/core/g/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/g/e$a",
            "<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/a$a;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/a;-><init>(Landroidx/recyclerview/widget/a$a;Z)V

    .line 73
    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/a$a;Z)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroidx/core/g/e$b;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroidx/core/g/e$b;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->g:Landroidx/core/g/e$a;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/a;->h:I

    .line 76
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    .line 77
    iput-boolean p2, p0, Landroidx/recyclerview/widget/a;->e:Z

    .line 78
    new-instance v0, Landroidx/recyclerview/widget/j;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/j;-><init>(Landroidx/recyclerview/widget/j$a;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->f:Landroidx/recyclerview/widget/j;

    .line 79
    return-void
.end method

.method private b(Landroidx/recyclerview/widget/a$b;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    .line 131
    return-void
.end method

.method private c(II)I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 330
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 331
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, p1

    :goto_0
    if-ltz v4, :cond_e

    .line 332
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 333
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v2, v7, :cond_a

    .line 335
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, v0, Landroidx/recyclerview/widget/a$b;->d:I

    if-ge v2, v3, :cond_2

    .line 336
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->b:I

    .line 337
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->d:I

    .line 342
    :goto_1
    if-lt v1, v3, :cond_7

    if-gt v1, v2, :cond_7

    .line 344
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v3, v2, :cond_4

    .line 345
    if-ne p2, v5, :cond_3

    .line 346
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/recyclerview/widget/a$b;->d:I

    .line 351
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 331
    :cond_1
    :goto_4
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    .line 339
    :cond_2
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->d:I

    .line 340
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_1

    .line 347
    :cond_3
    if-ne p2, v6, :cond_0

    .line 348
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_2

    .line 353
    :cond_4
    if-ne p2, v5, :cond_6

    .line 354
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    .line 359
    :cond_5
    :goto_5
    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    .line 355
    :cond_6
    if-ne p2, v6, :cond_5

    .line 356
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_5

    .line 361
    :cond_7
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v1, v2, :cond_9

    .line 363
    if-ne p2, v5, :cond_8

    .line 364
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    .line 365
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/recyclerview/widget/a$b;->d:I

    move v0, v1

    goto :goto_3

    .line 366
    :cond_8
    if-ne p2, v6, :cond_9

    .line 367
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    .line 368
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/recyclerview/widget/a$b;->d:I

    :cond_9
    move v0, v1

    goto :goto_3

    .line 372
    :cond_a
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v2, v1, :cond_c

    .line 373
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v2, v5, :cond_b

    .line 374
    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v1, v0

    goto :goto_4

    .line 375
    :cond_b
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v2, v6, :cond_1

    .line 376
    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v0

    goto :goto_4

    .line 379
    :cond_c
    if-ne p2, v5, :cond_d

    .line 380
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_4

    .line 381
    :cond_d
    if-ne p2, v6, :cond_1

    .line 382
    iget v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_4

    .line 395
    :cond_e
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_6
    if-ltz v2, :cond_12

    .line 396
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 397
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v3, v7, :cond_11

    .line 398
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->d:I

    iget v4, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-eq v3, v4, :cond_f

    iget v3, v0, Landroidx/recyclerview/widget/a$b;->d:I

    if-gez v3, :cond_10

    .line 399
    :cond_f
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 400
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 395
    :cond_10
    :goto_7
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_6

    .line 402
    :cond_11
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->d:I

    if-gtz v3, :cond_10

    .line 403
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 404
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_7

    .line 407
    :cond_12
    return v1
.end method

.method private c(Landroidx/recyclerview/widget/a$b;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 134
    iget v7, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 136
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p1, Landroidx/recyclerview/widget/a$b;->d:I

    add-int v4, v0, v3

    .line 137
    const/4 v6, -0x1

    .line 138
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->b:I

    move v5, v2

    :goto_0
    if-ge v3, v4, :cond_3

    .line 140
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v0, v3}, Landroidx/recyclerview/widget/a$a;->a(I)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    if-nez v6, :cond_7

    .line 151
    invoke-virtual {p0, v8, v7, v5, v9}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v0

    .line 152
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/a;->e(Landroidx/recyclerview/widget/a$b;)V

    move v0, v1

    :goto_1
    move v6, v1

    .line 168
    :goto_2
    if-eqz v0, :cond_2

    .line 169
    sub-int v0, v3, v5

    .line 170
    sub-int v3, v4, v5

    move v4, v3

    move v5, v1

    .line 138
    :goto_3
    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    if-ne v6, v1, :cond_6

    .line 162
    invoke-virtual {p0, v8, v7, v5, v9}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v0

    .line 163
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    move v0, v1

    :goto_4
    move v6, v2

    .line 166
    goto :goto_2

    .line 173
    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v0, v3

    goto :goto_3

    .line 176
    :cond_3
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq v5, v0, :cond_4

    .line 177
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 178
    invoke-virtual {p0, v8, v7, v5, v9}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    .line 180
    :cond_4
    if-nez v6, :cond_5

    .line 181
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->e(Landroidx/recyclerview/widget/a$b;)V

    .line 185
    :goto_5
    return-void

    .line 183
    :cond_5
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private d(Landroidx/recyclerview/widget/a$b;)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 188
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 190
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p1, Landroidx/recyclerview/widget/a$b;->d:I

    add-int v6, v0, v3

    .line 191
    const/4 v4, -0x1

    .line 192
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->b:I

    move v0, v1

    :goto_0
    if-ge v3, v6, :cond_4

    .line 193
    iget-object v7, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v7, v3}, Landroidx/recyclerview/widget/a$a;->a(I)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object v7

    .line 194
    if-nez v7, :cond_0

    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/a;->d(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 195
    :cond_0
    if-nez v4, :cond_1

    .line 196
    iget-object v4, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v4}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/a;->e(Landroidx/recyclerview/widget/a$b;)V

    move v0, v1

    move v2, v3

    :cond_1
    move v4, v5

    .line 213
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_2
    if-ne v4, v5, :cond_3

    .line 205
    iget-object v4, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v4}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v0

    .line 207
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    move v0, v1

    move v2, v3

    :cond_3
    move v4, v1

    .line 211
    goto :goto_1

    .line 215
    :cond_4
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq v0, v1, :cond_5

    .line 216
    iget-object v1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 217
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 218
    invoke-virtual {p0, v8, v2, v0, v1}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    .line 220
    :cond_5
    if-nez v4, :cond_6

    .line 221
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->e(Landroidx/recyclerview/widget/a$b;)V

    .line 225
    :goto_2
    return-void

    .line 223
    :cond_6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_2
.end method

.method private d(I)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 411
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 412
    :goto_0
    if-ge v3, v4, :cond_3

    .line 413
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 414
    iget v5, v0, Landroidx/recyclerview/widget/a$b;->a:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 415
    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v0, v5}, Landroidx/recyclerview/widget/a;->a(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    move v0, v1

    .line 428
    :goto_1
    return v0

    .line 418
    :cond_0
    iget v5, v0, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v5, v1, :cond_2

    .line 420
    iget v5, v0, Landroidx/recyclerview/widget/a$b;->b:I

    iget v6, v0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v5, v6

    .line 421
    iget v0, v0, Landroidx/recyclerview/widget/a$b;->b:I

    :goto_2
    if-ge v0, v5, :cond_2

    .line 422
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v0, v6}, Landroidx/recyclerview/widget/a;->a(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    move v0, v1

    .line 423
    goto :goto_1

    .line 421
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 412
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 428
    goto :goto_1
.end method

.method private e(Landroidx/recyclerview/widget/a$b;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p1, Landroidx/recyclerview/widget/a$b;->a:I

    invoke-direct {p0, v0, v3}, Landroidx/recyclerview/widget/a;->c(II)I

    move-result v6

    .line 250
    iget v4, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 252
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 260
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v1

    :goto_0
    move v3, v1

    move v5, v1

    .line 262
    :goto_1
    iget v7, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-ge v3, v7, :cond_6

    .line 263
    iget v7, p1, Landroidx/recyclerview/widget/a$b;->b:I

    mul-int v8, v0, v3

    add-int/2addr v7, v8

    .line 264
    iget v8, p1, Landroidx/recyclerview/widget/a$b;->a:I

    invoke-direct {p0, v7, v8}, Landroidx/recyclerview/widget/a;->c(II)I

    move-result v8

    .line 269
    iget v7, p1, Landroidx/recyclerview/widget/a$b;->a:I

    packed-switch v7, :pswitch_data_1

    :pswitch_2
    move v7, v2

    .line 277
    :goto_2
    if-eqz v7, :cond_4

    .line 278
    add-int/lit8 v5, v5, 0x1

    .line 262
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_3
    move v0, v2

    .line 258
    goto :goto_0

    .line 271
    :pswitch_4
    add-int/lit8 v7, v6, 0x1

    if-ne v8, v7, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_2

    .line 274
    :pswitch_5
    if-ne v8, v6, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_2

    .line 281
    :cond_4
    iget v7, p1, Landroidx/recyclerview/widget/a$b;->a:I

    iget-object v9, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6, v5, v9}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v6

    .line 285
    invoke-virtual {p0, v6, v4}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;I)V

    .line 286
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 287
    iget v6, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 288
    add-int/2addr v4, v5

    :cond_5
    move v5, v1

    move v6, v8

    .line 291
    goto :goto_3

    .line 294
    :cond_6
    iget-object v0, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 295
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 296
    if-lez v5, :cond_7

    .line 297
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->a:I

    invoke-virtual {p0, v1, v6, v5, v0}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v0

    .line 301
    invoke-virtual {p0, v0, v4}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;I)V

    .line 302
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 312
    :cond_7
    return-void

    .line 252
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 269
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private f(Landroidx/recyclerview/widget/a$b;)V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    .line 433
    return-void
.end method

.method private g(Landroidx/recyclerview/widget/a$b;)V
    .locals 4

    .prologue
    .line 439
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 455
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/a$a;->c(II)V

    .line 457
    :goto_0
    return-void

    .line 445
    :pswitch_2
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/a$a;->d(II)V

    goto :goto_0

    .line 448
    :pswitch_3
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/a$a;->b(II)V

    goto :goto_0

    .line 452
    :pswitch_4
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p1, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object v3, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroidx/recyclerview/widget/a$a;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a(II)I
    .locals 5

    .prologue
    .line 472
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    .line 473
    :goto_0
    if-ge p2, v2, :cond_4

    .line 474
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 475
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 476
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v3, v1, :cond_1

    .line 477
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->d:I

    .line 473
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 479
    :cond_1
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v3, v1, :cond_2

    .line 480
    add-int/lit8 v1, v1, -0x1

    .line 482
    :cond_2
    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    if-gt v0, v1, :cond_0

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 486
    :cond_3
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v3, v1, :cond_0

    .line 487
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 488
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->b:I

    iget v4, v0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    .line 489
    const/4 v1, -0x1

    .line 497
    :cond_4
    return v1

    .line 491
    :cond_5
    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v1, v0

    goto :goto_1

    .line 492
    :cond_6
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 493
    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->g:Landroidx/core/g/e$a;

    invoke-interface {v0}, Landroidx/core/g/e$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 728
    if-nez v0, :cond_0

    .line 729
    new-instance v0, Landroidx/recyclerview/widget/a$b;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/a$b;-><init>(IIILjava/lang/Object;)V

    .line 736
    :goto_0
    return-object v0

    .line 731
    :cond_0
    iput p1, v0, Landroidx/recyclerview/widget/a$b;->a:I

    .line 732
    iput p2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    .line 733
    iput p3, v0, Landroidx/recyclerview/widget/a$b;->d:I

    .line 734
    iput-object p4, v0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    goto :goto_0
.end method

.method a()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Ljava/util/List;)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/a;->h:I

    .line 90
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/a$b;)V
    .locals 1

    .prologue
    .line 741
    iget-boolean v0, p0, Landroidx/recyclerview/widget/a;->e:Z

    if-nez v0, :cond_0

    .line 742
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->g:Landroidx/core/g/e$a;

    invoke-interface {v0, p1}, Landroidx/core/g/e$a;->a(Ljava/lang/Object;)Z

    .line 745
    :cond_0
    return-void
.end method

.method a(Landroidx/recyclerview/widget/a$b;I)V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/a$a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 316
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 324
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, p2, v1}, Landroidx/recyclerview/widget/a$a;->a(II)V

    .line 327
    :goto_0
    return-void

    .line 321
    :pswitch_2
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object v2, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, v2}, Landroidx/recyclerview/widget/a$a;->a(IILjava/lang/Object;)V

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 748
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 749
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 750
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    .line 749
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 752
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 753
    return-void
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Landroidx/recyclerview/widget/a;->h:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(IILjava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 504
    if-ge p2, v0, :cond_0

    .line 509
    :goto_0
    return v1

    .line 507
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget v2, p0, Landroidx/recyclerview/widget/a;->h:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Landroidx/recyclerview/widget/a;->h:I

    .line 509
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method b(I)I
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/a;->a(II)I

    move-result v0

    return v0
.end method

.method b()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->f:Landroidx/recyclerview/widget/j;

    iget-object v1, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/j;->a(Ljava/util/List;)V

    .line 94
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 95
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 96
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 97
    iget v3, v0, Landroidx/recyclerview/widget/a$b;->a:I

    packed-switch v3, :pswitch_data_0

    .line 111
    :goto_1
    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 95
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/a;->f(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_1

    .line 102
    :pswitch_2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/a;->c(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_1

    .line 105
    :pswitch_3
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_1

    .line 108
    :pswitch_4
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/a;->b(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_1

    .line 115
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    return-void

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method b(II)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 528
    if-ge p2, v0, :cond_0

    .line 533
    :goto_0
    return v1

    .line 531
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, p2, v4}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget v2, p0, Landroidx/recyclerview/widget/a;->h:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroidx/recyclerview/widget/a;->h:I

    .line 533
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public c(I)I
    .locals 6

    .prologue
    .line 588
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 589
    const/4 v0, 0x0

    move v2, v0

    move v1, p1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 590
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 591
    iget v4, v0, Landroidx/recyclerview/widget/a$b;->a:I

    sparse-switch v4, :sswitch_data_0

    .line 589
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 593
    :sswitch_0
    iget v4, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v4, v1, :cond_0

    .line 594
    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v0

    goto :goto_1

    .line 598
    :sswitch_1
    iget v4, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v4, v1, :cond_0

    .line 599
    iget v4, v0, Landroidx/recyclerview/widget/a$b;->b:I

    iget v5, v0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v4, v5

    .line 600
    if-le v4, v1, :cond_2

    .line 601
    const/4 v1, -0x1

    .line 620
    :cond_1
    return v1

    .line 603
    :cond_2
    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v1, v0

    .line 604
    goto :goto_1

    .line 607
    :sswitch_2
    iget v4, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v4, v1, :cond_3

    .line 608
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_1

    .line 610
    :cond_3
    iget v4, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v4, v1, :cond_4

    .line 611
    add-int/lit8 v1, v1, -0x1

    .line 613
    :cond_4
    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    if-gt v0, v1, :cond_0

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 591
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 120
    :goto_0
    if-ge v1, v3, :cond_0

    .line 121
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    .line 120
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Ljava/util/List;)V

    .line 124
    iput v2, p0, Landroidx/recyclerview/widget/a;->h:I

    .line 125
    return-void
.end method

.method d()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 557
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->c()V

    .line 558
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 559
    :goto_0
    if-ge v1, v3, :cond_1

    .line 560
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    .line 561
    iget v4, v0, Landroidx/recyclerview/widget/a$b;->a:I

    packed-switch v4, :pswitch_data_0

    .line 579
    :goto_1
    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 559
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 563
    :pswitch_1
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    .line 564
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    iget v5, v0, Landroidx/recyclerview/widget/a$b;->b:I

    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v4, v5, v0}, Landroidx/recyclerview/widget/a$a;->c(II)V

    goto :goto_1

    .line 567
    :pswitch_2
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    .line 568
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    iget v5, v0, Landroidx/recyclerview/widget/a$b;->b:I

    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v4, v5, v0}, Landroidx/recyclerview/widget/a$a;->a(II)V

    goto :goto_1

    .line 571
    :pswitch_3
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    .line 572
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    iget v5, v0, Landroidx/recyclerview/widget/a$b;->b:I

    iget v6, v0, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object v0, v0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v0}, Landroidx/recyclerview/widget/a$a;->a(IILjava/lang/Object;)V

    goto :goto_1

    .line 575
    :pswitch_4
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v0}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    .line 576
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Landroidx/recyclerview/widget/a$a;

    iget v5, v0, Landroidx/recyclerview/widget/a$b;->b:I

    iget v0, v0, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v4, v5, v0}, Landroidx/recyclerview/widget/a$a;->d(II)V

    goto :goto_1

    .line 583
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Ljava/util/List;)V

    .line 584
    iput v2, p0, Landroidx/recyclerview/widget/a;->h:I

    .line 585
    return-void

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method f()Z
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
