.class Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->updateCardData(Lcom/google/android/gms/maps/c;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/c;

.field final synthetic b:Lcom/google/android/gms/maps/model/LatLng;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$2;->c:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$2;->a:Lcom/google/android/gms/maps/c;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$2;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$2;->c:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$2;->a:Lcom/google/android/gms/maps/c;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$2;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard$2;->c:Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/GoogleMapsCard;)Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    move-result-object v2

    iget v2, v2, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->zoom:F

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    :cond_0
    return-void
.end method
