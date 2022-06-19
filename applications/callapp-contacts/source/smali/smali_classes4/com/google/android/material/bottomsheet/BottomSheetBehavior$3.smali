.class final Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1277
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/ac;Lcom/google/android/material/internal/r$b;)Landroidx/core/view/ac;
    .locals 0

    .line 1281
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1462
    iget-object p3, p2, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {p3}, Landroidx/core/view/ac$e;->i()Landroidx/core/graphics/b;

    move-result-object p3

    .line 1281
    iget p3, p3, Landroidx/core/graphics/b;->e:I

    invoke-static {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 1282
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-object p2
.end method
