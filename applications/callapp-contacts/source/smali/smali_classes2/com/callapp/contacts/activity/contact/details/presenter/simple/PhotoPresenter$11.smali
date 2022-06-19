.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setGoogleMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 348
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getGoogleMapsLatLng()Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/c;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lat:D

    iget-wide v4, v0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lng:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 351
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/k;->b()V

    .line 352
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/k;->c()V

    .line 355
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/k;->a()V

    .line 356
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/c;->b()V

    .line 358
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2800(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;ZZ)V

    .line 359
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/c;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 360
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/c;

    move-result-object v2

    iget v0, v0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->zoom:F

    invoke-static {v1, v0}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/c;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$11;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$a;)V

    :cond_0
    return-void
.end method
