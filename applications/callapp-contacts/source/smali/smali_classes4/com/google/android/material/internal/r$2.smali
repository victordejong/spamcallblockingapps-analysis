.class public final Lcom/google/android/material/internal/r$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/material/internal/r$a;


# direct methods
.method public constructor <init>(ZZZLcom/google/android/material/internal/r$a;)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/google/android/material/internal/r$2;->a:Z

    iput-boolean p2, p0, Lcom/google/android/material/internal/r$2;->b:Z

    iput-boolean p3, p0, Lcom/google/android/material/internal/r$2;->c:Z

    iput-object p4, p0, Lcom/google/android/material/internal/r$2;->d:Lcom/google/android/material/internal/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/ac;Lcom/google/android/material/internal/r$b;)Landroidx/core/view/ac;
    .locals 3

    .line 185
    iget-boolean v0, p0, Lcom/google/android/material/internal/r$2;->a:Z

    if-eqz v0, :cond_0

    .line 186
    iget v0, p3, Lcom/google/android/material/internal/r$b;->d:I

    invoke-virtual {p2}, Landroidx/core/view/ac;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/r$b;->d:I

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/internal/r;->a(Landroid/view/View;)Z

    move-result v0

    .line 189
    iget-boolean v1, p0, Lcom/google/android/material/internal/r$2;->b:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 191
    iget v1, p3, Lcom/google/android/material/internal/r$b;->c:I

    invoke-virtual {p2}, Landroidx/core/view/ac;->a()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/r$b;->c:I

    goto :goto_0

    .line 193
    :cond_1
    iget v1, p3, Lcom/google/android/material/internal/r$b;->a:I

    invoke-virtual {p2}, Landroidx/core/view/ac;->a()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/r$b;->a:I

    .line 196
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/internal/r$2;->c:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 198
    iget v0, p3, Lcom/google/android/material/internal/r$b;->a:I

    invoke-virtual {p2}, Landroidx/core/view/ac;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/r$b;->a:I

    goto :goto_1

    .line 200
    :cond_3
    iget v0, p3, Lcom/google/android/material/internal/r$b;->c:I

    invoke-virtual {p2}, Landroidx/core/view/ac;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/r$b;->c:I

    .line 203
    :cond_4
    :goto_1
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/r$b;->a(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/material/internal/r$2;->d:Lcom/google/android/material/internal/r$a;

    if-eqz v0, :cond_5

    .line 205
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/material/internal/r$a;->a(Landroid/view/View;Landroidx/core/view/ac;Lcom/google/android/material/internal/r$b;)Landroidx/core/view/ac;

    move-result-object p1

    return-object p1

    :cond_5
    return-object p2
.end method
