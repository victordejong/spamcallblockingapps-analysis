.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$4;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseKeypadRequestedByUser(Z)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$4;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$4;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;->onCloseKeypadRequestedByUser(Z)V

    :cond_0
    return-void
.end method

.method public onNumberChanged(Ljava/lang/String;IIIZ)V
    .locals 7

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$4;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$4;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;->onNumberChanged(Ljava/lang/String;IIIZ)V

    :cond_0
    return-void
.end method

.method public onVoiceSearchRequested()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$4;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$4;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->a(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$KeypadEvents;->onVoiceSearchRequested()V

    :cond_0
    return-void
.end method
