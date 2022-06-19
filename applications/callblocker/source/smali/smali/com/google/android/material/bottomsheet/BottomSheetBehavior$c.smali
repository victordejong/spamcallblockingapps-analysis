.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private final c:Landroid/view/View;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1378
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->c:Landroid/view/View;

    .line 1379
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a:I

    .line 1380
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;)Z
    .locals 1

    .prologue
    .line 1369
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;Z)Z
    .locals 0

    .prologue
    .line 1369
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->d:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/d/b/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/d/b/c;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->c:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/h/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1389
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->d:Z

    .line 1390
    return-void

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    goto :goto_0
.end method
