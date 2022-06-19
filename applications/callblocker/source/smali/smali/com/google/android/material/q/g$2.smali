.class Lcom/google/android/material/q/g$2;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lcom/google/android/material/q/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/q/g;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/google/android/material/q/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/q/g;F)V
    .locals 0

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/google/android/material/q/g$2;->b:Lcom/google/android/material/q/g;

    iput p2, p0, Lcom/google/android/material/q/g$2;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/q/c;)Lcom/google/android/material/q/c;
    .locals 2

    .prologue
    .line 1116
    instance-of v0, p1, Lcom/google/android/material/q/i;

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/material/q/b;

    iget v1, p0, Lcom/google/android/material/q/g$2;->a:F

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/q/b;-><init>(FLcom/google/android/material/q/c;)V

    move-object p1, v0

    goto :goto_0
.end method
