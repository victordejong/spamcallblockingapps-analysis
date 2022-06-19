.class public abstract Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/b;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH&J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u001c\u001a\u00020\rH\u0016J\u0008\u0010\u001d\u001a\u00020\rH\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "Lcom/callapp/contacts/manager/phone/CallStateListener;",
        "()V",
        "rootView",
        "Landroid/view/View;",
        "getRootView",
        "()Landroid/view/View;",
        "setRootView",
        "(Landroid/view/View;)V",
        "getLayoutResource",
        "",
        "onActivityCreated",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCallStateChanged",
        "callData",
        "Lcom/callapp/contacts/model/call/CallData;",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onCreateView",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "bundle",
        "onDestroy",
        "onStart",
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
.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/b;->a(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->setShowWhenLocked(Z)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x80000

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 49
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    const/16 v1, 0x7f6

    goto :goto_1

    :cond_2
    const/16 v1, 0x7d2

    .line 55
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_3
    return-object p1
.end method

.method public abstract getLayoutResource()I
.end method

.method public final getRootView()Landroid/view/View;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "it"

    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    const v0, 0x7f0601f1

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    if-ne p1, v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->b()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/b;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/manager/phone/CallStateListener;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "layoutInflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->getLayoutResource()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->c:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/b;->onDestroy()V

    .line 90
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/manager/phone/CallStateListener;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 63
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/b;->onStart()V

    .line 64
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0a02fa

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    :cond_0
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from(bottomSheet)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->c:Landroid/view/View;

    if-eqz v1, :cond_1

    const v2, 0x7f0a077c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    const-string v3, "layout.viewTreeObserver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v3, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment$onStart$$inlined$let$lambda$1;

    invoke-direct {v3, v1, v0, p0}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment$onStart$$inlined$let$lambda$1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;)V

    check-cast v3, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method
