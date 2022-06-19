.class public Lcom/telguarder/features/numberLookup/Coordinates;
.super Ljava/lang/Object;
.source "Coordinates.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    .line 12
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p0, Lcom/telguarder/features/numberLookup/Coordinates;->latitude:D

    iget-wide v3, p0, Lcom/telguarder/features/numberLookup/Coordinates;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method
