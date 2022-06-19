.class public final Lcom/google/android/material/k/j;
.super Lcom/google/android/material/k/f;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/material/k/f;

.field private final b:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/k/f;F)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/android/material/k/f;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/material/k/j;->a:Lcom/google/android/material/k/f;

    .line 29
    iput p2, p0, Lcom/google/android/material/k/j;->b:F

    return-void
.end method


# virtual methods
.method public final a(FFFLcom/google/android/material/k/o;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/android/material/k/j;->a:Lcom/google/android/material/k/f;

    iget v1, p0, Lcom/google/android/material/k/j;->b:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/material/k/f;->a(FFFLcom/google/android/material/k/o;)V

    return-void
.end method

.method final a()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/material/k/j;->a:Lcom/google/android/material/k/f;

    invoke-virtual {v0}, Lcom/google/android/material/k/f;->a()Z

    move-result v0

    return v0
.end method
