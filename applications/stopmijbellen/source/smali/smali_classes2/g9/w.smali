.class public Lg9/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lg9/s;

.field public final b:Lg9/v$b;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lg9/w;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lg9/s;Landroid/net/Uri;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg9/w;->a:Lg9/s;

    .line 3
    new-instance v0, Lg9/v$b;

    iget-object p1, p1, Lg9/s;->k:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Lg9/v$b;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lg9/w;->b:Lg9/v$b;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget v0, p0, Lg9/w;->c:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lg9/w;->a:Lg9/s;

    iget-object v1, v1, Lg9/s;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/widget/ImageView;Lg9/e;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    invoke-static {}, Lg9/d0;->a()V

    if-eqz v3, :cond_f

    .line 3
    iget-object v4, v0, Lg9/w;->b:Lg9/v$b;

    .line 4
    iget-object v5, v4, Lg9/v$b;->a:Landroid/net/Uri;

    if-nez v5, :cond_1

    iget v4, v4, Lg9/v$b;->b:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_2

    .line 5
    iget-object v1, v0, Lg9/w;->a:Lg9/s;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, v3}, Lg9/s;->a(Ljava/lang/Object;)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lg9/w;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lg9/t;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 8
    :cond_2
    sget-object v4, Lg9/w;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 9
    iget-object v5, v0, Lg9/w;->b:Lg9/v$b;

    .line 10
    iget v7, v5, Lg9/v$b;->g:I

    if-nez v7, :cond_3

    const/4 v7, 0x2

    .line 11
    iput v7, v5, Lg9/v$b;->g:I

    .line 12
    :cond_3
    new-instance v7, Lg9/v;

    move-object v8, v7

    iget-object v15, v5, Lg9/v$b;->a:Landroid/net/Uri;

    move-object v9, v15

    iget v11, v5, Lg9/v$b;->b:I

    move v10, v11

    iget-object v12, v5, Lg9/v$b;->e:Ljava/util/List;

    iget v13, v5, Lg9/v$b;->c:I

    iget v14, v5, Lg9/v$b;->d:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v6, v5, Lg9/v$b;->f:Landroid/graphics/Bitmap$Config;

    move-object/from16 v24, v6

    iget v5, v5, Lg9/v$b;->g:I

    move/from16 v25, v5

    const/16 v26, 0x0

    const/4 v5, 0x0

    move v6, v11

    move-object v11, v5

    const/4 v5, 0x0

    move-object/from16 v27, v15

    move v15, v5

    invoke-direct/range {v8 .. v26}, Lg9/v;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZIZFFFZZLandroid/graphics/Bitmap$Config;ILg9/v$a;)V

    .line 13
    iput v4, v7, Lg9/v;->a:I

    .line 14
    iput-wide v1, v7, Lg9/v;->b:J

    .line 15
    iget-object v1, v0, Lg9/w;->a:Lg9/s;

    iget-boolean v1, v1, Lg9/s;->m:Z

    const-string v8, "Main"

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v7}, Lg9/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lg9/v;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "created"

    invoke-static {v8, v4, v1, v2}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_4
    iget-object v1, v0, Lg9/w;->a:Lg9/s;

    .line 18
    iget-object v1, v1, Lg9/s;->b:Lg9/s$e;

    check-cast v1, Lg9/s$e$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lg9/d0;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    if-eqz v27, :cond_5

    .line 20
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 24
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v2, 0xa

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    iget v4, v7, Lg9/v;->l:F

    const/4 v5, 0x0

    const/16 v6, 0x78

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_7

    const-string v4, "rotation:"

    .line 27
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lg9/v;->l:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    iget-boolean v4, v7, Lg9/v;->o:Z

    if-eqz v4, :cond_6

    const/16 v4, 0x40

    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v7, Lg9/v;->m:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v7, Lg9/v;->n:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    :cond_7
    invoke-virtual {v7}, Lg9/v;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "resize:"

    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lg9/v;->f:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v7, Lg9/v;->g:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    :cond_8
    iget-boolean v4, v7, Lg9/v;->h:Z

    if-eqz v4, :cond_9

    const-string v4, "centerCrop:"

    .line 35
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lg9/v;->i:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 36
    :cond_9
    iget-boolean v4, v7, Lg9/v;->j:Z

    if-eqz v4, :cond_a

    const-string v4, "centerInside"

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    :cond_a
    :goto_3
    iget-object v4, v7, Lg9/v;->e:Ljava/util/List;

    if-eqz v4, :cond_b

    .line 39
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_b

    .line 40
    iget-object v6, v7, Lg9/v;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg9/b0;

    invoke-interface {v6}, Lg9/b0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 42
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 43
    sget-object v1, Lg9/d0;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 44
    invoke-static {v2}, Landroid/support/v4/media/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 45
    iget-object v1, v0, Lg9/w;->a:Lg9/s;

    invoke-virtual {v1, v9}, Lg9/s;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 46
    iget-object v1, v0, Lg9/w;->a:Lg9/s;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v1, v3}, Lg9/s;->a(Ljava/lang/Object;)V

    .line 48
    iget-object v1, v0, Lg9/w;->a:Lg9/s;

    iget-object v2, v1, Lg9/s;->d:Landroid/content/Context;

    sget-object v9, Lg9/s$d;->b:Lg9/s$d;

    const/4 v5, 0x0

    iget-boolean v6, v1, Lg9/s;->l:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v9

    invoke-static/range {v1 .. v6}, Lg9/t;->b(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lg9/s$d;ZZ)V

    .line 49
    iget-object v1, v0, Lg9/w;->a:Lg9/s;

    iget-boolean v1, v1, Lg9/s;->m:Z

    if-eqz v1, :cond_c

    .line 50
    invoke-virtual {v7}, Lg9/v;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "completed"

    invoke-static {v8, v3, v1, v2}, Lg9/d0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz p2, :cond_d

    .line 51
    invoke-interface/range {p2 .. p2}, Lg9/e;->b()V

    :cond_d
    return-void

    .line 52
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lg9/w;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lg9/t;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 53
    new-instance v13, Lg9/l;

    iget-object v2, v0, Lg9/w;->a:Lg9/s;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v11

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v12}, Lg9/l;-><init>(Lg9/s;Landroid/widget/ImageView;Lg9/v;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lg9/e;Z)V

    .line 54
    iget-object v1, v0, Lg9/w;->a:Lg9/s;

    invoke-virtual {v1, v13}, Lg9/s;->c(Lg9/a;)V

    return-void

    .line 55
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c(I)Lg9/w;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput p1, p0, Lg9/w;->c:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Placeholder image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lg9/b0;)Lg9/w;
    .locals 3

    .line 1
    iget-object v0, p0, Lg9/w;->b:Lg9/v$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-object v1, p1

    check-cast v1, Lo8/c;

    invoke-virtual {v1}, Lo8/c;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lg9/v$b;->e:Ljava/util/List;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lg9/v$b;->e:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v0, v0, Lg9/v$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformation key must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
