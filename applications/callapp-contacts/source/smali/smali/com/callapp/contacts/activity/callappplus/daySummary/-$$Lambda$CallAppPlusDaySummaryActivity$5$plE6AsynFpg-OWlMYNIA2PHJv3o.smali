.class public final synthetic Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$5$plE6AsynFpg-OWlMYNIA2PHJv3o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/manager/IncognitoContactsManager;

.field public final synthetic f$1:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/manager/IncognitoContactsManager;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$5$plE6AsynFpg-OWlMYNIA2PHJv3o;->f$0:Lcom/callapp/contacts/manager/IncognitoContactsManager;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$5$plE6AsynFpg-OWlMYNIA2PHJv3o;->f$1:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$5$plE6AsynFpg-OWlMYNIA2PHJv3o;->f$0:Lcom/callapp/contacts/manager/IncognitoContactsManager;

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/-$$Lambda$CallAppPlusDaySummaryActivity$5$plE6AsynFpg-OWlMYNIA2PHJv3o;->f$1:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$5;->lambda$plE6AsynFpg-OWlMYNIA2PHJv3o(Lcom/callapp/contacts/manager/IncognitoContactsManager;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void
.end method
