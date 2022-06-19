.class Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->setListener(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

.field final synthetic b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$3;->b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$3;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 118
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "MissCall"

    const-string v1, "ClickPlaceholderLastCard"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$3;->a:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;->getActionCta()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder$3;->b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;->a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardItemPromotionHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
