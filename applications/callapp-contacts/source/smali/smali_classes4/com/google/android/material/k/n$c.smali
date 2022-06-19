.class final Lcom/google/android/material/k/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/k/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/k/m;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/RectF;

.field public final d:Lcom/google/android/material/k/n$b;

.field public final e:F


# direct methods
.method constructor <init>(Lcom/google/android/material/k/m;FLandroid/graphics/RectF;Lcom/google/android/material/k/n$b;Landroid/graphics/Path;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p4, p0, Lcom/google/android/material/k/n$c;->d:Lcom/google/android/material/k/n$b;

    .line 350
    iput-object p1, p0, Lcom/google/android/material/k/n$c;->a:Lcom/google/android/material/k/m;

    .line 351
    iput p2, p0, Lcom/google/android/material/k/n$c;->e:F

    .line 352
    iput-object p3, p0, Lcom/google/android/material/k/n$c;->c:Landroid/graphics/RectF;

    .line 353
    iput-object p5, p0, Lcom/google/android/material/k/n$c;->b:Landroid/graphics/Path;

    return-void
.end method
