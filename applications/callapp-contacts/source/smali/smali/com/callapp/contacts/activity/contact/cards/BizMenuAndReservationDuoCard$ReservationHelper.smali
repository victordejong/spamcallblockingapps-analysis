.class Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;
.super Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReservationHelper"
.end annotation


# instance fields
.field private final itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

.field final synthetic this$0:Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->this$0:Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ItemHelper;-><init>(Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard;)V

    .line 123
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    const p1, 0x7f1205da

    .line 124
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1302
    iput-object p1, p2, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a:Ljava/lang/String;

    .line 124
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 125
    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a(Landroid/widget/ImageView$ScaleType;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object p1

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 126
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->b(Landroid/widget/ImageView$ScaleType;)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object p1

    const p2, 0x7f08047a

    .line 127
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->getItemClickListener()Landroid/view/View$OnClickListener;

    move-result-object p2

    .line 1318
    iput-object p2, p1, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private isOpenTableInstalled()Z
    .locals 3

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "reserve://opentable.com/1111"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.opentable.action.RESERVE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private showReservation(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 7

    .line 158
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getReserveUrl()Ljava/lang/String;

    move-result-object p2

    .line 160
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Failed - unknown"

    if-eqz v0, :cond_3

    const-string v0, "opentable"

    .line 162
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->isOpenTableInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "rid"

    .line 165
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "q"

    .line 167
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 169
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    :cond_0
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v5, v0, v3

    const-string v4, "reserve://opentable.com/%s"

    .line 177
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.opentable.action.RESERVE"

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {p1, v4}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    const-string v0, "Success - open via activity"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 189
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/Activities;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "Success - open via web url"

    goto :goto_1

    .line 194
    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    const-string v1, "Failed - no internet connection"

    .line 198
    :cond_3
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "Contact Details"

    const-string v0, "Duo card - Reservation item clicked"

    invoke-virtual {p1, p2, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    monitor-enter p2

    .line 134
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->shouldLoadItem(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    const v0, 0x7f0805a3

    const v1, 0x7f0805a2

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a(II)Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->a()Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    .line 141
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->itemBuilder:Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/ImageDuoCard$ImageDuoObject$SingleImageObject$Builder;->setShouldShowItem(Z)V

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->this$0:Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->updateCardData(Ljava/lang/Object;Z)V

    .line 143
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onItemClicked()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->this$0:Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->this$0:Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/BizMenuAndReservationDuoCard$ReservationHelper;->showReservation(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method shouldLoadItem(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 0

    .line 148
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getReserveUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
