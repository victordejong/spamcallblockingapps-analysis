.class final Lcom/google/android/material/k/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/k/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/k/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/google/android/material/k/h;


# direct methods
.method constructor <init>(Lcom/google/android/material/k/h;F)V
    .locals 0

    .line 1156
    iput-object p1, p0, Lcom/google/android/material/k/h$2;->b:Lcom/google/android/material/k/h;

    iput p2, p0, Lcom/google/android/material/k/h$2;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/k/c;)Lcom/google/android/material/k/c;
    .locals 2

    .line 1162
    instance-of v0, p1, Lcom/google/android/material/k/k;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/material/k/b;

    iget v1, p0, Lcom/google/android/material/k/h$2;->a:F

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/k/b;-><init>(FLcom/google/android/material/k/c;)V

    return-object v0
.end method
