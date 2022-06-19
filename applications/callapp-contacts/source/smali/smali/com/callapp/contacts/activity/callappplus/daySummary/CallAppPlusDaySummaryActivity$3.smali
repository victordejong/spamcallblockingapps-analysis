.class Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$3;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 90
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "CallAppPlus day summary overlay"

    const-string v1, "Close all clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$3;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V

    return-void
.end method
