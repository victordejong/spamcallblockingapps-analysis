.class Lcom/google/android/material/q/m$1;
.super Lcom/google/android/material/q/m$f;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/q/m;->a(Landroid/graphics/Matrix;)Lcom/google/android/material/q/m$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/graphics/Matrix;

.field final synthetic c:Lcom/google/android/material/q/m;


# direct methods
.method constructor <init>(Lcom/google/android/material/q/m;Ljava/util/List;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/android/material/q/m$1;->c:Lcom/google/android/material/q/m;

    iput-object p2, p0, Lcom/google/android/material/q/m$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/material/q/m$1;->b:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/google/android/material/q/m$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lcom/google/android/material/p/a;ILandroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/material/q/m$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/q/m$f;

    .line 226
    iget-object v2, p0, Lcom/google/android/material/q/m$1;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/google/android/material/q/m$f;->a(Landroid/graphics/Matrix;Lcom/google/android/material/p/a;ILandroid/graphics/Canvas;)V

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method
