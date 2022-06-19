.class public final Lcom/facebook/ads/redexgen/X/Kp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ko;
    }
.end annotation


# static fields
.field public static final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ko;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:Landroid/app/Activity;

.field public A01:Landroid/view/Window$Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 41877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41878
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A02:Ljava/util/List;

    .line 41879
    return-void
.end method

.method public constructor <init>(Landroid/view/Window$Callback;Landroid/app/Activity;)V
    .locals 0

    .line 41880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41881
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    .line 41882
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Kp;->A00:Landroid/app/Activity;

    .line 41883
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Ko;)V
    .locals 1

    .line 41884
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A02:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41885
    return-void
.end method


# virtual methods
.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 41887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 41888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 41889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41890
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kp;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ko;

    .line 41891
    .local p1, "dispatchTouchEventListener":Lcom/facebook/ads/redexgen/X/Ko;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Ko;->A4p(Landroid/view/MotionEvent;)V

    .line 41892
    .end local p1    # "dispatchTouchEventListener":Lcom/facebook/ads/redexgen/X/Ko;
    goto :goto_0

    .line 41893
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41894
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 41895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 41896
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 41897
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 41898
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 41899
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 41900
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .line 41901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 41902
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 41903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41904
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 41905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 41906
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 41907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 41908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 41909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 41910
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 41911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested()Z
    .locals 1

    .line 41912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 41913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v0

    return v0
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 41914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 41915
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 41916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 41917
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41919
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kp;->A01:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
