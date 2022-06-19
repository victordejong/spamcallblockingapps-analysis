.class Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$2;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 3

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$2;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;

    iget-boolean p1, p1, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->e:Z

    if-eqz p1, :cond_0

    const-string p1, "markAsSpam"

    goto :goto_0

    :cond_0
    const-string p1, "unMarkAsSpam"

    .line 55
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Spam"

    const-string v2, "SubmitSpam"

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField$2;->a:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextField;->b()V

    return-void
.end method
