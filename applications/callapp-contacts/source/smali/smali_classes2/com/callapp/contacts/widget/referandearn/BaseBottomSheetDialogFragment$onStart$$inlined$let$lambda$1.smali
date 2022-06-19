.class public final Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment$onStart$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "com/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment$onStart$1$1",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "onGlobalLayout",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field final synthetic c:Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment$onStart$$inlined$let$lambda$1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment$onStart$$inlined$let$lambda$1;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-object p3, p0, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment$onStart$$inlined$let$lambda$1;->c:Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment$onStart$$inlined$let$lambda$1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment$onStart$$inlined$let$lambda$1;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment$onStart$$inlined$let$lambda$1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v1

    .line 1763
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(I)V

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment$onStart$$inlined$let$lambda$1;->c:Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
