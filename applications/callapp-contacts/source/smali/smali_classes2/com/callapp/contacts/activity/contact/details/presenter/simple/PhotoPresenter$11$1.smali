.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 7

    .line 364
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 365
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "Map clicked from photo presenter"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 368
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v6, v0

    .line 372
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;

    iget-object v1, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$3000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;DDLjava/lang/String;)V

    return-void

    .line 374
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$3100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    return-void
.end method
