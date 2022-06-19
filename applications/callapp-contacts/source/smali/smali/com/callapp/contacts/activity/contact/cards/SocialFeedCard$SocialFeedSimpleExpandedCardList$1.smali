.class Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 454
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 455
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact Details"

    const-string v1, "Social feed card clicked"

    const-string v2, "Arrow to 6 pack"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList$1;->a:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialFeedSimpleExpandedCardList;->b:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;->access$1100(Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;)V

    return-void
.end method
