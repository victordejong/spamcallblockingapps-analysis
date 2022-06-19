.class final Lcom/google/android/material/floatingactionbutton/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/floatingactionbutton/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/d;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d$5;->a:Lcom/google/android/material/floatingactionbutton/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    .line 733
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d$5;->a:Lcom/google/android/material/floatingactionbutton/d;

    .line 1719
    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result v1

    .line 1720
    iget v2, v0, Lcom/google/android/material/floatingactionbutton/d;->o:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 1721
    iput v1, v0, Lcom/google/android/material/floatingactionbutton/d;->o:F

    .line 1722
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/d;->n()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
