.class Lcom/google/android/material/q/g$1;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lcom/google/android/material/q/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/q/g;-><init>(Lcom/google/android/material/q/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/q/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/q/g;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/material/q/g$1;->a:Lcom/google/android/material/q/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/q/m;Landroid/graphics/Matrix;I)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/material/q/g$1;->a:Lcom/google/android/material/q/g;

    invoke-static {v0}, Lcom/google/android/material/q/g;->a(Lcom/google/android/material/q/g;)[Lcom/google/android/material/q/m$f;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/q/m;->a(Landroid/graphics/Matrix;)Lcom/google/android/material/q/m$f;

    move-result-object v1

    aput-object v1, v0, p3

    .line 206
    return-void
.end method

.method public b(Lcom/google/android/material/q/m;Landroid/graphics/Matrix;I)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/material/q/g$1;->a:Lcom/google/android/material/q/g;

    invoke-static {v0}, Lcom/google/android/material/q/g;->b(Lcom/google/android/material/q/g;)[Lcom/google/android/material/q/m$f;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/google/android/material/q/m;->a(Landroid/graphics/Matrix;)Lcom/google/android/material/q/m$f;

    move-result-object v1

    aput-object v1, v0, p3

    .line 211
    return-void
.end method
