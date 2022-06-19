.class final Lcom/google/android/material/bottomappbar/BottomAppBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/a/k<",
        "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/View;)V
    .locals 3

    .line 208
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1217
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getTranslationX()F

    move-result v0

    .line 1218
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/a;

    move-result-object v1

    .line 2181
    iget v1, v1, Lcom/google/android/material/bottomappbar/a;->e:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/a;

    move-result-object v1

    .line 3171
    iput v0, v1, Lcom/google/android/material/bottomappbar/a;->e:F

    .line 1220
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/k/h;->invalidateSelf()V

    .line 1224
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1225
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/a;

    move-result-object v2

    .line 3190
    iget v2, v2, Lcom/google/android/material/bottomappbar/a;->d:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    .line 1226
    iget-object v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomappbar/a;->a(F)V

    .line 1227
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/k/h;->invalidateSelf()V

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/k/h;

    move-result-object v0

    .line 1230
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getScaleY()F

    move-result v1

    .line 1229
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/material/k/h;->p(F)V

    return-void
.end method

.method public final synthetic b(Landroid/view/View;)V
    .locals 2

    .line 208
    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1211
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/k/h;

    move-result-object v0

    .line 1212
    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getScaleY()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1211
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->p(F)V

    return-void
.end method
