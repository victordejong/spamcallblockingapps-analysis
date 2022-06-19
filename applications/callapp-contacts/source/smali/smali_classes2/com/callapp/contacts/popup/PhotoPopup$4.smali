.class Lcom/callapp/contacts/popup/PhotoPopup$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/PhotoPopup;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/PhotoPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/PhotoPopup;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$4;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    .line 153
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 154
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Contact Details"

    const-string v1, "Map from photo popup clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$4;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-static {p1}, Lcom/callapp/contacts/popup/PhotoPopup;->c(Lcom/callapp/contacts/popup/PhotoPopup;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$4;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-static {p1}, Lcom/callapp/contacts/popup/PhotoPopup;->b(Lcom/callapp/contacts/popup/PhotoPopup;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup$4;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-static {v0}, Lcom/callapp/contacts/popup/PhotoPopup;->c(Lcom/callapp/contacts/popup/PhotoPopup;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->openNavigationDirections(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$4;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-static {p1}, Lcom/callapp/contacts/popup/PhotoPopup;->b(Lcom/callapp/contacts/popup/PhotoPopup;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/popup/PhotoPopup$4;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-static {v0}, Lcom/callapp/contacts/popup/PhotoPopup;->d(Lcom/callapp/contacts/popup/PhotoPopup;)Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lat:D

    iget-object v2, p0, Lcom/callapp/contacts/popup/PhotoPopup$4;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-static {v2}, Lcom/callapp/contacts/popup/PhotoPopup;->d(Lcom/callapp/contacts/popup/PhotoPopup;)Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lng:D

    invoke-static {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->openViewLocationActivity(Landroid/content/Context;DD)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$4;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-static {p1}, Lcom/callapp/contacts/popup/PhotoPopup;->b(Lcom/callapp/contacts/popup/PhotoPopup;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    .line 164
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/PhotoPopup$4;->a:Lcom/callapp/contacts/popup/PhotoPopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/PhotoPopup;->dismiss()V

    return-void
.end method
