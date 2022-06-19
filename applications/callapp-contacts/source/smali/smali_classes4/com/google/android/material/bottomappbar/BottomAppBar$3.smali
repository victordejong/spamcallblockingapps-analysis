.class final Lcom/google/android/material/bottomappbar/BottomAppBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/ac;Lcom/google/android/material/internal/r$b;)Landroidx/core/view/ac;
    .locals 3

    .line 306
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->f(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p2}, Landroidx/core/view/ac;->d()I

    move-result p3

    invoke-static {p1, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->g(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 310
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->h(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result p1

    invoke-virtual {p2}, Landroidx/core/view/ac;->a()I

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p2}, Landroidx/core/view/ac;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 313
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->i(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->j(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/ac;->c()I

    move-result v2

    if-eq v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    .line 315
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {p2}, Landroidx/core/view/ac;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->c(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I

    move v0, p3

    :cond_4
    if-nez p1, :cond_5

    if-eqz v0, :cond_6

    .line 321
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->k(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 323
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->l(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 324
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->m(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    :cond_6
    return-object p2
.end method
