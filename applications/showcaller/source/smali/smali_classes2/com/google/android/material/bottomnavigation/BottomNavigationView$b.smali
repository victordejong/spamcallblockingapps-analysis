.class Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Lcom/google/android/material/internal/q$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;->d()V
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

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$b;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/h/l/e0;Lcom/google/android/material/internal/q$f;)Lb/h/l/e0;
    .locals 5

    .line 1
    iget v0, p3, Lcom/google/android/material/internal/q$f;->d:I

    invoke-virtual {p2}, Lb/h/l/e0;->i()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/q$f;->d:I

    .line 2
    invoke-static {p1}, Lb/h/l/w;->C(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p2}, Lb/h/l/e0;->j()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lb/h/l/e0;->k()I

    move-result v2

    .line 5
    iget v3, p3, Lcom/google/android/material/internal/q$f;->a:I

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    add-int/2addr v3, v4

    iput v3, p3, Lcom/google/android/material/internal/q$f;->a:I

    .line 6
    iget v3, p3, Lcom/google/android/material/internal/q$f;->c:I

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    add-int/2addr v3, v0

    iput v3, p3, Lcom/google/android/material/internal/q$f;->c:I

    .line 7
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/q$f;->a(Landroid/view/View;)V

    return-object p2
.end method
