.class Lcom/google/android/material/bottomnavigation/BottomNavigationView$2;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Lcom/google/android/material/internal/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView;->a()V
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

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2;->a:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/ac;Lcom/google/android/material/internal/j$b;)Landroidx/core/h/ac;
    .locals 2

    .prologue
    .line 263
    iget v0, p3, Lcom/google/android/material/internal/j$b;->d:I

    invoke-virtual {p2}, Landroidx/core/h/ac;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/j$b;->d:I

    .line 264
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/j$b;->a(Landroid/view/View;)V

    .line 265
    return-object p2
.end method
