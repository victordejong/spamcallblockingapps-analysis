.class public Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;
.super Lcom/callapp/contacts/model/contact/CacheableData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x511777120d354879L


# instance fields
.field public lat:D

.field public lng:D

.field public zoom:F


# direct methods
.method public constructor <init>(DDF)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/CacheableData;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lat:D

    .line 16
    iput-wide p3, p0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lng:D

    .line 17
    iput p5, p0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->zoom:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    .line 25
    iget-wide v2, p1, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lat:D

    iget-wide v4, p0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lat:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lng:D

    iget-wide v4, p0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lng:D

    .line 26
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget p1, p1, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->zoom:F

    iget v2, p0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->zoom:F

    .line 27
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    iget-wide v1, p0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->lng:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->zoom:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
