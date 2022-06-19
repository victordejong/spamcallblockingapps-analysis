.class Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/SwitchCompat;

.field final synthetic b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Landroidx/appcompat/widget/SwitchCompat;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$4;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$4;->a:Landroidx/appcompat/widget/SwitchCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$4;->a:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 176
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method
