.class public Lcom/google/android/material/q/d;
.super Ljava/lang/Object;
.source "CornerTreatment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFLcom/google/android/material/q/m;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    return-void
.end method

.method public a(Lcom/google/android/material/q/m;FFF)V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0, p2, p3, p1}, Lcom/google/android/material/q/d;->a(FFLcom/google/android/material/q/m;)V

    .line 71
    return-void
.end method

.method public a(Lcom/google/android/material/q/m;FFLandroid/graphics/RectF;Lcom/google/android/material/q/c;)V
    .locals 1

    .prologue
    .line 98
    invoke-interface {p5, p4}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/q/d;->a(Lcom/google/android/material/q/m;FFF)V

    .line 99
    return-void
.end method
