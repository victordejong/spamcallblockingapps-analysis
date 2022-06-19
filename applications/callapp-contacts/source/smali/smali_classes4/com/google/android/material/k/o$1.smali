.class final Lcom/google/android/material/k/o$1;
.super Lcom/google/android/material/k/o$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/k/o;->a(Landroid/graphics/Matrix;)Lcom/google/android/material/k/o$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/graphics/Matrix;

.field final synthetic c:Lcom/google/android/material/k/o;


# direct methods
.method constructor <init>(Lcom/google/android/material/k/o;Ljava/util/List;Landroid/graphics/Matrix;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/google/android/material/k/o$1;->c:Lcom/google/android/material/k/o;

    iput-object p2, p0, Lcom/google/android/material/k/o$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/material/k/o$1;->b:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/google/android/material/k/o$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;Lcom/google/android/material/j/a;ILandroid/graphics/Canvas;)V
    .locals 2

    .line 262
    iget-object p1, p0, Lcom/google/android/material/k/o$1;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/k/o$f;

    .line 263
    iget-object v1, p0, Lcom/google/android/material/k/o$1;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/material/k/o$f;->a(Landroid/graphics/Matrix;Lcom/google/android/material/j/a;ILandroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
