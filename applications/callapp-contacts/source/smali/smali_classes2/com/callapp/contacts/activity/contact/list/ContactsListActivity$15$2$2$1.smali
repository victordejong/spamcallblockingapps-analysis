.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupDone(Z)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1111
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    new-array v6, p1, [Ljava/lang/String;

    const-string v1, "Pusher"

    const-string v2, "Pusher clicked"

    const-string v3, "Draw overlay access opened"

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
