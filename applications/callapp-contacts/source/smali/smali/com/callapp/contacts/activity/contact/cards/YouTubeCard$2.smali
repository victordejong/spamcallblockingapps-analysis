.class Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeLayoutViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact Details"

    const-string v1, "Video card clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;)Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;->a(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard$YouTubeCardListObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/YouTubeCard;Ljava/lang/String;)V

    return-void
.end method
