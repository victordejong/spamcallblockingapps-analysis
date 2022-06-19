.class Lcom/google/android/material/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/o$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/material/internal/o$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/android/material/internal/o$a;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/android/material/internal/o$a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/internal/o;)V

    iput-object v0, p0, Lcom/google/android/material/internal/o;->a:Lcom/google/android/material/internal/o$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/google/android/material/internal/o;->a:Lcom/google/android/material/internal/o$a;

    .line 1203
    iget-boolean v1, v0, Lcom/google/android/material/internal/o$a;->f:Z

    if-nez v1, :cond_2

    .line 1141
    iget-object v1, v0, Lcom/google/android/material/internal/o$a;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/internal/o$a;->d:Ljava/util/ArrayList;

    .line 1145
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/internal/o$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1147
    iget-object v1, v0, Lcom/google/android/material/internal/o$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/o$a;->invalidate(Landroid/graphics/Rect;)V

    .line 1149
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void

    .line 1204
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/android/material/internal/o;->a:Lcom/google/android/material/internal/o$a;

    .line 2155
    iget-object v1, v0, Lcom/google/android/material/internal/o$a;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2156
    iget-object v1, v0, Lcom/google/android/material/internal/o$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2157
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/o$a;->invalidate(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    .line 2158
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2211
    invoke-virtual {v0}, Lcom/google/android/material/internal/o$a;->getChildCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/google/android/material/internal/o$a;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/google/android/material/internal/o$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 2212
    iput-boolean p1, v0, Lcom/google/android/material/internal/o$a;->f:Z

    .line 2213
    iget-object p1, v0, Lcom/google/android/material/internal/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
