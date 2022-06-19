.class Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 154
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->getAnalyticsTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close all clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$4;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->d(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V

    return-void
.end method
