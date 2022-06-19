.class Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c()V
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

    .line 384
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$6;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$6;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment$6;->a:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->c(Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;

    move-result-object v0

    .line 1300
    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1301
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadView;->b()V

    :cond_0
    return-void
.end method
