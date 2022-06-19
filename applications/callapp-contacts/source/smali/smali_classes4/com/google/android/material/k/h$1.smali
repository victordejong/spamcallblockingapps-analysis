.class final Lcom/google/android/material/k/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/k/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/k/h;-><init>(Lcom/google/android/material/k/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/k/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/k/h;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/google/android/material/k/h$1;->a:Lcom/google/android/material/k/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/k/o;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/google/android/material/k/h$1;->a:Lcom/google/android/material/k/h;

    invoke-static {v0}, Lcom/google/android/material/k/h;->a(Lcom/google/android/material/k/h;)Ljava/util/BitSet;

    move-result-object v0

    .line 1285
    iget-boolean v1, p1, Lcom/google/android/material/k/o;->g:Z

    .line 219
    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 220
    iget-object v0, p0, Lcom/google/android/material/k/h$1;->a:Lcom/google/android/material/k/h;

    invoke-static {v0}, Lcom/google/android/material/k/h;->b(Lcom/google/android/material/k/h;)[Lcom/google/android/material/k/o$f;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/k/o;->a(Landroid/graphics/Matrix;)Lcom/google/android/material/k/o$f;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public final b(Lcom/google/android/material/k/o;Landroid/graphics/Matrix;I)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/google/android/material/k/h$1;->a:Lcom/google/android/material/k/h;

    invoke-static {v0}, Lcom/google/android/material/k/h;->a(Lcom/google/android/material/k/h;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    .line 2285
    iget-boolean v2, p1, Lcom/google/android/material/k/o;->g:Z

    .line 225
    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 226
    iget-object v0, p0, Lcom/google/android/material/k/h$1;->a:Lcom/google/android/material/k/h;

    invoke-static {v0}, Lcom/google/android/material/k/h;->c(Lcom/google/android/material/k/h;)[Lcom/google/android/material/k/o$f;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/k/o;->a(Landroid/graphics/Matrix;)Lcom/google/android/material/k/o$f;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method
