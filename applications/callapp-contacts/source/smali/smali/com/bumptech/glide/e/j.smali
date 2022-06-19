.class public final Lcom/bumptech/glide/e/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/a/i;
.implements Lcom/bumptech/glide/e/d;
.implements Lcom/bumptech/glide/e/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/a/i;",
        "Lcom/bumptech/glide/e/d;",
        "Lcom/bumptech/glide/e/i;"
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Ljava/lang/RuntimeException;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/bumptech/glide/g/a/b;

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/bumptech/glide/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/g<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/e/e;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/bumptech/glide/e;

.field private final i:Ljava/lang/Object;

.field private final j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final k:Lcom/bumptech/glide/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/a<",
            "*>;"
        }
    .end annotation
.end field

.field private final l:I

.field private final m:I

.field private final n:Lcom/bumptech/glide/h;

.field private final o:Lcom/bumptech/glide/e/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/a/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/g<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final q:Lcom/bumptech/glide/e/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/b/e<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/concurrent/Executor;

.field private s:Lcom/bumptech/glide/load/engine/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/u<",
            "TR;>;"
        }
    .end annotation
.end field

.field private t:Lcom/bumptech/glide/load/engine/k$d;

.field private u:J

.field private volatile v:Lcom/bumptech/glide/load/engine/k;

.field private w:I

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Request"

    const/4 v1, 0x2

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/e/j;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/e/a;IILcom/bumptech/glide/h;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Ljava/util/List;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/e/b/e;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/e/a<",
            "*>;II",
            "Lcom/bumptech/glide/h;",
            "Lcom/bumptech/glide/e/a/j<",
            "TR;>;",
            "Lcom/bumptech/glide/e/g<",
            "TR;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/g<",
            "TR;>;>;",
            "Lcom/bumptech/glide/e/e;",
            "Lcom/bumptech/glide/load/engine/k;",
            "Lcom/bumptech/glide/e/b/e<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-boolean v2, Lcom/bumptech/glide/e/j;->a:Z

    if-eqz v2, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->b:Ljava/lang/String;

    .line 1016
    new-instance v2, Lcom/bumptech/glide/g/a/b$a;

    invoke-direct {v2}, Lcom/bumptech/glide/g/a/b$a;-><init>()V

    .line 61
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->c:Lcom/bumptech/glide/g/a/b;

    move-object v2, p3

    .line 189
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    move-object v2, p1

    .line 190
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->g:Landroid/content/Context;

    .line 191
    iput-object v1, v0, Lcom/bumptech/glide/e/j;->h:Lcom/bumptech/glide/e;

    move-object v2, p4

    .line 192
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    move-object v2, p5

    .line 193
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->j:Ljava/lang/Class;

    move-object v2, p6

    .line 194
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    move v2, p7

    .line 195
    iput v2, v0, Lcom/bumptech/glide/e/j;->l:I

    move v2, p8

    .line 196
    iput v2, v0, Lcom/bumptech/glide/e/j;->m:I

    move-object v2, p9

    .line 197
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->n:Lcom/bumptech/glide/h;

    move-object v2, p10

    .line 198
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->o:Lcom/bumptech/glide/e/a/j;

    move-object v2, p11

    .line 199
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->e:Lcom/bumptech/glide/e/g;

    move-object v2, p12

    .line 200
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->p:Ljava/util/List;

    move-object/from16 v2, p13

    .line 201
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->f:Lcom/bumptech/glide/e/e;

    move-object/from16 v2, p14

    .line 202
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->v:Lcom/bumptech/glide/load/engine/k;

    move-object/from16 v2, p15

    .line 203
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->q:Lcom/bumptech/glide/e/b/e;

    move-object/from16 v2, p16

    .line 204
    iput-object v2, v0, Lcom/bumptech/glide/e/j;->r:Ljava/util/concurrent/Executor;

    .line 205
    sget v2, Lcom/bumptech/glide/e/j$a;->a:I

    iput v2, v0, Lcom/bumptech/glide/e/j;->w:I

    .line 207
    iget-object v2, v0, Lcom/bumptech/glide/e/j;->D:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 1123
    iget-object v1, v1, Lcom/bumptech/glide/e;->g:Lcom/bumptech/glide/f;

    .line 207
    const-class v2, Lcom/bumptech/glide/d$b;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/bumptech/glide/e/j;->D:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method private static a(IF)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    return p0

    :cond_0
    int-to-float p0, p0

    mul-float p1, p1, p0

    .line 485
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->h:Lcom/bumptech/glide/e;

    invoke-static {v1, p1, v0}, Lcom/bumptech/glide/load/resource/b/a;->a(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/e/a;IILcom/bumptech/glide/h;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Ljava/util/List;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/e/b/e;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/j;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/e/a<",
            "*>;II",
            "Lcom/bumptech/glide/h;",
            "Lcom/bumptech/glide/e/a/j<",
            "TR;>;",
            "Lcom/bumptech/glide/e/g<",
            "TR;>;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/g<",
            "TR;>;>;",
            "Lcom/bumptech/glide/e/e;",
            "Lcom/bumptech/glide/load/engine/k;",
            "Lcom/bumptech/glide/e/b/e<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/e/j<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 151
    new-instance v17, Lcom/bumptech/glide/e/j;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/bumptech/glide/e/j;-><init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/e/a;IILcom/bumptech/glide/h;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Ljava/util/List;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/e/b/e;Ljava/util/concurrent/Executor;)V

    return-object v17
.end method

.method private a(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 6

    .line 661
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->c:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 662
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->D:Ljava/lang/RuntimeException;

    .line 4060
    iput-object v1, p1, Lcom/bumptech/glide/load/engine/GlideException;->a:Ljava/lang/Exception;

    .line 664
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->h:Lcom/bumptech/glide/e;

    .line 4114
    iget v1, v1, Lcom/bumptech/glide/e;->h:I

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load failed for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/e/j;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bumptech/glide/e/j;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v1, p2, :cond_0

    .line 669
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/GlideException;->a()V

    :cond_0
    const/4 p2, 0x0

    .line 673
    iput-object p2, p0, Lcom/bumptech/glide/e/j;->t:Lcom/bumptech/glide/load/engine/k$d;

    .line 674
    sget p2, Lcom/bumptech/glide/e/j$a;->e:I

    iput p2, p0, Lcom/bumptech/glide/e/j;->w:I

    const/4 p2, 0x1

    .line 676
    iput-boolean p2, p0, Lcom/bumptech/glide/e/j;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x0

    .line 680
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->p:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 681
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/e/g;

    .line 682
    iget-object v3, p0, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    iget-object v4, p0, Lcom/bumptech/glide/e/j;->o:Lcom/bumptech/glide/e/a/j;

    .line 683
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->o()Z

    move-result v5

    invoke-interface {v2, p1, v3, v4, v5}, Lcom/bumptech/glide/e/g;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z

    goto :goto_0

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->e:Lcom/bumptech/glide/e/g;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/e/j;->o:Lcom/bumptech/glide/e/a/j;

    .line 688
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->o()Z

    move-result v4

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/bumptech/glide/e/g;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z

    .line 691
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    :try_start_2
    iput-boolean p2, p0, Lcom/bumptech/glide/e/j;->C:Z

    .line 697
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->p()V

    .line 698
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 694
    iput-boolean p2, p0, Lcom/bumptech/glide/e/j;->C:Z

    throw p1

    :catchall_1
    move-exception p1

    .line 698
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private a(Lcom/bumptech/glide/load/engine/u;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "TR;>;TR;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 602
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->o()Z

    move-result v6

    .line 603
    sget v0, Lcom/bumptech/glide/e/j$a;->d:I

    iput v0, p0, Lcom/bumptech/glide/e/j;->w:I

    .line 604
    iput-object p1, p0, Lcom/bumptech/glide/e/j;->s:Lcom/bumptech/glide/load/engine/u;

    .line 606
    iget-object p1, p0, Lcom/bumptech/glide/e/j;->h:Lcom/bumptech/glide/e;

    .line 3114
    iget p1, p1, Lcom/bumptech/glide/e;->h:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 607
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Finished loading "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/e/j;->A:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/e/j;->B:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/bumptech/glide/e/j;->u:J

    .line 620
    invoke-static {v0, v1}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x1

    .line 624
    iput-boolean p1, p0, Lcom/bumptech/glide/e/j;->C:Z

    const/4 p1, 0x0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->p:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 628
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/g;

    .line 629
    iget-object v2, p0, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/e/j;->o:Lcom/bumptech/glide/e/a/j;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 630
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/e/g;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z

    goto :goto_0

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->e:Lcom/bumptech/glide/e/g;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/e/j;->o:Lcom/bumptech/glide/e/a/j;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 635
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/e/g;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z

    .line 638
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->q:Lcom/bumptech/glide/e/b/e;

    invoke-interface {v0, p3}, Lcom/bumptech/glide/e/b/e;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e/b/d;

    move-result-object p3

    .line 639
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->o:Lcom/bumptech/glide/e/a/j;

    invoke-interface {v0, p2, p3}, Lcom/bumptech/glide/e/a/j;->a(Ljava/lang/Object;Lcom/bumptech/glide/e/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    iput-boolean p1, p0, Lcom/bumptech/glide/e/j;->C:Z

    .line 3510
    iget-object p1, p0, Lcom/bumptech/glide/e/j;->f:Lcom/bumptech/glide/e/e;

    if-eqz p1, :cond_3

    .line 3511
    invoke-interface {p1, p0}, Lcom/bumptech/glide/e/e;->e(Lcom/bumptech/glide/e/d;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p2

    .line 642
    iput-boolean p1, p0, Lcom/bumptech/glide/e/j;->C:Z

    throw p2
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bumptech/glide/e/j;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private i()V
    .locals 2

    .line 288
    iget-boolean v0, p0, Lcom/bumptech/glide/e/j;->C:Z

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/e/j;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getPlaceholderId()I

    move-result v0

    if-lez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getPlaceholderId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/j;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/e/j;->y:Landroid/graphics/drawable/Drawable;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private k()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/e/j;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getFallbackId()I

    move-result v0

    if-lez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getFallbackId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/j;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/e/j;->z:Landroid/graphics/drawable/Drawable;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->z:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private l()V
    .locals 2

    .line 411
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 416
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    .line 2371
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2372
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/e/j;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2373
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getErrorId()I

    move-result v0

    if-lez v0, :cond_2

    .line 2374
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getErrorId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/j;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/e/j;->x:Landroid/graphics/drawable/Drawable;

    .line 2377
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->x:Landroid/graphics/drawable/Drawable;

    :cond_3
    if-nez v0, :cond_4

    .line 425
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 427
    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->o:Lcom/bumptech/glide/e/a/j;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/e/a/j;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private m()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->f:Lcom/bumptech/glide/e/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/e/e;->b(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private n()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->f:Lcom/bumptech/glide/e/e;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/e/e;->c(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private o()Z
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->f:Lcom/bumptech/glide/e/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bumptech/glide/e/e;->h()Lcom/bumptech/glide/e/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/e/e;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private p()V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->f:Lcom/bumptech/glide/e/e;

    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v0, p0}, Lcom/bumptech/glide/e/e;->f(Lcom/bumptech/glide/e/d;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->i()V

    .line 216
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->c:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v1}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 217
    invoke-static {}, Lcom/bumptech/glide/g/f;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bumptech/glide/e/j;->u:J

    .line 218
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 219
    iget v1, p0, Lcom/bumptech/glide/e/j;->l:I

    iget v2, p0, Lcom/bumptech/glide/e/j;->m:I

    invoke-static {v1, v2}, Lcom/bumptech/glide/g/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget v1, p0, Lcom/bumptech/glide/e/j;->l:I

    iput v1, p0, Lcom/bumptech/glide/e/j;->A:I

    .line 221
    iget v1, p0, Lcom/bumptech/glide/e/j;->m:I

    iput v1, p0, Lcom/bumptech/glide/e/j;->B:I

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->k()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 226
    :goto_0
    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/bumptech/glide/e/j;->a(Lcom/bumptech/glide/load/engine/GlideException;I)V

    .line 227
    monitor-exit v0

    return-void

    .line 230
    :cond_2
    iget v1, p0, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->b:I

    if-eq v1, v2, :cond_8

    .line 240
    iget v1, p0, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->d:I

    if-ne v1, v2, :cond_3

    .line 241
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->s:Lcom/bumptech/glide/load/engine/u;

    sget-object v2, Lcom/bumptech/glide/load/a;->MEMORY_CACHE:Lcom/bumptech/glide/load/a;

    invoke-virtual {p0, v1, v2}, Lcom/bumptech/glide/e/j;->a(Lcom/bumptech/glide/load/engine/u;Lcom/bumptech/glide/load/a;)V

    .line 243
    monitor-exit v0

    return-void

    .line 249
    :cond_3
    sget v1, Lcom/bumptech/glide/e/j$a;->c:I

    iput v1, p0, Lcom/bumptech/glide/e/j;->w:I

    .line 250
    iget v1, p0, Lcom/bumptech/glide/e/j;->l:I

    iget v2, p0, Lcom/bumptech/glide/e/j;->m:I

    invoke-static {v1, v2}, Lcom/bumptech/glide/g/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 251
    iget v1, p0, Lcom/bumptech/glide/e/j;->l:I

    iget v2, p0, Lcom/bumptech/glide/e/j;->m:I

    invoke-virtual {p0, v1, v2}, Lcom/bumptech/glide/e/j;->a(II)V

    goto :goto_1

    .line 253
    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->o:Lcom/bumptech/glide/e/a/j;

    invoke-interface {v1, p0}, Lcom/bumptech/glide/e/a/j;->a(Lcom/bumptech/glide/e/a/i;)V

    .line 256
    :goto_1
    iget v1, p0, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->b:I

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->c:I

    if-ne v1, v2, :cond_6

    .line 257
    :cond_5
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->n()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 258
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->o:Lcom/bumptech/glide/e/a/j;

    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/e/a/j;->c(Landroid/graphics/drawable/Drawable;)V

    .line 260
    :cond_6
    sget-boolean v1, Lcom/bumptech/glide/e/j;->a:Z

    if-eqz v1, :cond_7

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finished run method in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bumptech/glide/e/j;->u:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/e/j;->a(Ljava/lang/String;)V

    .line 263
    :cond_7
    monitor-exit v0

    return-void

    .line 231
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 263
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(II)V
    .locals 23

    move-object/from16 v15, p0

    .line 433
    iget-object v0, v15, Lcom/bumptech/glide/e/j;->c:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 434
    iget-object v14, v15, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v14

    .line 435
    :try_start_0
    sget-boolean v0, Lcom/bumptech/glide/e/j;->a:Z

    if-eqz v0, :cond_0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got onSizeReady in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v15, Lcom/bumptech/glide/e/j;->u:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/bumptech/glide/e/j;->a(Ljava/lang/String;)V

    .line 438
    :cond_0
    iget v1, v15, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->c:I

    if-eq v1, v2, :cond_1

    .line 439
    monitor-exit v14

    return-void

    .line 441
    :cond_1
    sget v1, Lcom/bumptech/glide/e/j$a;->b:I

    iput v1, v15, Lcom/bumptech/glide/e/j;->w:I

    .line 443
    iget-object v1, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    invoke-virtual {v1}, Lcom/bumptech/glide/e/a;->getSizeMultiplier()F

    move-result v1

    move/from16 v2, p1

    .line 444
    invoke-static {v2, v1}, Lcom/bumptech/glide/e/j;->a(IF)I

    move-result v2

    iput v2, v15, Lcom/bumptech/glide/e/j;->A:I

    move/from16 v2, p2

    .line 445
    invoke-static {v2, v1}, Lcom/bumptech/glide/e/j;->a(IF)I

    move-result v1

    iput v1, v15, Lcom/bumptech/glide/e/j;->B:I

    if-eqz v0, :cond_2

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finished setup for calling load in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v15, Lcom/bumptech/glide/e/j;->u:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/bumptech/glide/e/j;->a(Ljava/lang/String;)V

    .line 450
    :cond_2
    iget-object v1, v15, Lcom/bumptech/glide/e/j;->v:Lcom/bumptech/glide/load/engine/k;

    iget-object v2, v15, Lcom/bumptech/glide/e/j;->h:Lcom/bumptech/glide/e;

    iget-object v3, v15, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    iget-object v4, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 454
    invoke-virtual {v4}, Lcom/bumptech/glide/e/a;->getSignature()Lcom/bumptech/glide/load/f;

    move-result-object v4

    iget v5, v15, Lcom/bumptech/glide/e/j;->A:I

    iget v6, v15, Lcom/bumptech/glide/e/j;->B:I

    iget-object v7, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 457
    invoke-virtual {v7}, Lcom/bumptech/glide/e/a;->getResourceClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v15, Lcom/bumptech/glide/e/j;->j:Ljava/lang/Class;

    iget-object v9, v15, Lcom/bumptech/glide/e/j;->n:Lcom/bumptech/glide/h;

    iget-object v10, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 460
    invoke-virtual {v10}, Lcom/bumptech/glide/e/a;->getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/j;

    move-result-object v10

    iget-object v11, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 461
    invoke-virtual {v11}, Lcom/bumptech/glide/e/a;->getTransformations()Ljava/util/Map;

    move-result-object v11

    iget-object v12, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 462
    invoke-virtual {v12}, Lcom/bumptech/glide/e/a;->isTransformationRequired()Z

    move-result v12

    iget-object v13, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 463
    invoke-virtual {v13}, Lcom/bumptech/glide/e/a;->isScaleOnlyOrNoTransform()Z

    move-result v13

    move/from16 v21, v0

    iget-object v0, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 464
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getOptions()Lcom/bumptech/glide/load/h;

    move-result-object v0

    move-object/from16 p1, v0

    iget-object v0, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 465
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->isMemoryCacheable()Z

    move-result v0

    move/from16 p2, v0

    iget-object v0, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 466
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getUseUnlimitedSourceGeneratorsPool()Z

    move-result v16

    iget-object v0, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 467
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getUseAnimationPool()Z

    move-result v17

    iget-object v0, v15, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 468
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->getOnlyRetrieveFromCache()Z

    move-result v18

    iget-object v0, v15, Lcom/bumptech/glide/e/j;->r:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v22, v14

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v19, p0

    move-object/from16 v20, v0

    .line 451
    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/engine/j;Ljava/util/Map;ZZLcom/bumptech/glide/load/h;ZZZZLcom/bumptech/glide/e/i;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/k$d;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lcom/bumptech/glide/e/j;->t:Lcom/bumptech/glide/load/engine/k$d;

    .line 475
    iget v0, v1, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->b:I

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    .line 476
    iput-object v0, v1, Lcom/bumptech/glide/e/j;->t:Lcom/bumptech/glide/load/engine/k$d;

    :cond_3
    if-eqz v21, :cond_4

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "finished onSizeReady in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/bumptech/glide/e/j;->u:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bumptech/glide/e/j;->a(Ljava/lang/String;)V

    .line 481
    :cond_4
    monitor-exit v22

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v22, v14

    move-object v1, v15

    :goto_0
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    const/4 v0, 0x5

    .line 651
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/e/j;->a(Lcom/bumptech/glide/load/engine/GlideException;I)V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/engine/u;Lcom/bumptech/glide/load/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->c:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/b;->a()V

    const/4 v0, 0x0

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 531
    :try_start_1
    iput-object v0, p0, Lcom/bumptech/glide/e/j;->t:Lcom/bumptech/glide/load/engine/k$d;

    if-nez p1, :cond_0

    .line 533
    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/e/j;->j:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inside, but instead got null."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e/j;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 540
    monitor-exit v1

    return-void

    .line 543
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/u;->b()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 544
    iget-object v3, p0, Lcom/bumptech/glide/e/j;->j:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 570
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->m()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_3

    .line 572
    :try_start_2
    iput-object v0, p0, Lcom/bumptech/glide/e/j;->s:Lcom/bumptech/glide/load/engine/u;

    .line 574
    sget p2, Lcom/bumptech/glide/e/j$a;->d:I

    iput p2, p0, Lcom/bumptech/glide/e/j;->w:I

    .line 575
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 583
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/load/engine/u;)V

    :cond_2
    return-void

    .line 578
    :cond_3
    :try_start_3
    invoke-direct {p0, p1, v2, p2}, Lcom/bumptech/glide/e/j;->a(Lcom/bumptech/glide/load/engine/u;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V

    .line 580
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 546
    :cond_4
    :goto_0
    :try_start_4
    iput-object v0, p0, Lcom/bumptech/glide/e/j;->s:Lcom/bumptech/glide/load/engine/u;

    .line 547
    new-instance p2, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Expected to receive an object of "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bumptech/glide/e/j;->j:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    .line 553
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, ""

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "} inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    const-string v2, ""

    goto :goto_2

    :cond_6
    const-string v2, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 563
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/e/j;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 567
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_7

    .line 583
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/load/engine/u;)V

    :cond_7
    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 580
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_8

    .line 583
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/load/engine/u;)V

    :cond_8
    throw p1
.end method

.method public final a(Lcom/bumptech/glide/e/d;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 703
    instance-of v2, v0, Lcom/bumptech/glide/e/j;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 714
    :cond_0
    iget-object v2, v1, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 715
    :try_start_0
    iget v4, v1, Lcom/bumptech/glide/e/j;->l:I

    .line 716
    iget v5, v1, Lcom/bumptech/glide/e/j;->m:I

    .line 717
    iget-object v6, v1, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    .line 718
    iget-object v7, v1, Lcom/bumptech/glide/e/j;->j:Ljava/lang/Class;

    .line 719
    iget-object v8, v1, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 720
    iget-object v9, v1, Lcom/bumptech/glide/e/j;->n:Lcom/bumptech/glide/h;

    .line 721
    iget-object v10, v1, Lcom/bumptech/glide/e/j;->p:Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 722
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 724
    check-cast v0, Lcom/bumptech/glide/e/j;

    .line 732
    iget-object v11, v0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v11

    .line 733
    :try_start_1
    iget v2, v0, Lcom/bumptech/glide/e/j;->l:I

    .line 734
    iget v12, v0, Lcom/bumptech/glide/e/j;->m:I

    .line 735
    iget-object v13, v0, Lcom/bumptech/glide/e/j;->i:Ljava/lang/Object;

    .line 736
    iget-object v14, v0, Lcom/bumptech/glide/e/j;->j:Ljava/lang/Class;

    .line 737
    iget-object v15, v0, Lcom/bumptech/glide/e/j;->k:Lcom/bumptech/glide/e/a;

    .line 738
    iget-object v3, v0, Lcom/bumptech/glide/e/j;->n:Lcom/bumptech/glide/h;

    .line 739
    iget-object v0, v0, Lcom/bumptech/glide/e/j;->p:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 740
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v2, :cond_3

    if-ne v5, v12, :cond_3

    .line 747
    invoke-static {v6, v13}, Lcom/bumptech/glide/g/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 748
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 749
    invoke-virtual {v8, v15}, Lcom/bumptech/glide/e/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v9, v3, :cond_3

    if-ne v10, v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 740
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 722
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final b()V
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->i()V

    .line 310
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->c:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v1}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 311
    iget v1, p0, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->f:I

    if-ne v1, v2, :cond_0

    .line 312
    monitor-exit v0

    return-void

    .line 1276
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->i()V

    .line 1277
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->c:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v1}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 1278
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->o:Lcom/bumptech/glide/e/a/j;

    invoke-interface {v1, p0}, Lcom/bumptech/glide/e/a/j;->b(Lcom/bumptech/glide/e/a/i;)V

    .line 1279
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->t:Lcom/bumptech/glide/load/engine/k$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1433
    iget-object v3, v1, Lcom/bumptech/glide/load/engine/k$d;->c:Lcom/bumptech/glide/load/engine/k;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1434
    :try_start_1
    iget-object v4, v1, Lcom/bumptech/glide/load/engine/k$d;->a:Lcom/bumptech/glide/load/engine/l;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/k$d;->b:Lcom/bumptech/glide/e/i;

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/e/i;)V

    .line 1435
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1281
    :try_start_2
    iput-object v2, p0, Lcom/bumptech/glide/e/j;->t:Lcom/bumptech/glide/load/engine/k$d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1435
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 316
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->s:Lcom/bumptech/glide/load/engine/u;

    if-eqz v1, :cond_2

    .line 318
    iput-object v2, p0, Lcom/bumptech/glide/e/j;->s:Lcom/bumptech/glide/load/engine/u;

    move-object v2, v1

    .line 1495
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->f:Lcom/bumptech/glide/e/e;

    if-eqz v1, :cond_4

    invoke-interface {v1, p0}, Lcom/bumptech/glide/e/e;->d(Lcom/bumptech/glide/e/d;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_5

    .line 321
    iget-object v1, p0, Lcom/bumptech/glide/e/j;->o:Lcom/bumptech/glide/e/a/j;

    invoke-direct {p0}, Lcom/bumptech/glide/e/j;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/bumptech/glide/e/a/j;->b(Landroid/graphics/drawable/Drawable;)V

    .line 324
    :cond_5
    sget v1, Lcom/bumptech/glide/e/j$a;->f:I

    iput v1, p0, Lcom/bumptech/glide/e/j;->w:I

    .line 325
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_6

    .line 328
    invoke-static {v2}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/load/engine/u;)V

    :cond_6
    return-void

    :catchall_1
    move-exception v1

    .line 325
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public final c()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/e/j;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/bumptech/glide/e/j;->b()V

    .line 338
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Z
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    iget v1, p0, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->b:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->c:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 345
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Z
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_0
    iget v1, p0, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->d:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 352
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Z
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    iget v1, p0, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->f:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 359
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Z
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget v1, p0, Lcom/bumptech/glide/e/j;->w:I

    sget v2, Lcom/bumptech/glide/e/j$a;->d:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 366
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->c:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 657
    iget-object v0, p0, Lcom/bumptech/glide/e/j;->d:Ljava/lang/Object;

    return-object v0
.end method
