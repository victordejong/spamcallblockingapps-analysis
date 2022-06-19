.class public final synthetic Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$aQhmIk-W5zNi0c7BEjzx9T9JVsA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/manager/analytics/AnalyticsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$aQhmIk-W5zNi0c7BEjzx9T9JVsA;->f$0:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    return-void
.end method


# virtual methods
.method public final popupDone(Z)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$aQhmIk-W5zNi0c7BEjzx9T9JVsA;->f$0:Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->lambda$null$0(Lcom/callapp/contacts/manager/analytics/AnalyticsManager;Z)V

    return-void
.end method
