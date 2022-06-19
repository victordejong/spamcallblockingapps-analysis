.class public Lcom/google/android/material/internal/j$b;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/j;
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

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lcom/google/android/material/internal/j$b;->a:I

    .line 115
    iput p2, p0, Lcom/google/android/material/internal/j$b;->b:I

    .line 116
    iput p3, p0, Lcom/google/android/material/internal/j$b;->c:I

    .line 117
    iput p4, p0, Lcom/google/android/material/internal/j$b;->d:I

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/j$b;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iget v0, p1, Lcom/google/android/material/internal/j$b;->a:I

    iput v0, p0, Lcom/google/android/material/internal/j$b;->a:I

    .line 122
    iget v0, p1, Lcom/google/android/material/internal/j$b;->b:I

    iput v0, p0, Lcom/google/android/material/internal/j$b;->b:I

    .line 123
    iget v0, p1, Lcom/google/android/material/internal/j$b;->c:I

    iput v0, p0, Lcom/google/android/material/internal/j$b;->c:I

    .line 124
    iget v0, p1, Lcom/google/android/material/internal/j$b;->d:I

    iput v0, p0, Lcom/google/android/material/internal/j$b;->d:I

    .line 125
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 129
    iget v0, p0, Lcom/google/android/material/internal/j$b;->a:I

    iget v1, p0, Lcom/google/android/material/internal/j$b;->b:I

    iget v2, p0, Lcom/google/android/material/internal/j$b;->c:I

    iget v3, p0, Lcom/google/android/material/internal/j$b;->d:I

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/h/u;->a(Landroid/view/View;IIII)V

    .line 130
    return-void
.end method
