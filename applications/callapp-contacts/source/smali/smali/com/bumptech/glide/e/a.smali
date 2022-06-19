.class public abstract Lcom/bumptech/glide/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/bumptech/glide/e/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:Lcom/bumptech/glide/load/engine/j;

.field private d:Lcom/bumptech/glide/h;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:Lcom/bumptech/glide/load/f;

.field private m:Z

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:Lcom/bumptech/glide/load/h;

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Landroid/content/res/Resources$Theme;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    iput v0, p0, Lcom/bumptech/glide/e/a;->b:F

    .line 74
    sget-object v0, Lcom/bumptech/glide/load/engine/j;->e:Lcom/bumptech/glide/load/engine/j;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->c:Lcom/bumptech/glide/load/engine/j;

    .line 75
    sget-object v0, Lcom/bumptech/glide/h;->NORMAL:Lcom/bumptech/glide/h;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/h;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->i:Z

    const/4 v1, -0x1

    .line 81
    iput v1, p0, Lcom/bumptech/glide/e/a;->j:I

    .line 82
    iput v1, p0, Lcom/bumptech/glide/e/a;->k:I

    .line 83
    invoke-static {}, Lcom/bumptech/glide/f/c;->a()Lcom/bumptech/glide/f/c;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/e/a;->l:Lcom/bumptech/glide/load/f;

    .line 85
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->n:Z

    .line 88
    new-instance v1, Lcom/bumptech/glide/load/h;

    invoke-direct {v1}, Lcom/bumptech/glide/load/h;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/e/a;->q:Lcom/bumptech/glide/load/h;

    .line 90
    new-instance v1, Lcom/bumptech/glide/g/b;

    invoke-direct {v1}, Lcom/bumptech/glide/g/b;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/e/a;->r:Ljava/util/Map;

    .line 93
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/e/a;->s:Ljava/lang/Class;

    .line 99
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->y:Z

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 965
    :goto_0
    iget-boolean v1, v0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v1, :cond_0

    .line 966
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_0

    .line 969
    :cond_0
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/n;

    invoke-direct {v1, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/n;-><init>(Lcom/bumptech/glide/load/l;Z)V

    .line 971
    const-class v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2, p1, p2}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;

    .line 972
    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v2, v1, p2}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;

    .line 977
    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2, v1, p2}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;

    .line 978
    const-class v1, Lcom/bumptech/glide/load/resource/d/c;

    new-instance v2, Lcom/bumptech/glide/load/resource/d/f;

    invoke-direct {v2, p1}, Lcom/bumptech/glide/load/resource/d/f;-><init>(Lcom/bumptech/glide/load/l;)V

    invoke-direct {v0, v1, v2, p2}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;

    .line 979
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/k;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 825
    :goto_0
    iget-boolean v1, v0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v1, :cond_0

    .line 826
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/k;)Lcom/bumptech/glide/e/a;

    const/4 p1, 0x0

    .line 830
    invoke-direct {v0, p2, p1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/k;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 870
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/e/a;->b(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    goto :goto_0

    .line 871
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 872
    iput-boolean p2, p1, Lcom/bumptech/glide/e/a;->y:Z

    return-object p1
.end method

.method private a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/l<",
            "TY;>;Z)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 1011
    :goto_0
    iget-boolean v1, v0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v1, :cond_0

    .line 1012
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "Argument must not be null"

    .line 12023
    invoke-static {p1, v1}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13023
    invoke-static {p2, v1}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1017
    iget-object v1, v0, Lcom/bumptech/glide/e/a;->r:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget p1, v0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x800

    iput p1, v0, Lcom/bumptech/glide/e/a;->a:I

    const/4 p2, 0x1

    .line 1019
    iput-boolean p2, v0, Lcom/bumptech/glide/e/a;->n:Z

    const/high16 v1, 0x10000

    or-int/2addr p1, v1

    .line 1020
    iput p1, v0, Lcom/bumptech/glide/e/a;->a:I

    const/4 v1, 0x0

    .line 1023
    iput-boolean v1, v0, Lcom/bumptech/glide/e/a;->y:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    .line 1025
    iput p1, v0, Lcom/bumptech/glide/e/a;->a:I

    .line 1026
    iput-boolean p2, v0, Lcom/bumptech/glide/e/a;->m:Z

    .line 1028
    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method private static a(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/k;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    move-object v0, p0

    .line 841
    :goto_0
    iget-boolean v1, v0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v1, :cond_0

    .line 842
    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_0

    .line 845
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/k;)Lcom/bumptech/glide/e/a;

    .line 846
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method private isSet(I)Z
    .locals 1

    .line 1408
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    invoke-static {v0, p1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(F)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->a(F)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 125
    iput p1, p0, Lcom/bumptech/glide/e/a;->b:F

    .line 126
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 128
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 277
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->a(I)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 281
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/e/a;->h:I

    .line 282
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/bumptech/glide/e/a;->g:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    .line 285
    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 287
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")TT;"
        }
    .end annotation

    .line 589
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/c;->b:Lcom/bumptech/glide/load/g;

    const-string v1, "Argument must not be null"

    .line 8023
    invoke-static {p1, v1}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 589
    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h;",
            ")TT;"
        }
    .end annotation

    .line 231
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 235
    check-cast p1, Lcom/bumptech/glide/h;

    iput-object p1, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/h;

    .line 236
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 238
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/j;",
            ")TT;"
        }
    .end annotation

    .line 213
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 2023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 216
    check-cast p1, Lcom/bumptech/glide/load/engine/j;

    iput-object p1, p0, Lcom/bumptech/glide/e/a;->c:Lcom/bumptech/glide/load/engine/j;

    .line 217
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 219
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            ")TT;"
        }
    .end annotation

    .line 501
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 4023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 505
    check-cast p1, Lcom/bumptech/glide/load/f;

    iput-object p1, p0, Lcom/bumptech/glide/e/a;->l:Lcom/bumptech/glide/load/f;

    .line 506
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 507
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 548
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 5023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6023
    invoke-static {p2, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 554
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->q:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;

    .line 555
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 893
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/resource/bitmap/k;)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/k;",
            ")TT;"
        }
    .end annotation

    .line 676
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->h:Lcom/bumptech/glide/load/g;

    const-string v1, "Argument must not be null"

    .line 9023
    invoke-static {p1, v1}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 676
    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 561
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 7023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 565
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/bumptech/glide/e/a;->s:Ljava/lang/Class;

    .line 566
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 567
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->a(Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 175
    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/e/a;->z:Z

    .line 176
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 178
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 385
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->b(I)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 388
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/e/a;->f:I

    .line 389
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/bumptech/glide/e/a;->e:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x11

    .line 392
    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 394
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public b(II)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 462
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/e/a;->b(II)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 466
    :cond_0
    iput p1, p0, Lcom/bumptech/glide/e/a;->k:I

    .line 467
    iput p2, p0, Lcom/bumptech/glide/e/a;->j:I

    .line 468
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 470
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 252
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->b(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 256
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/e/a;->g:Landroid/graphics/drawable/Drawable;

    .line 257
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcom/bumptech/glide/e/a;->h:I

    and-int/lit16 p1, p1, -0x81

    .line 260
    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 262
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/e/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a<",
            "*>;)TT;"
        }
    .end annotation

    .line 1103
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/a;->b(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    .line 1108
    :cond_0
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    iget v0, p1, Lcom/bumptech/glide/e/a;->b:F

    iput v0, p0, Lcom/bumptech/glide/e/a;->b:F

    .line 1111
    :cond_1
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1112
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->w:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    .line 1114
    :cond_2
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1115
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->z:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->z:Z

    .line 1117
    :cond_3
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1118
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->c:Lcom/bumptech/glide/load/engine/j;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->c:Lcom/bumptech/glide/load/engine/j;

    .line 1120
    :cond_4
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1121
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/h;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/h;

    .line 1123
    :cond_5
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1124
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->e:Landroid/graphics/drawable/Drawable;

    .line 1125
    iput v1, p0, Lcom/bumptech/glide/e/a;->f:I

    .line 1126
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1128
    :cond_6
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1129
    iget v0, p1, Lcom/bumptech/glide/e/a;->f:I

    iput v0, p0, Lcom/bumptech/glide/e/a;->f:I

    .line 1130
    iput-object v2, p0, Lcom/bumptech/glide/e/a;->e:Landroid/graphics/drawable/Drawable;

    .line 1131
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1133
    :cond_7
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1134
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->g:Landroid/graphics/drawable/Drawable;

    .line 1135
    iput v1, p0, Lcom/bumptech/glide/e/a;->h:I

    .line 1136
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1138
    :cond_8
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1139
    iget v0, p1, Lcom/bumptech/glide/e/a;->h:I

    iput v0, p0, Lcom/bumptech/glide/e/a;->h:I

    .line 1140
    iput-object v2, p0, Lcom/bumptech/glide/e/a;->g:Landroid/graphics/drawable/Drawable;

    .line 1141
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1143
    :cond_9
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1144
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->i:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->i:Z

    .line 1146
    :cond_a
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1147
    iget v0, p1, Lcom/bumptech/glide/e/a;->k:I

    iput v0, p0, Lcom/bumptech/glide/e/a;->k:I

    .line 1148
    iget v0, p1, Lcom/bumptech/glide/e/a;->j:I

    iput v0, p0, Lcom/bumptech/glide/e/a;->j:I

    .line 1150
    :cond_b
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1151
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->l:Lcom/bumptech/glide/load/f;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->l:Lcom/bumptech/glide/load/f;

    .line 1153
    :cond_c
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1154
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->s:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->s:Ljava/lang/Class;

    .line 1156
    :cond_d
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1157
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->o:Landroid/graphics/drawable/Drawable;

    .line 1158
    iput v1, p0, Lcom/bumptech/glide/e/a;->p:I

    .line 1159
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1161
    :cond_e
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1162
    iget v0, p1, Lcom/bumptech/glide/e/a;->p:I

    iput v0, p0, Lcom/bumptech/glide/e/a;->p:I

    .line 1163
    iput-object v2, p0, Lcom/bumptech/glide/e/a;->o:Landroid/graphics/drawable/Drawable;

    .line 1164
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1166
    :cond_f
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1167
    iget-object v0, p1, Lcom/bumptech/glide/e/a;->u:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/bumptech/glide/e/a;->u:Landroid/content/res/Resources$Theme;

    .line 1169
    :cond_10
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1170
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->n:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->n:Z

    .line 1172
    :cond_11
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1173
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->m:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->m:Z

    .line 1175
    :cond_12
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1176
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->r:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->r:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1177
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->y:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->y:Z

    .line 1179
    :cond_13
    iget v0, p1, Lcom/bumptech/glide/e/a;->a:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/bumptech/glide/e/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1180
    iget-boolean v0, p1, Lcom/bumptech/glide/e/a;->x:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->x:Z

    .line 1184
    :cond_14
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->n:Z

    if-nez v0, :cond_15

    .line 1185
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1186
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1187
    iput-boolean v1, p0, Lcom/bumptech/glide/e/a;->m:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    .line 1188
    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    const/4 v0, 0x1

    .line 1189
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->y:Z

    .line 1192
    :cond_15
    iget v0, p0, Lcom/bumptech/glide/e/a;->a:I

    iget v1, p1, Lcom/bumptech/glide/e/a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 1193
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->q:Lcom/bumptech/glide/load/h;

    iget-object p1, p1, Lcom/bumptech/glide/e/a;->q:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/h;)V

    .line 1195
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 440
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/e/a;->b(Z)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 444
    iput-boolean p1, p0, Lcom/bumptech/glide/e/a;->i:Z

    .line 445
    iget p1, p0, Lcom/bumptech/glide/e/a;->a:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/bumptech/glide/e/a;->a:I

    .line 447
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 596
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/c;->a:Lcom/bumptech/glide/load/g;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 532
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/a;

    .line 533
    new-instance v1, Lcom/bumptech/glide/load/h;

    invoke-direct {v1}, Lcom/bumptech/glide/load/h;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/e/a;->q:Lcom/bumptech/glide/load/h;

    .line 534
    iget-object v2, p0, Lcom/bumptech/glide/e/a;->q:Lcom/bumptech/glide/load/h;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/h;->a(Lcom/bumptech/glide/load/h;)V

    .line 535
    new-instance v1, Lcom/bumptech/glide/g/b;

    invoke-direct {v1}, Lcom/bumptech/glide/g/b;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/e/a;->r:Ljava/util/Map;

    .line 536
    iget-object v2, p0, Lcom/bumptech/glide/e/a;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 537
    iput-boolean v1, v0, Lcom/bumptech/glide/e/a;->t:Z

    .line 538
    iput-boolean v1, v0, Lcom/bumptech/glide/e/a;->v:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 541
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 707
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->e:Lcom/bumptech/glide/load/resource/bitmap/k;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1200
    instance-of v0, p1, Lcom/bumptech/glide/e/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1201
    check-cast p1, Lcom/bumptech/glide/e/a;

    .line 1202
    iget v0, p1, Lcom/bumptech/glide/e/a;->b:F

    iget v2, p0, Lcom/bumptech/glide/e/a;->b:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/e/a;->f:I

    iget v2, p1, Lcom/bumptech/glide/e/a;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->e:Landroid/graphics/drawable/Drawable;

    .line 1204
    invoke-static {v0, v2}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/e/a;->h:I

    iget v2, p1, Lcom/bumptech/glide/e/a;->h:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->g:Landroid/graphics/drawable/Drawable;

    .line 1206
    invoke-static {v0, v2}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/e/a;->p:I

    iget v2, p1, Lcom/bumptech/glide/e/a;->p:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->o:Landroid/graphics/drawable/Drawable;

    .line 1208
    invoke-static {v0, v2}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->i:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/e/a;->i:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/e/a;->j:I

    iget v2, p1, Lcom/bumptech/glide/e/a;->j:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/e/a;->k:I

    iget v2, p1, Lcom/bumptech/glide/e/a;->k:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->m:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/e/a;->m:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->n:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/e/a;->n:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/e/a;->w:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->x:Z

    iget-boolean v2, p1, Lcom/bumptech/glide/e/a;->x:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->c:Lcom/bumptech/glide/load/engine/j;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->c:Lcom/bumptech/glide/load/engine/j;

    .line 1216
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/h;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/h;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->q:Lcom/bumptech/glide/load/h;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->q:Lcom/bumptech/glide/load/h;

    .line 1218
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->r:Ljava/util/Map;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->r:Ljava/util/Map;

    .line 1219
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->s:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->s:Ljava/lang/Class;

    .line 1220
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->l:Lcom/bumptech/glide/load/f;

    iget-object v2, p1, Lcom/bumptech/glide/e/a;->l:Lcom/bumptech/glide/load/f;

    .line 1221
    invoke-static {v0, v2}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/e/a;->u:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/bumptech/glide/e/a;->u:Landroid/content/res/Resources$Theme;

    .line 1222
    invoke-static {v0, p1}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public f()Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 738
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->c:Lcom/bumptech/glide/load/resource/bitmap/k;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/p;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>()V

    const/4 v2, 0x0

    .line 9858
    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 754
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->c:Lcom/bumptech/glide/load/resource/bitmap/k;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/p;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>()V

    const/4 v2, 0x1

    .line 10852
    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public final getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/j;
    .locals 1

    .line 1327
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->c:Lcom/bumptech/glide/load/engine/j;

    return-object v0
.end method

.method public final getErrorId()I
    .locals 1

    .line 1338
    iget v0, p0, Lcom/bumptech/glide/e/a;->f:I

    return v0
.end method

.method public final getErrorPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1360
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackId()I
    .locals 1

    .line 1354
    iget v0, p0, Lcom/bumptech/glide/e/a;->p:I

    return v0
.end method

.method public final getOnlyRetrieveFromCache()Z
    .locals 1

    .line 1426
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->x:Z

    return v0
.end method

.method public final getOptions()Lcom/bumptech/glide/load/h;
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->q:Lcom/bumptech/glide/load/h;

    return-object v0
.end method

.method public final getOverrideHeight()I
    .locals 1

    .line 1396
    iget v0, p0, Lcom/bumptech/glide/e/a;->j:I

    return v0
.end method

.method public final getOverrideWidth()I
    .locals 1

    .line 1388
    iget v0, p0, Lcom/bumptech/glide/e/a;->k:I

    return v0
.end method

.method public final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPlaceholderId()I
    .locals 1

    .line 1343
    iget v0, p0, Lcom/bumptech/glide/e/a;->h:I

    return v0
.end method

.method public final getPriority()Lcom/bumptech/glide/h;
    .locals 1

    .line 1384
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/h;

    return-object v0
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1322
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->s:Ljava/lang/Class;

    return-object v0
.end method

.method public final getSignature()Lcom/bumptech/glide/load/f;
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->l:Lcom/bumptech/glide/load/f;

    return-object v0
.end method

.method public final getSizeMultiplier()F
    .locals 1

    .line 1400
    iget v0, p0, Lcom/bumptech/glide/e/a;->b:F

    return v0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->u:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final getTransformations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/l<",
            "*>;>;"
        }
    .end annotation

    .line 1307
    iget-object v0, p0, Lcom/bumptech/glide/e/a;->r:Ljava/util/Map;

    return-object v0
.end method

.method public final getUseAnimationPool()Z
    .locals 1

    .line 1420
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->z:Z

    return v0
.end method

.method public final getUseUnlimitedSourceGeneratorsPool()Z
    .locals 1

    .line 1414
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->w:Z

    return v0
.end method

.method public h()Lcom/bumptech/glide/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 770
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/k;->d:Lcom/bumptech/glide/load/resource/bitmap/k;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    const/4 v2, 0x0

    .line 10858
    invoke-direct {p0, v0, v1, v2}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/resource/bitmap/k;Lcom/bumptech/glide/load/l;Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1229
    iget v0, p0, Lcom/bumptech/glide/e/a;->b:F

    invoke-static {v0}, Lcom/bumptech/glide/g/k;->a(F)I

    move-result v0

    .line 1230
    iget v1, p0, Lcom/bumptech/glide/e/a;->f:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->b(II)I

    move-result v0

    .line 1231
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1232
    iget v1, p0, Lcom/bumptech/glide/e/a;->h:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->b(II)I

    move-result v0

    .line 1233
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1234
    iget v1, p0, Lcom/bumptech/glide/e/a;->p:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->b(II)I

    move-result v0

    .line 1235
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1236
    iget-boolean v1, p0, Lcom/bumptech/glide/e/a;->i:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(ZI)I

    move-result v0

    .line 1237
    iget v1, p0, Lcom/bumptech/glide/e/a;->j:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->b(II)I

    move-result v0

    .line 1238
    iget v1, p0, Lcom/bumptech/glide/e/a;->k:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->b(II)I

    move-result v0

    .line 1239
    iget-boolean v1, p0, Lcom/bumptech/glide/e/a;->m:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(ZI)I

    move-result v0

    .line 1240
    iget-boolean v1, p0, Lcom/bumptech/glide/e/a;->n:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(ZI)I

    move-result v0

    .line 1241
    iget-boolean v1, p0, Lcom/bumptech/glide/e/a;->w:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(ZI)I

    move-result v0

    .line 1242
    iget-boolean v1, p0, Lcom/bumptech/glide/e/a;->x:Z

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(ZI)I

    move-result v0

    .line 1243
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->c:Lcom/bumptech/glide/load/engine/j;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1244
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->d:Lcom/bumptech/glide/h;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1245
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->q:Lcom/bumptech/glide/load/h;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1246
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->r:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1247
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->s:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1248
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->l:Lcom/bumptech/glide/load/f;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;I)I

    move-result v0

    .line 1249
    iget-object v1, p0, Lcom/bumptech/glide/e/a;->u:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public i()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1083
    sget-object v0, Lcom/bumptech/glide/load/resource/d/i;->b:Lcom/bumptech/glide/load/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/e/a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method protected final isAutoCloneEnabled()Z
    .locals 1

    .line 1294
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    return v0
.end method

.method public final isMemoryCacheable()Z
    .locals 1

    .line 1370
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->i:Z

    return v0
.end method

.method public final isPrioritySet()Z
    .locals 1

    const/16 v0, 0x8

    .line 1379
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/a;->isSet(I)Z

    move-result v0

    return v0
.end method

.method isScaleOnlyOrNoTransform()Z
    .locals 1

    .line 1404
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->y:Z

    return v0
.end method

.method public final isTransformationAllowed()Z
    .locals 1

    .line 571
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->n:Z

    return v0
.end method

.method public final isTransformationRequired()Z
    .locals 1

    .line 1312
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->m:Z

    return v0
.end method

.method public final isTransformationSet()Z
    .locals 1

    const/16 v0, 0x800

    .line 575
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/a;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isValidOverride()Z
    .locals 2

    .line 1392
    iget v0, p0, Lcom/bumptech/glide/e/a;->k:I

    iget v1, p0, Lcom/bumptech/glide/e/a;->j:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/g/k;->a(II)Z

    move-result v0

    return v0
.end method

.method public j()Lcom/bumptech/glide/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1261
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->t:Z

    return-object p0
.end method

.method public k()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1276
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1280
    iput-boolean v0, p0, Lcom/bumptech/glide/e/a;->v:Z

    .line 1281
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->j()Lcom/bumptech/glide/e/a;

    move-result-object v0

    return-object v0
.end method

.method protected final l()Lcom/bumptech/glide/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1287
    iget-boolean v0, p0, Lcom/bumptech/glide/e/a;->t:Z

    if-nez v0, :cond_0

    return-object p0

    .line 1288
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
