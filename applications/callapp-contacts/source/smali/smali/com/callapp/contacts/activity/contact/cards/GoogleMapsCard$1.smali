.class Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->updateCardData(Lcom/google/android/gms/maps/c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 181
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "Map card clicked"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$1;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->openNavigationDirections(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->openViewLocationActivity(Landroid/content/Context;DD)V

    return-void

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    return-void
.end method
