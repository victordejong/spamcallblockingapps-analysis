.class public final Lcom/google/android/material/internal/r$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcom/google/android/material/internal/r$b;->a:I

    .line 126
    iput p2, p0, Lcom/google/android/material/internal/r$b;->b:I

    .line 127
    iput p3, p0, Lcom/google/android/material/internal/r$b;->c:I

    .line 128
    iput p4, p0, Lcom/google/android/material/internal/r$b;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/r$b;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iget v0, p1, Lcom/google/android/material/internal/r$b;->a:I

    iput v0, p0, Lcom/google/android/material/internal/r$b;->a:I

    .line 133
    iget v0, p1, Lcom/google/android/material/internal/r$b;->b:I

    iput v0, p0, Lcom/google/android/material/internal/r$b;->b:I

    .line 134
    iget v0, p1, Lcom/google/android/material/internal/r$b;->c:I

    iput v0, p0, Lcom/google/android/material/internal/r$b;->c:I

    .line 135
    iget p1, p1, Lcom/google/android/material/internal/r$b;->d:I

    iput p1, p0, Lcom/google/android/material/internal/r$b;->d:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    .line 140
    iget v0, p0, Lcom/google/android/material/internal/r$b;->a:I

    iget v1, p0, Lcom/google/android/material/internal/r$b;->b:I

    iget v2, p0, Lcom/google/android/material/internal/r$b;->c:I

    iget v3, p0, Lcom/google/android/material/internal/r$b;->d:I

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/v;->b(Landroid/view/View;IIII)V

    return-void
.end method
