.class Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Window$Callback;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;Landroid/view/Window$Callback;Landroid/app/Activity;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->c:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 48
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->c:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 59
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->c:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->c:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 81
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->c:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$1;->a:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
