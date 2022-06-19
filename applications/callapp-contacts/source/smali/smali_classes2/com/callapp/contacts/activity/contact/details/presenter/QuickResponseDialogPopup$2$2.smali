.class Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;->onRowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 74
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SMS permission not granted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Permissions"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->a(Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;)V

    return-void
.end method
