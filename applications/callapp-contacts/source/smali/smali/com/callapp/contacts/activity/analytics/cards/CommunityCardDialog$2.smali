.class Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$2;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$2;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 125
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$2;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Insights"

    const-string v1, "ClickGotItInsightsCommunityPopup"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$2;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->dismiss()V

    return-void
.end method
