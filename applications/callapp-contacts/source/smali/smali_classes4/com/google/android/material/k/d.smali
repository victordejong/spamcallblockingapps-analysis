.class public Lcom/google/android/material/k/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/k/o;FFF)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/material/k/o;FLandroid/graphics/RectF;Lcom/google/android/material/k/c;)V
    .locals 0

    .line 98
    invoke-interface {p4, p3}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result p3

    const/high16 p4, 0x42b40000    # 90.0f

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/google/android/material/k/d;->a(Lcom/google/android/material/k/o;FFF)V

    return-void
.end method
