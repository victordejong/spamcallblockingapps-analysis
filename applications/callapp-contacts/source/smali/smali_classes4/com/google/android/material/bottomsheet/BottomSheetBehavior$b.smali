.class final Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private final c:Landroid/view/View;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    .line 1535
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->c:Landroid/view/View;

    .line 1537
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;)Z
    .locals 0

    .line 1527
    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1527
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->d:Z

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1542
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/customview/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Landroidx/customview/a/c;

    invoke-virtual {v0}, Landroidx/customview/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->c:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1545
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    :goto_0
    const/4 v0, 0x0

    .line 1547
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->d:Z

    return-void
.end method
