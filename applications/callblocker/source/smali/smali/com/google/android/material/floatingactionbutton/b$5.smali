.class Lcom/google/android/material/floatingactionbutton/b$5;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/b;->A()Landroid/view/ViewTreeObserver$OnPreDrawListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/floatingactionbutton/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/b;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b$5;->a:Lcom/google/android/material/floatingactionbutton/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$5;->a:Lcom/google/android/material/floatingactionbutton/b;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/b;->t()V

    .line 734
    const/4 v0, 0x1

    return v0
.end method
