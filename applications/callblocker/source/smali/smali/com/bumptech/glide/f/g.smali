.class public final Lcom/bumptech/glide/f/g;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lcom/bumptech/glide/f/a/g;
.implements Lcom/bumptech/glide/f/b;
.implements Lcom/bumptech/glide/f/f;
.implements Lcom/bumptech/glide/h/a/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/f/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/f/a/g;",
        "Lcom/bumptech/glide/f/b;",
        "Lcom/bumptech/glide/f/f;",
        "Lcom/bumptech/glide/h/a/a$c;"
    }
.end annotation


# static fields
.field private static final a:Landroidx/core/g/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/g/e$a",
            "<",
            "Lcom/bumptech/glide/f/g",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final c:Z


# instance fields
.field private A:I

.field private B:I

.field private b:Z

.field private final d:Ljava/lang/String;

.field private final e:Lcom/bumptech/glide/h/a/c;

.field private f:Lcom/bumptech/glide/f/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/d",
            "<TR;>;"
        }
    .end annotation
.end field

.field private g:Lcom/bumptech/glide/f/c;

.field private h:Landroid/content/Context;

.field private i:Lcom/bumptech/glide/e;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private l:Lcom/bumptech/glide/f/e;

.field private m:I

.field private n:I

.field private o:Lcom/bumptech/glide/g;

.field private p:Lcom/bumptech/glide/f/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/a/h",
            "<TR;>;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/f/d",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field private r:Lcom/bumptech/glide/load/engine/j;

.field private s:Lcom/bumptech/glide/f/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/b/c",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private t:Lcom/bumptech/glide/load/engine/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/t",
            "<TR;>;"
        }
    .end annotation
.end field

.field private u:Lcom/bumptech/glide/load/engine/j$d;

.field private v:J

.field private w:Lcom/bumptech/glide/f/g$a;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/16 v0, 0x96

    new-instance v1, Lcom/bumptech/glide/f/g$1;

    invoke-direct {v1}, Lcom/bumptech/glide/f/g$1;-><init>()V

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/a/a;->a(ILcom/bumptech/glide/h/a/a$a;)Landroidx/core/g/e$a;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/f/g;->a:Landroidx/core/g/e$a;

    .line 52
    const-string/jumbo v0, "Request"

    const/4 v1, 0x2

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/f/g;->c:Z

    .line 52
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-boolean v0, Lcom/bumptech/glide/f/g;->c:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->d:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/bumptech/glide/h/a/c;->a()Lcom/bumptech/glide/h/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->e:Lcom/bumptech/glide/h/a/c;

    .line 154
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(IF)I
    .locals 1

    .prologue
    .line 464
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    :goto_0
    return p0

    :cond_0
    int-to-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->v()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->v()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 388
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/f/g;->i:Lcom/bumptech/glide/e;

    invoke-static {v1, p1, v0}, Lcom/bumptech/glide/load/c/c/a;->a(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/f/e;IILcom/bumptech/glide/g;Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Ljava/util/List;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/f/b/c;)Lcom/bumptech/glide/f/g;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/f/e;",
            "II",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/f/a/h",
            "<TR;>;",
            "Lcom/bumptech/glide/f/d",
            "<TR;>;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/f/d",
            "<TR;>;>;",
            "Lcom/bumptech/glide/f/c;",
            "Lcom/bumptech/glide/load/engine/j;",
            "Lcom/bumptech/glide/f/b/c",
            "<-TR;>;)",
            "Lcom/bumptech/glide/f/g",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 127
    sget-object v0, Lcom/bumptech/glide/f/g;->a:Landroidx/core/g/e$a;

    .line 128
    invoke-interface {v0}, Landroidx/core/g/e$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f/g;

    .line 129
    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/bumptech/glide/f/g;

    invoke-direct {v0}, Lcom/bumptech/glide/f/g;-><init>()V

    :cond_0
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 132
    invoke-direct/range {v0 .. v14}, Lcom/bumptech/glide/f/g;->b(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/f/e;IILcom/bumptech/glide/g;Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Ljava/util/List;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/f/b/c;)V

    .line 147
    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 586
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->e:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 587
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->i:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->d()I

    move-result v0

    .line 588
    if-gt v0, p2, :cond_0

    .line 589
    const-string/jumbo v3, "Glide"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Load failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with size ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bumptech/glide/f/g;->A:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bumptech/glide/f/g;->B:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    const/4 v3, 0x4

    if-gt v0, v3, :cond_0

    .line 591
    const-string/jumbo v0, "Glide"

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/GlideException;->a(Ljava/lang/String;)V

    .line 595
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->u:Lcom/bumptech/glide/load/engine/j$d;

    .line 596
    sget-object v0, Lcom/bumptech/glide/f/g$a;->e:Lcom/bumptech/glide/f/g$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    .line 598
    iput-boolean v1, p0, Lcom/bumptech/glide/f/g;->b:Z

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f/d;

    .line 604
    iget-object v5, p0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    iget-object v6, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    .line 605
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->r()Z

    move-result v7

    invoke-interface {v0, p1, v5, v6, v7}, Lcom/bumptech/glide/f/d;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/f/a/h;Z)Z

    move-result v0

    or-int/2addr v3, v0

    .line 606
    goto :goto_0

    :cond_1
    move v3, v2

    .line 608
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->f:Lcom/bumptech/glide/f/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->f:Lcom/bumptech/glide/f/d;

    iget-object v4, p0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    iget-object v5, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    .line 610
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->r()Z

    move-result v6

    invoke-interface {v0, p1, v4, v5, v6}, Lcom/bumptech/glide/f/d;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/f/a/h;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    or-int/2addr v0, v3

    .line 612
    if-nez v0, :cond_3

    .line 613
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    :cond_3
    iput-boolean v2, p0, Lcom/bumptech/glide/f/g;->b:Z

    .line 619
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->t()V

    .line 620
    return-void

    :cond_4
    move v0, v2

    .line 610
    goto :goto_1

    .line 616
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/bumptech/glide/f/g;->b:Z

    throw v0
.end method

.method private a(Lcom/bumptech/glide/load/engine/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->r:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/engine/t;)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->t:Lcom/bumptech/glide/load/engine/t;

    .line 328
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/t;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<TR;>;TR;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 542
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->r()Z

    move-result v5

    .line 543
    sget-object v0, Lcom/bumptech/glide/f/g$a;->d:Lcom/bumptech/glide/f/g$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    .line 544
    iput-object p1, p0, Lcom/bumptech/glide/f/g;->t:Lcom/bumptech/glide/load/engine/t;

    .line 546
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->i:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->d()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 547
    const-string/jumbo v0, "Glide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finished loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/f/g;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/f/g;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bumptech/glide/f/g;->v:J

    .line 549
    invoke-static {v2, v3}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    iput-boolean v6, p0, Lcom/bumptech/glide/f/g;->b:Z

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v8, v7

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f/d;

    .line 557
    iget-object v2, p0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    move-object v1, p2

    move-object v4, p3

    .line 558
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/load/a;Z)Z

    move-result v0

    or-int/2addr v8, v0

    .line 559
    goto :goto_0

    :cond_1
    move v8, v7

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->f:Lcom/bumptech/glide/f/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->f:Lcom/bumptech/glide/f/d;

    iget-object v2, p0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    move-object v1, p2

    move-object v4, p3

    .line 563
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/f/d;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/load/a;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    :goto_1
    or-int/2addr v0, v8

    .line 565
    if-nez v0, :cond_3

    .line 566
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->s:Lcom/bumptech/glide/f/b/c;

    .line 567
    invoke-interface {v0, p3, v5}, Lcom/bumptech/glide/f/b/c;->a(Lcom/bumptech/glide/load/a;Z)Lcom/bumptech/glide/f/b/b;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    invoke-interface {v1, p2, v0}, Lcom/bumptech/glide/f/a/h;->a(Ljava/lang/Object;Lcom/bumptech/glide/f/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    :cond_3
    iput-boolean v7, p0, Lcom/bumptech/glide/f/g;->b:Z

    .line 574
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->s()V

    .line 575
    return-void

    :cond_4
    move v0, v7

    .line 563
    goto :goto_1

    .line 571
    :catchall_0
    move-exception v0

    iput-boolean v7, p0, Lcom/bumptech/glide/f/g;->b:Z

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 647
    const-string/jumbo v0, "Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/f/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method private static a(Lcom/bumptech/glide/f/g;Lcom/bumptech/glide/f/g;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/g",
            "<*>;",
            "Lcom/bumptech/glide/f/g",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 641
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->q:Ljava/util/List;

    if-nez v0, :cond_1

    move v0, v1

    .line 642
    :goto_0
    iget-object v2, p1, Lcom/bumptech/glide/f/g;->q:Ljava/util/List;

    if-nez v2, :cond_2

    move v2, v1

    .line 643
    :goto_1
    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 642
    :cond_2
    iget-object v2, p1, Lcom/bumptech/glide/f/g;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1
.end method

.method private b(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/f/e;IILcom/bumptech/glide/g;Lcom/bumptech/glide/f/a/h;Lcom/bumptech/glide/f/d;Ljava/util/List;Lcom/bumptech/glide/f/c;Lcom/bumptech/glide/load/engine/j;Lcom/bumptech/glide/f/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/f/e;",
            "II",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/f/a/h",
            "<TR;>;",
            "Lcom/bumptech/glide/f/d",
            "<TR;>;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/f/d",
            "<TR;>;>;",
            "Lcom/bumptech/glide/f/c;",
            "Lcom/bumptech/glide/load/engine/j;",
            "Lcom/bumptech/glide/f/b/c",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bumptech/glide/f/g;->h:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/bumptech/glide/f/g;->i:Lcom/bumptech/glide/e;

    .line 173
    iput-object p3, p0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    .line 174
    iput-object p4, p0, Lcom/bumptech/glide/f/g;->k:Ljava/lang/Class;

    .line 175
    iput-object p5, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    .line 176
    iput p6, p0, Lcom/bumptech/glide/f/g;->m:I

    .line 177
    iput p7, p0, Lcom/bumptech/glide/f/g;->n:I

    .line 178
    iput-object p8, p0, Lcom/bumptech/glide/f/g;->o:Lcom/bumptech/glide/g;

    .line 179
    iput-object p9, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    .line 180
    iput-object p10, p0, Lcom/bumptech/glide/f/g;->f:Lcom/bumptech/glide/f/d;

    .line 181
    iput-object p11, p0, Lcom/bumptech/glide/f/g;->q:Ljava/util/List;

    .line 182
    iput-object p12, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    .line 183
    iput-object p13, p0, Lcom/bumptech/glide/f/g;->r:Lcom/bumptech/glide/load/engine/j;

    .line 184
    iput-object p14, p0, Lcom/bumptech/glide/f/g;->s:Lcom/bumptech/glide/f/b/c;

    .line 185
    sget-object v0, Lcom/bumptech/glide/f/g$a;->a:Lcom/bumptech/glide/f/g$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    .line 186
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->j()V

    .line 279
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->e:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 280
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/a/h;->b(Lcom/bumptech/glide/f/a/g;)V

    .line 281
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->u:Lcom/bumptech/glide/load/engine/j$d;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->u:Lcom/bumptech/glide/load/engine/j$d;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/j$d;->a()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->u:Lcom/bumptech/glide/load/engine/j$d;

    .line 285
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/bumptech/glide/f/g;->b:Z

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    return-void
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->x:Landroid/graphics/drawable/Drawable;

    .line 358
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->q()I

    move-result v0

    if-lez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->q()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/g;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->x:Landroid/graphics/drawable/Drawable;

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->s()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->y:Landroid/graphics/drawable/Drawable;

    .line 368
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->r()I

    move-result v0

    if-lez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/g;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->y:Landroid/graphics/drawable/Drawable;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private m()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->u()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->z:Landroid/graphics/drawable/Drawable;

    .line 378
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->t()I

    move-result v0

    if-lez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->t()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/g;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->z:Landroid/graphics/drawable/Drawable;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->z:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 396
    :cond_0
    const/4 v0, 0x0

    .line 397
    iget-object v1, p0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 398
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 401
    :cond_1
    if-nez v0, :cond_2

    .line 402
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 405
    :cond_2
    if-nez v0, :cond_3

    .line 406
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 408
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/f/a/h;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->b(Lcom/bumptech/glide/f/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->d(Lcom/bumptech/glide/f/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->c(Lcom/bumptech/glide/f/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    invoke-interface {v0}, Lcom/bumptech/glide/f/c;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->e(Lcom/bumptech/glide/f/b;)V

    .line 487
    :cond_0
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/c;->f(Lcom/bumptech/glide/f/b;)V

    .line 493
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->j()V

    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->e:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 222
    invoke-static {}, Lcom/bumptech/glide/h/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/f/g;->v:J

    .line 223
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 224
    iget v0, p0, Lcom/bumptech/glide/f/g;->m:I

    iget v1, p0, Lcom/bumptech/glide/f/g;->n:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/j;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget v0, p0, Lcom/bumptech/glide/f/g;->m:I

    iput v0, p0, Lcom/bumptech/glide/f/g;->A:I

    .line 226
    iget v0, p0, Lcom/bumptech/glide/f/g;->n:I

    iput v0, p0, Lcom/bumptech/glide/f/g;->B:I

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 231
    :goto_0
    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    const-string/jumbo v2, "Received null model"

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/f/g;->a(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 267
    :cond_1
    :goto_1
    return-void

    .line 230
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v1, Lcom/bumptech/glide/f/g$a;->b:Lcom/bumptech/glide/f/g$a;

    if-ne v0, v1, :cond_4

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot restart a running request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v1, Lcom/bumptech/glide/f/g$a;->d:Lcom/bumptech/glide/f/g$a;

    if-ne v0, v1, :cond_5

    .line 246
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->t:Lcom/bumptech/glide/load/engine/t;

    sget-object v1, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/f/g;->a(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/a;)V

    goto :goto_1

    .line 253
    :cond_5
    sget-object v0, Lcom/bumptech/glide/f/g$a;->c:Lcom/bumptech/glide/f/g$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    .line 254
    iget v0, p0, Lcom/bumptech/glide/f/g;->m:I

    iget v1, p0, Lcom/bumptech/glide/f/g;->n:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/j;->a(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    iget v0, p0, Lcom/bumptech/glide/f/g;->m:I

    iget v1, p0, Lcom/bumptech/glide/f/g;->n:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/f/g;->a(II)V

    .line 260
    :goto_2
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v1, Lcom/bumptech/glide/f/g$a;->b:Lcom/bumptech/glide/f/g$a;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v1, Lcom/bumptech/glide/f/g$a;->c:Lcom/bumptech/glide/f/g$a;

    if-ne v0, v1, :cond_7

    .line 261
    :cond_6
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 262
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/f/a/h;->b(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_7
    sget-boolean v0, Lcom/bumptech/glide/f/g;->c:Z

    if-eqz v0, :cond_1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/f/g;->v:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/g;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/f/a/h;->a(Lcom/bumptech/glide/f/a/g;)V

    goto :goto_2
.end method

.method public a(II)V
    .locals 21

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/f/g;->e:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v2}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 417
    sget-boolean v2, Lcom/bumptech/glide/f/g;->c:Z

    if-eqz v2, :cond_0

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/f/g;->v:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/f/g;->a(Ljava/lang/String;)V

    .line 420
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v3, Lcom/bumptech/glide/f/g$a;->c:Lcom/bumptech/glide/f/g$a;

    if-eq v2, v3, :cond_2

    .line 461
    :cond_1
    :goto_0
    return-void

    .line 423
    :cond_2
    sget-object v2, Lcom/bumptech/glide/f/g$a;->b:Lcom/bumptech/glide/f/g$a;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    invoke-virtual {v2}, Lcom/bumptech/glide/f/e;->D()F

    move-result v2

    .line 426
    move/from16 v0, p1

    invoke-static {v0, v2}, Lcom/bumptech/glide/f/g;->a(IF)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/bumptech/glide/f/g;->A:I

    .line 427
    move/from16 v0, p2

    invoke-static {v0, v2}, Lcom/bumptech/glide/f/g;->a(IF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/f/g;->B:I

    .line 429
    sget-boolean v2, Lcom/bumptech/glide/f/g;->c:Z

    if-eqz v2, :cond_3

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finished setup for calling load in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/f/g;->v:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/f/g;->a(Ljava/lang/String;)V

    .line 432
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/f/g;->r:Lcom/bumptech/glide/load/engine/j;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/f/g;->i:Lcom/bumptech/glide/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    .line 435
    invoke-virtual {v5}, Lcom/bumptech/glide/f/e;->x()Lcom/bumptech/glide/load/f;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/f/g;->A:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/f/g;->B:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    .line 438
    invoke-virtual {v8}, Lcom/bumptech/glide/f/e;->n()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/f/g;->k:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/f/g;->o:Lcom/bumptech/glide/g;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    .line 441
    invoke-virtual {v11}, Lcom/bumptech/glide/f/e;->o()Lcom/bumptech/glide/load/engine/i;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    .line 442
    invoke-virtual {v12}, Lcom/bumptech/glide/f/e;->k()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    .line 443
    invoke-virtual {v13}, Lcom/bumptech/glide/f/e;->l()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    .line 444
    invoke-virtual {v14}, Lcom/bumptech/glide/f/e;->E()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    .line 445
    invoke-virtual {v15}, Lcom/bumptech/glide/f/e;->m()Lcom/bumptech/glide/load/h;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    move-object/from16 v16, v0

    .line 446
    invoke-virtual/range {v16 .. v16}, Lcom/bumptech/glide/f/e;->w()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    move-object/from16 v17, v0

    .line 447
    invoke-virtual/range {v17 .. v17}, Lcom/bumptech/glide/f/e;->F()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    move-object/from16 v18, v0

    .line 448
    invoke-virtual/range {v18 .. v18}, Lcom/bumptech/glide/f/e;->G()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    move-object/from16 v19, v0

    .line 449
    invoke-virtual/range {v19 .. v19}, Lcom/bumptech/glide/f/e;->H()Z

    move-result v19

    move-object/from16 v20, p0

    .line 432
    invoke-virtual/range {v2 .. v20}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/engine/i;Ljava/util/Map;ZZLcom/bumptech/glide/load/h;ZZZZLcom/bumptech/glide/f/f;)Lcom/bumptech/glide/load/engine/j$d;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/f/g;->u:Lcom/bumptech/glide/load/engine/j$d;

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v3, Lcom/bumptech/glide/f/g$a;->b:Lcom/bumptech/glide/f/g$a;

    if-eq v2, v3, :cond_4

    .line 456
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/f/g;->u:Lcom/bumptech/glide/load/engine/j$d;

    .line 458
    :cond_4
    sget-boolean v2, Lcom/bumptech/glide/f/g;->c:Z

    if-eqz v2, :cond_1

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finished onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/f/g;->v:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/f/g;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/f/g;->a(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 583
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/t;Lcom/bumptech/glide/load/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->e:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->u:Lcom/bumptech/glide/load/engine/j$d;

    .line 503
    if-nez p1, :cond_0

    .line 504
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/f/g;->k:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/f/g;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 531
    :goto_0
    return-void

    .line 510
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->d()Ljava/lang/Object;

    move-result-object v1

    .line 511
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->k:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 512
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/g;->a(Lcom/bumptech/glide/load/engine/t;)V

    .line 513
    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected to receive an object of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bumptech/glide/f/g;->k:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 515
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "} inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 517
    if-eqz v1, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/f/g;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_0

    .line 515
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1

    .line 517
    :cond_3
    const-string/jumbo v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    .line 523
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->o()Z

    move-result v0

    if-nez v0, :cond_5

    .line 524
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/g;->a(Lcom/bumptech/glide/load/engine/t;)V

    .line 526
    sget-object v0, Lcom/bumptech/glide/f/g$a;->d:Lcom/bumptech/glide/f/g$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    goto/16 :goto_0

    .line 530
    :cond_5
    invoke-direct {p0, p1, v1, p2}, Lcom/bumptech/glide/f/g;->a(Lcom/bumptech/glide/load/engine/t;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/bumptech/glide/f/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 624
    instance-of v1, p1, Lcom/bumptech/glide/f/g;

    if-eqz v1, :cond_0

    .line 625
    check-cast p1, Lcom/bumptech/glide/f/g;

    .line 626
    iget v1, p0, Lcom/bumptech/glide/f/g;->m:I

    iget v2, p1, Lcom/bumptech/glide/f/g;->m:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/f/g;->n:I

    iget v2, p1, Lcom/bumptech/glide/f/g;->n:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    iget-object v2, p1, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    .line 628
    invoke-static {v1, v2}, Lcom/bumptech/glide/h/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/g;->k:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/f/g;->k:Ljava/lang/Class;

    .line 629
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    iget-object v2, p1, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    .line 630
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/f/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/g;->o:Lcom/bumptech/glide/g;

    iget-object v2, p1, Lcom/bumptech/glide/f/g;->o:Lcom/bumptech/glide/g;

    if-ne v1, v2, :cond_0

    .line 635
    invoke-static {p0, p1}, Lcom/bumptech/glide/f/g;->a(Lcom/bumptech/glide/f/g;Lcom/bumptech/glide/f/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 637
    :cond_0
    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/bumptech/glide/h/j;->a()V

    .line 308
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->j()V

    .line 309
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->e:Lcom/bumptech/glide/h/a/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/h/a/c;->b()V

    .line 310
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v1, Lcom/bumptech/glide/f/g$a;->f:Lcom/bumptech/glide/f/g$a;

    if-ne v0, v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->i()V

    .line 315
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->t:Lcom/bumptech/glide/load/engine/t;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->t:Lcom/bumptech/glide/load/engine/t;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/g;->a(Lcom/bumptech/glide/load/engine/t;)V

    .line 318
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/f/a/h;->a(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :cond_2
    sget-object v0, Lcom/bumptech/glide/f/g$a;->f:Lcom/bumptech/glide/f/g$a;

    iput-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v1, Lcom/bumptech/glide/f/g$a;->b:Lcom/bumptech/glide/f/g$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v1, Lcom/bumptech/glide/f/g$a;->c:Lcom/bumptech/glide/f/g$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c_()Lcom/bumptech/glide/h/a/c;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->e:Lcom/bumptech/glide/h/a/c;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v1, Lcom/bumptech/glide/f/g$a;->d:Lcom/bumptech/glide/f/g$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/bumptech/glide/f/g;->d()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v1, Lcom/bumptech/glide/f/g$a;->f:Lcom/bumptech/glide/f/g$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/bumptech/glide/f/g;->w:Lcom/bumptech/glide/f/g$a;

    sget-object v1, Lcom/bumptech/glide/f/g$a;->e:Lcom/bumptech/glide/f/g$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0}, Lcom/bumptech/glide/f/g;->j()V

    .line 197
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->h:Landroid/content/Context;

    .line 198
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->i:Lcom/bumptech/glide/e;

    .line 199
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->j:Ljava/lang/Object;

    .line 200
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->k:Ljava/lang/Class;

    .line 201
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->l:Lcom/bumptech/glide/f/e;

    .line 202
    iput v1, p0, Lcom/bumptech/glide/f/g;->m:I

    .line 203
    iput v1, p0, Lcom/bumptech/glide/f/g;->n:I

    .line 204
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->p:Lcom/bumptech/glide/f/a/h;

    .line 205
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->q:Ljava/util/List;

    .line 206
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->f:Lcom/bumptech/glide/f/d;

    .line 207
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->g:Lcom/bumptech/glide/f/c;

    .line 208
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->s:Lcom/bumptech/glide/f/b/c;

    .line 209
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->u:Lcom/bumptech/glide/load/engine/j$d;

    .line 210
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->x:Landroid/graphics/drawable/Drawable;

    .line 211
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->y:Landroid/graphics/drawable/Drawable;

    .line 212
    iput-object v0, p0, Lcom/bumptech/glide/f/g;->z:Landroid/graphics/drawable/Drawable;

    .line 213
    iput v1, p0, Lcom/bumptech/glide/f/g;->A:I

    .line 214
    iput v1, p0, Lcom/bumptech/glide/f/g;->B:I

    .line 215
    sget-object v0, Lcom/bumptech/glide/f/g;->a:Landroidx/core/g/e$a;

    invoke-interface {v0, p0}, Landroidx/core/g/e$a;->a(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method
