.class public Lcom/bumptech/glide/f/e;
.super Ljava/lang/Object;
.source "RequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static a:Lcom/bumptech/glide/f/e;


# instance fields
.field private A:Z

.field private b:I

.field private c:F

.field private d:Lcom/bumptech/glide/load/engine/i;

.field private e:Lcom/bumptech/glide/g;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/bumptech/glide/load/f;

.field private n:Z

.field private o:Z

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:Lcom/bumptech/glide/load/h;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/k",
            "<*>;>;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Landroid/content/res/Resources$Theme;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bumptech/glide/f/e;->c:F

    .line 86
    sget-object v0, Lcom/bumptech/glide/load/engine/i;->e:Lcom/bumptech/glide/load/engine/i;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->d:Lcom/bumptech/glide/load/engine/i;

    .line 88
    sget-object v0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/g;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->e:Lcom/bumptech/glide/g;

    .line 96
    iput-boolean v1, p0, Lcom/bumptech/glide/f/e;->j:Z

    .line 97
    iput v2, p0, Lcom/bumptech/glide/f/e;->k:I

    .line 98
    iput v2, p0, Lcom/bumptech/glide/f/e;->l:I

    .line 100
    invoke-static {}, Lcom/bumptech/glide/g/b;->a()Lcom/bumptech/glide/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->m:Lcom/bumptech/glide/load/f;

    .line 102
    iput-boolean v1, p0, Lcom/bumptech/glide/f/e;->o:Z

    .line 106
    new-instance v0, Lcom/bumptech/glide/load/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->r:Lcom/bumptech/glide/load/h;

    .line 108
    new-instance v0, Lcom/bumptech/glide/h/b;

    invoke-direct {v0}, Lcom/bumptech/glide/h/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    .line 110
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->t:Ljava/lang/Class;

    .line 118
    iput-boolean v1, p0, Lcom/bumptech/glide/f/e;->z:Z

    return-void
.end method

.method private I()Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    .line 1587
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->u:Z

    if-eqz v0, :cond_0

    .line 1588
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1590
    :cond_0
    return-object p0
.end method

.method public static a()Lcom/bumptech/glide/f/e;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/bumptech/glide/f/e;->a:Lcom/bumptech/glide/f/e;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-direct {v0}, Lcom/bumptech/glide/f/e;-><init>()V

    .line 291
    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->h()Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/bumptech/glide/f/e;->j()Lcom/bumptech/glide/f/e;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/f/e;->a:Lcom/bumptech/glide/f/e;

    .line 294
    :cond_0
    sget-object v0, Lcom/bumptech/glide/f/e;->a:Lcom/bumptech/glide/f/e;

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/a/k;",
            "Lcom/bumptech/glide/load/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/f/e;"
        }
    .end annotation

    .prologue
    .line 1192
    if-eqz p3, :cond_0

    .line 1193
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/f/e;->b(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 1194
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/f/e;->z:Z

    .line 1195
    return-object v0

    .line 1193
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/bumptech/glide/load/engine/i;)Lcom/bumptech/glide/f/e;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-direct {v0}, Lcom/bumptech/glide/f/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/f/e;->b(Lcom/bumptech/glide/load/engine/i;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f/e;
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-direct {v0}, Lcom/bumptech/glide/f/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/f/e;->b(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lcom/bumptech/glide/f/e;"
        }
    .end annotation

    .prologue
    .line 1263
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 1264
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 1277
    :goto_0
    return-object v0

    .line 1267
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/c/a/n;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/c/a/n;-><init>(Lcom/bumptech/glide/load/k;Z)V

    .line 1269
    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1, p2}, Lcom/bumptech/glide/f/e;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;

    .line 1270
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0, p2}, Lcom/bumptech/glide/f/e;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;

    .line 1275
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/c/a/n;->a()Lcom/bumptech/glide/load/k;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/bumptech/glide/f/e;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;

    .line 1276
    const-class v0, Lcom/bumptech/glide/load/c/e/c;

    new-instance v1, Lcom/bumptech/glide/load/c/e/f;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/c/e/f;-><init>(Lcom/bumptech/glide/load/k;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/bumptech/glide/f/e;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;

    .line 1277
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Lcom/bumptech/glide/f/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/bumptech/glide/f/e;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-direct {v0}, Lcom/bumptech/glide/f/e;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/f/e;->b(Ljava/lang/Class;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/bumptech/glide/load/k",
            "<TT;>;Z)",
            "Lcom/bumptech/glide/f/e;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1309
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-direct {v0, p1, p2, p3}, Lcom/bumptech/glide/f/e;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 1326
    :goto_0
    return-object v0

    .line 1313
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    invoke-static {p2}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1317
    iput-boolean v2, p0, Lcom/bumptech/glide/f/e;->o:Z

    .line 1318
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->z:Z

    .line 1322
    if-eqz p3, :cond_1

    .line 1323
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1324
    iput-boolean v2, p0, Lcom/bumptech/glide/f/e;->n:Z

    .line 1326
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 1708
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    return v0
.end method

.method private static b(II)Z
    .locals 1

    .prologue
    .line 419
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/a/k;",
            "Lcom/bumptech/glide/load/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/f/e;"
        }
    .end annotation

    .prologue
    .line 1184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    .prologue
    .line 1688
    iget v0, p0, Lcom/bumptech/glide/f/e;->l:I

    return v0
.end method

.method public final B()Z
    .locals 2

    .prologue
    .line 1692
    iget v0, p0, Lcom/bumptech/glide/f/e;->l:I

    iget v1, p0, Lcom/bumptech/glide/f/e;->k:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/j;->a(II)Z

    move-result v0

    return v0
.end method

.method public final C()I
    .locals 1

    .prologue
    .line 1696
    iget v0, p0, Lcom/bumptech/glide/f/e;->k:I

    return v0
.end method

.method public final D()F
    .locals 1

    .prologue
    .line 1700
    iget v0, p0, Lcom/bumptech/glide/f/e;->c:F

    return v0
.end method

.method E()Z
    .locals 1

    .prologue
    .line 1704
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->z:Z

    return v0
.end method

.method public final F()Z
    .locals 1

    .prologue
    .line 1714
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->x:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    .prologue
    .line 1720
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->A:Z

    return v0
.end method

.method public final H()Z
    .locals 1

    .prologue
    .line 1726
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->y:Z

    return v0
.end method

.method public a(F)Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/e;->a(F)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    .line 439
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 440
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_2
    iput p1, p0, Lcom/bumptech/glide/f/e;->c:F

    .line 443
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 445
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public a(II)Lcom/bumptech/glide/f/e;
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/f/e;->a(II)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 792
    :goto_0
    return-object v0

    .line 788
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/f/e;->l:I

    .line 789
    iput p2, p0, Lcom/bumptech/glide/f/e;->k:I

    .line 790
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 792
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1403
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/f/e;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 1494
    :goto_0
    return-object v0

    .line 1407
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1408
    iget v0, p1, Lcom/bumptech/glide/f/e;->c:F

    iput v0, p0, Lcom/bumptech/glide/f/e;->c:F

    .line 1410
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1411
    iget-boolean v0, p1, Lcom/bumptech/glide/f/e;->x:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->x:Z

    .line 1413
    :cond_2
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1414
    iget-boolean v0, p1, Lcom/bumptech/glide/f/e;->A:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->A:Z

    .line 1416
    :cond_3
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1417
    iget-object v0, p1, Lcom/bumptech/glide/f/e;->d:Lcom/bumptech/glide/load/engine/i;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->d:Lcom/bumptech/glide/load/engine/i;

    .line 1419
    :cond_4
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1420
    iget-object v0, p1, Lcom/bumptech/glide/f/e;->e:Lcom/bumptech/glide/g;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->e:Lcom/bumptech/glide/g;

    .line 1422
    :cond_5
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1423
    iget-object v0, p1, Lcom/bumptech/glide/f/e;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->f:Landroid/graphics/drawable/Drawable;

    .line 1424
    iput v2, p0, Lcom/bumptech/glide/f/e;->g:I

    .line 1425
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1427
    :cond_6
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1428
    iget v0, p1, Lcom/bumptech/glide/f/e;->g:I

    iput v0, p0, Lcom/bumptech/glide/f/e;->g:I

    .line 1429
    iput-object v3, p0, Lcom/bumptech/glide/f/e;->f:Landroid/graphics/drawable/Drawable;

    .line 1430
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1432
    :cond_7
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1433
    iget-object v0, p1, Lcom/bumptech/glide/f/e;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->h:Landroid/graphics/drawable/Drawable;

    .line 1434
    iput v2, p0, Lcom/bumptech/glide/f/e;->i:I

    .line 1435
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1437
    :cond_8
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1438
    iget v0, p1, Lcom/bumptech/glide/f/e;->i:I

    iput v0, p0, Lcom/bumptech/glide/f/e;->i:I

    .line 1439
    iput-object v3, p0, Lcom/bumptech/glide/f/e;->h:Landroid/graphics/drawable/Drawable;

    .line 1440
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1442
    :cond_9
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1443
    iget-boolean v0, p1, Lcom/bumptech/glide/f/e;->j:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->j:Z

    .line 1445
    :cond_a
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1446
    iget v0, p1, Lcom/bumptech/glide/f/e;->l:I

    iput v0, p0, Lcom/bumptech/glide/f/e;->l:I

    .line 1447
    iget v0, p1, Lcom/bumptech/glide/f/e;->k:I

    iput v0, p0, Lcom/bumptech/glide/f/e;->k:I

    .line 1449
    :cond_b
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1450
    iget-object v0, p1, Lcom/bumptech/glide/f/e;->m:Lcom/bumptech/glide/load/f;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->m:Lcom/bumptech/glide/load/f;

    .line 1452
    :cond_c
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1453
    iget-object v0, p1, Lcom/bumptech/glide/f/e;->t:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->t:Ljava/lang/Class;

    .line 1455
    :cond_d
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1456
    iget-object v0, p1, Lcom/bumptech/glide/f/e;->p:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->p:Landroid/graphics/drawable/Drawable;

    .line 1457
    iput v2, p0, Lcom/bumptech/glide/f/e;->q:I

    .line 1458
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1460
    :cond_e
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1461
    iget v0, p1, Lcom/bumptech/glide/f/e;->q:I

    iput v0, p0, Lcom/bumptech/glide/f/e;->q:I

    .line 1462
    iput-object v3, p0, Lcom/bumptech/glide/f/e;->p:Landroid/graphics/drawable/Drawable;

    .line 1463
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1465
    :cond_f
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const v1, 0x8000

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1466
    iget-object v0, p1, Lcom/bumptech/glide/f/e;->v:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->v:Landroid/content/res/Resources$Theme;

    .line 1468
    :cond_10
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1469
    iget-boolean v0, p1, Lcom/bumptech/glide/f/e;->o:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->o:Z

    .line 1471
    :cond_11
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1472
    iget-boolean v0, p1, Lcom/bumptech/glide/f/e;->n:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->n:Z

    .line 1474
    :cond_12
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1475
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1476
    iget-boolean v0, p1, Lcom/bumptech/glide/f/e;->z:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->z:Z

    .line 1478
    :cond_13
    iget v0, p1, Lcom/bumptech/glide/f/e;->b:I

    const/high16 v1, 0x80000

    invoke-static {v0, v1}, Lcom/bumptech/glide/f/e;->b(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1479
    iget-boolean v0, p1, Lcom/bumptech/glide/f/e;->y:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->y:Z

    .line 1483
    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->o:Z

    if-nez v0, :cond_15

    .line 1484
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1485
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1486
    iput-boolean v2, p0, Lcom/bumptech/glide/f/e;->n:Z

    .line 1487
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->z:Z

    .line 1491
    :cond_15
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    iget v1, p1, Lcom/bumptech/glide/f/e;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 1492
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->r:Lcom/bumptech/glide/load/h;

    iget-object v1, p1, Lcom/bumptech/glide/f/e;->r:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/h;)V

    .line 1494
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/f/e;
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 558
    :goto_0
    return-object v0

    .line 555
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->e:Lcom/bumptech/glide/g;

    .line 556
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 558
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/c/a/k;)Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    .line 1001
    sget-object v0, Lcom/bumptech/glide/load/c/a/k;->h:Lcom/bumptech/glide/load/g;

    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/a/k;",
            "Lcom/bumptech/glide/load/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/f/e;"
        }
    .end annotation

    .prologue
    .line 1152
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 1157
    :goto_0
    return-object v0

    .line 1156
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/c/a/k;)Lcom/bumptech/glide/f/e;

    .line 1157
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/f/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g",
            "<TT;>;TT;)",
            "Lcom/bumptech/glide/f/e;"
        }
    .end annotation

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 875
    :goto_0
    return-object v0

    .line 872
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    invoke-static {p2}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->r:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    .line 875
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/f/e;"
        }
    .end annotation

    .prologue
    .line 1216
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/k;Z)Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/e;->a(Z)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    .line 493
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/f/e;->A:Z

    .line 494
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 496
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lcom/bumptech/glide/f/e;
    .locals 3

    .prologue
    .line 852
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f/e;

    .line 853
    new-instance v1, Lcom/bumptech/glide/load/h;

    invoke-direct {v1}, Lcom/bumptech/glide/load/h;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/f/e;->r:Lcom/bumptech/glide/load/h;

    .line 854
    iget-object v1, v0, Lcom/bumptech/glide/f/e;->r:Lcom/bumptech/glide/load/h;

    iget-object v2, p0, Lcom/bumptech/glide/f/e;->r:Lcom/bumptech/glide/load/h;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/h;)V

    .line 855
    new-instance v1, Lcom/bumptech/glide/h/b;

    invoke-direct {v1}, Lcom/bumptech/glide/h/b;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    .line 856
    iget-object v1, v0, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    iget-object v2, p0, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 857
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/f/e;->u:Z

    .line 858
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bumptech/glide/f/e;->w:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    return-object v0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final b(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/a/k;",
            "Lcom/bumptech/glide/load/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/f/e;"
        }
    .end annotation

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/f/e;->b(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 1172
    :goto_0
    return-object v0

    .line 1171
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/c/a/k;)Lcom/bumptech/glide/f/e;

    .line 1172
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/engine/i;)Lcom/bumptech/glide/f/e;
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/e;->b(Lcom/bumptech/glide/load/engine/i;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 539
    :goto_0
    return-object v0

    .line 536
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/i;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->d:Lcom/bumptech/glide/load/engine/i;

    .line 537
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 539
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f/e;
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/e;->b(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 829
    :goto_0
    return-object v0

    .line 827
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/f;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->m:Lcom/bumptech/glide/load/f;

    .line 828
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 829
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;)Lcom/bumptech/glide/f/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/bumptech/glide/f/e;"
        }
    .end annotation

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/e;->b(Ljava/lang/Class;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 887
    :goto_0
    return-object v0

    .line 885
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/f/e;->t:Ljava/lang/Class;

    .line 886
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 887
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Z)Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 762
    iget-boolean v1, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-eqz v1, :cond_0

    .line 763
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/f/e;->b(Z)Lcom/bumptech/glide/f/e;

    move-result-object v0

    .line 769
    :goto_0
    return-object v0

    .line 766
    :cond_0
    if-nez p1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->j:Z

    .line 767
    iget v0, p0, Lcom/bumptech/glide/f/e;->b:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/bumptech/glide/f/e;->b:I

    .line 769
    invoke-direct {p0}, Lcom/bumptech/glide/f/e;->I()Lcom/bumptech/glide/f/e;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->o:Z

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->b()Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 895
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/e;->a(I)Z

    move-result v0

    return v0
.end method

.method public e()Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    .line 1033
    sget-object v0, Lcom/bumptech/glide/load/c/a/k;->b:Lcom/bumptech/glide/load/c/a/k;

    new-instance v1, Lcom/bumptech/glide/load/c/a/g;

    invoke-direct {v1}, Lcom/bumptech/glide/load/c/a/g;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/f/e;->a(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1500
    instance-of v1, p1, Lcom/bumptech/glide/f/e;

    if-eqz v1, :cond_0

    .line 1501
    check-cast p1, Lcom/bumptech/glide/f/e;

    .line 1502
    iget v1, p1, Lcom/bumptech/glide/f/e;->c:F

    iget v2, p0, Lcom/bumptech/glide/f/e;->c:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/bumptech/glide/f/e;->g:I

    iget v2, p1, Lcom/bumptech/glide/f/e;->g:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/e;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/f/e;->f:Landroid/graphics/drawable/Drawable;

    .line 1504
    invoke-static {v1, v2}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bumptech/glide/f/e;->i:I

    iget v2, p1, Lcom/bumptech/glide/f/e;->i:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/e;->h:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/f/e;->h:Landroid/graphics/drawable/Drawable;

    .line 1506
    invoke-static {v1, v2}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bumptech/glide/f/e;->q:I

    iget v2, p1, Lcom/bumptech/glide/f/e;->q:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/e;->p:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/f/e;->p:Landroid/graphics/drawable/Drawable;

    .line 1508
    invoke-static {v1, v2}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/f/e;->j:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/f/e;->j:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/f/e;->k:I

    iget v2, p1, Lcom/bumptech/glide/f/e;->k:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/f/e;->l:I

    iget v2, p1, Lcom/bumptech/glide/f/e;->l:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/f/e;->n:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/f/e;->n:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/f/e;->o:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/f/e;->o:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/f/e;->x:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/f/e;->x:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/f/e;->y:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/f/e;->y:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/e;->d:Lcom/bumptech/glide/load/engine/i;

    iget-object v2, p1, Lcom/bumptech/glide/f/e;->d:Lcom/bumptech/glide/load/engine/i;

    .line 1516
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/e;->e:Lcom/bumptech/glide/g;

    iget-object v2, p1, Lcom/bumptech/glide/f/e;->e:Lcom/bumptech/glide/g;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/e;->r:Lcom/bumptech/glide/load/h;

    iget-object v2, p1, Lcom/bumptech/glide/f/e;->r:Lcom/bumptech/glide/load/h;

    .line 1518
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    .line 1519
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/e;->t:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/f/e;->t:Ljava/lang/Class;

    .line 1520
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/e;->m:Lcom/bumptech/glide/load/f;

    iget-object v2, p1, Lcom/bumptech/glide/f/e;->m:Lcom/bumptech/glide/load/f;

    .line 1521
    invoke-static {v1, v2}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/f/e;->v:Landroid/content/res/Resources$Theme;

    iget-object v2, p1, Lcom/bumptech/glide/f/e;->v:Landroid/content/res/Resources$Theme;

    .line 1522
    invoke-static {v1, v2}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1524
    :cond_0
    return v0
.end method

.method public f()Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    .line 1065
    sget-object v0, Lcom/bumptech/glide/load/c/a/k;->a:Lcom/bumptech/glide/load/c/a/k;

    new-instance v1, Lcom/bumptech/glide/load/c/a/p;

    invoke-direct {v1}, Lcom/bumptech/glide/load/c/a/p;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/f/e;->c(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    .line 1098
    sget-object v0, Lcom/bumptech/glide/load/c/a/k;->e:Lcom/bumptech/glide/load/c/a/k;

    new-instance v1, Lcom/bumptech/glide/load/c/a/h;

    invoke-direct {v1}, Lcom/bumptech/glide/load/c/a/h;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/f/e;->c(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    .line 1143
    sget-object v0, Lcom/bumptech/glide/load/c/a/k;->e:Lcom/bumptech/glide/load/c/a/k;

    new-instance v1, Lcom/bumptech/glide/load/c/a/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/c/a/i;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/f/e;->b(Lcom/bumptech/glide/load/c/a/k;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1529
    iget v0, p0, Lcom/bumptech/glide/f/e;->c:F

    invoke-static {v0}, Lcom/bumptech/glide/h/j;->a(F)I

    move-result v0

    .line 1530
    iget v1, p0, Lcom/bumptech/glide/f/e;->g:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->b(II)I

    move-result v0

    .line 1531
    iget-object v1, p0, Lcom/bumptech/glide/f/e;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1532
    iget v1, p0, Lcom/bumptech/glide/f/e;->i:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->b(II)I

    move-result v0

    .line 1533
    iget-object v1, p0, Lcom/bumptech/glide/f/e;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1534
    iget v1, p0, Lcom/bumptech/glide/f/e;->q:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->b(II)I

    move-result v0

    .line 1535
    iget-object v1, p0, Lcom/bumptech/glide/f/e;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1536
    iget-boolean v1, p0, Lcom/bumptech/glide/f/e;->j:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(ZI)I

    move-result v0

    .line 1537
    iget v1, p0, Lcom/bumptech/glide/f/e;->k:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->b(II)I

    move-result v0

    .line 1538
    iget v1, p0, Lcom/bumptech/glide/f/e;->l:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->b(II)I

    move-result v0

    .line 1539
    iget-boolean v1, p0, Lcom/bumptech/glide/f/e;->n:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(ZI)I

    move-result v0

    .line 1540
    iget-boolean v1, p0, Lcom/bumptech/glide/f/e;->o:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(ZI)I

    move-result v0

    .line 1541
    iget-boolean v1, p0, Lcom/bumptech/glide/f/e;->x:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(ZI)I

    move-result v0

    .line 1542
    iget-boolean v1, p0, Lcom/bumptech/glide/f/e;->y:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(ZI)I

    move-result v0

    .line 1543
    iget-object v1, p0, Lcom/bumptech/glide/f/e;->d:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1544
    iget-object v1, p0, Lcom/bumptech/glide/f/e;->e:Lcom/bumptech/glide/g;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1545
    iget-object v1, p0, Lcom/bumptech/glide/f/e;->r:Lcom/bumptech/glide/load/h;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1546
    iget-object v1, p0, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1547
    iget-object v1, p0, Lcom/bumptech/glide/f/e;->t:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1548
    iget-object v1, p0, Lcom/bumptech/glide/f/e;->m:Lcom/bumptech/glide/load/f;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1549
    iget-object v1, p0, Lcom/bumptech/glide/f/e;->v:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/h/j;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1550
    return v0
.end method

.method public i()Lcom/bumptech/glide/f/e;
    .locals 1

    .prologue
    .line 1561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->u:Z

    .line 1563
    return-object p0
.end method

.method public j()Lcom/bumptech/glide/f/e;
    .locals 2

    .prologue
    .line 1576
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    if-nez v0, :cond_0

    .line 1577
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1580
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/f/e;->w:Z

    .line 1581
    invoke-virtual {p0}, Lcom/bumptech/glide/f/e;->i()Lcom/bumptech/glide/f/e;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/k",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->s:Ljava/util/Map;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 1612
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->n:Z

    return v0
.end method

.method public final m()Lcom/bumptech/glide/load/h;
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->r:Lcom/bumptech/glide/load/h;

    return-object v0
.end method

.method public final n()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->t:Ljava/lang/Class;

    return-object v0
.end method

.method public final o()Lcom/bumptech/glide/load/engine/i;
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->d:Lcom/bumptech/glide/load/engine/i;

    return-object v0
.end method

.method public final p()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 1638
    iget v0, p0, Lcom/bumptech/glide/f/e;->g:I

    return v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 1643
    iget v0, p0, Lcom/bumptech/glide/f/e;->i:I

    return v0
.end method

.method public final s()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 1654
    iget v0, p0, Lcom/bumptech/glide/f/e;->q:I

    return v0
.end method

.method public final u()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final v()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->v:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 1670
    iget-boolean v0, p0, Lcom/bumptech/glide/f/e;->j:Z

    return v0
.end method

.method public final x()Lcom/bumptech/glide/load/f;
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->m:Lcom/bumptech/glide/load/f;

    return-object v0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 1679
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/e;->a(I)Z

    move-result v0

    return v0
.end method

.method public final z()Lcom/bumptech/glide/g;
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/bumptech/glide/f/e;->e:Lcom/bumptech/glide/g;

    return-object v0
.end method
