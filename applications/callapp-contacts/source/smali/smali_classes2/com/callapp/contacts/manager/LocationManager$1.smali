.class Lcom/callapp/contacts/manager/LocationManager$1;
.super Lcom/google/android/gms/location/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

.field final synthetic b:Lcom/callapp/contacts/manager/LocationManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/LocationManager;Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/manager/LocationManager$1;->b:Lcom/callapp/contacts/manager/LocationManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/LocationManager$1;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    invoke-direct {p0}, Lcom/google/android/gms/location/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/location/LocationAvailability;)V

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/manager/LocationManager$1;->b:Lcom/callapp/contacts/manager/LocationManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/LocationManager;->a(Lcom/callapp/contacts/manager/LocationManager;)Lcom/google/android/gms/location/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/location/d;)Lcom/google/android/gms/tasks/h;

    .line 55
    iget-object p1, p0, Lcom/callapp/contacts/manager/LocationManager$1;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/LocationManager;->a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;Landroid/location/Location;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/google/android/gms/location/d;->a(Lcom/google/android/gms/location/LocationResult;)V

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/manager/LocationManager$1;->a:Lcom/callapp/contacts/manager/LocationManager$LocationResult;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/manager/LocationManager;->a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;Landroid/location/Location;)V

    .line 48
    iget-object p1, p0, Lcom/callapp/contacts/manager/LocationManager$1;->b:Lcom/callapp/contacts/manager/LocationManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/LocationManager;->a(Lcom/callapp/contacts/manager/LocationManager;)Lcom/google/android/gms/location/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/location/b;->a(Lcom/google/android/gms/location/d;)Lcom/google/android/gms/tasks/h;

    return-void
.end method
