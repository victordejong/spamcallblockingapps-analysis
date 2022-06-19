.class final Lcom/google/android/material/q/l$b;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/q/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/q/k;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Lcom/google/android/material/q/l$a;

.field public final e:F


# direct methods
.method constructor <init>(Lcom/google/android/material/q/k;FLandroid/graphics/RectF;Lcom/google/android/material/q/l$a;Landroid/graphics/Path;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p4, p0, Lcom/google/android/material/q/l$b;->d:Lcom/google/android/material/q/l$a;

    .line 276
    iput-object p1, p0, Lcom/google/android/material/q/l$b;->a:Lcom/google/android/material/q/k;

    .line 277
    iput p2, p0, Lcom/google/android/material/q/l$b;->e:F

    .line 278
    iput-object p3, p0, Lcom/google/android/material/q/l$b;->c:Landroid/graphics/RectF;

    .line 279
    iput-object p5, p0, Lcom/google/android/material/q/l$b;->b:Landroid/graphics/Path;

    .line 280
    return-void
.end method
