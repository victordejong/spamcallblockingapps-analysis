.class final Lcom/google/android/material/bottomnavigation/BottomNavigationView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/ac;Lcom/google/android/material/internal/r$b;)Landroidx/core/view/ac;
    .locals 5

    .line 262
    iget v0, p3, Lcom/google/android/material/internal/r$b;->d:I

    invoke-virtual {p2}, Landroidx/core/view/ac;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/r$b;->d:I

    .line 264
    invoke-static {p1}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 265
    :goto_0
    invoke-virtual {p2}, Landroidx/core/view/ac;->a()I

    move-result v0

    .line 266
    invoke-virtual {p2}, Landroidx/core/view/ac;->c()I

    move-result v2

    .line 267
    iget v3, p3, Lcom/google/android/material/internal/r$b;->a:I

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    add-int/2addr v3, v4

    iput v3, p3, Lcom/google/android/material/internal/r$b;->a:I

    .line 268
    iget v3, p3, Lcom/google/android/material/internal/r$b;->c:I

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    add-int/2addr v3, v0

    iput v3, p3, Lcom/google/android/material/internal/r$b;->c:I

    .line 269
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/r$b;->a(Landroid/view/View;)V

    return-object p2
.end method
