.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->setGoogleMapTheme(ZZ)V
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

    .line 549
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$3202(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 554
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$3300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$3400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getGoogleMapsLatLng()Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)V

    .line 556
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$3500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$tY5o7UVpUK8kYSmy16ZwfiUhSy4(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 552
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;->access$2700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter;)Lcom/google/android/gms/maps/c;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$PhotoPresenter$12$tY5o7UVpUK8kYSmy16ZwfiUhSy4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$PhotoPresenter$12$tY5o7UVpUK8kYSmy16ZwfiUhSy4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12;)V

    .line 1262
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/a/b;

    new-instance v3, Lcom/google/android/gms/maps/u;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/maps/u;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$c;)V

    const/4 v0, 0x0

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/maps/a/b;->a(Lcom/google/android/gms/maps/a/u;Lcom/google/android/gms/dynamic/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1265
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
