.class public final Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private panoId:Ljava/lang/String;

.field private position:Lcom/google/android/gms/maps/model/LatLng;

.field private zzak:Ljava/lang/Boolean;

.field private zzap:Ljava/lang/Boolean;

.field private zzbx:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

.field private zzby:Ljava/lang/Integer;

.field private zzbz:Ljava/lang/Boolean;

.field private zzca:Ljava/lang/Boolean;

.field private zzcb:Ljava/lang/Boolean;

.field private zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lcom/google/android/gms/maps/p;

    invoke-direct {v0}, Lcom/google/android/gms/maps/p;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    .line 59
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    .line 61
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    .line 63
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    .line 65
    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewSource;->DEFAULT:Lcom/google/android/gms/maps/model/StreetViewSource;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBBLcom/google/android/gms/maps/model/StreetViewSource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    .line 10
    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewSource;->DEFAULT:Lcom/google/android/gms/maps/model/StreetViewSource;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbx:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzby:Ljava/lang/Integer;

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->panoId:Ljava/lang/String;

    .line 15
    invoke-static {p5}, Lcom/google/android/gms/maps/a/k;->a(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    .line 16
    invoke-static {p6}, Lcom/google/android/gms/maps/a/k;->a(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    .line 17
    invoke-static {p7}, Lcom/google/android/gms/maps/a/k;->a(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    .line 18
    invoke-static {p8}, Lcom/google/android/gms/maps/a/k;->a(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    .line 19
    invoke-static {p9}, Lcom/google/android/gms/maps/a/k;->a(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzak:Ljava/lang/Boolean;

    .line 20
    iput-object p10, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    return-void
.end method


# virtual methods
.method public final getPanningGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPanoramaId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->panoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getRadius()Ljava/lang/Integer;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzby:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSource()Lcom/google/android/gms/maps/model/StreetViewSource;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    return-object v0
.end method

.method public final getStreetNamesEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getStreetViewPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbx:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object v0
.end method

.method public final getUseViewLifecycleInFragment()Ljava/lang/Boolean;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzak:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUserNavigationEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getZoomGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final panningGesturesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final panoramaCamera(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbx:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object p0
.end method

.method public final panoramaId(Ljava/lang/String;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->panoId:Ljava/lang/String;

    return-object p0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/StreetViewSource;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 81
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    return-object p0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 74
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzby:Ljava/lang/Integer;

    return-object p0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/android/gms/maps/model/StreetViewSource;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 77
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzby:Ljava/lang/Integer;

    .line 78
    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    return-object p0
.end method

.method public final streetNamesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .line 89
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 103
    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->panoId:Ljava/lang/String;

    const-string v2, "PanoramaId"

    .line 104
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    const-string v2, "Position"

    .line 105
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzby:Ljava/lang/Integer;

    const-string v2, "Radius"

    .line 106
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    const-string v2, "Source"

    .line 107
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbx:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    const-string v2, "StreetViewPanoramaCamera"

    .line 108
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    const-string v2, "UserNavigationEnabled"

    .line 109
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    const-string v2, "ZoomGesturesEnabled"

    .line 110
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    const-string v2, "PanningGesturesEnabled"

    .line 111
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    const-string v2, "StreetNamesEnabled"

    .line 112
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzak:Ljava/lang/Boolean;

    const-string v2, "UseViewLifecycleInFragment"

    .line 113
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/m$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/m$a;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/m$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .line 91
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzak:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final userNavigationEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->getStreetViewPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 26
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->getPanoramaId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 29
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/4 v2, 0x4

    .line 32
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->getRadius()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x5

    .line 2002
    invoke-static {p1, v4, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;II)V

    .line 2003
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    const/4 v1, 0x6

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/k;->a(Ljava/lang/Boolean;)B

    move-result v2

    .line 38
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IB)V

    const/4 v1, 0x7

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/k;->a(Ljava/lang/Boolean;)B

    move-result v2

    .line 41
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x8

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/k;->a(Ljava/lang/Boolean;)B

    move-result v2

    .line 44
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0x9

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/k;->a(Ljava/lang/Boolean;)B

    move-result v2

    .line 47
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xa

    .line 49
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzak:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/a/k;->a(Ljava/lang/Boolean;)B

    move-result v2

    .line 50
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;IB)V

    const/16 v1, 0xb

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->getSource()Lcom/google/android/gms/maps/model/StreetViewSource;

    move-result-object v2

    .line 53
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .line 85
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    return-object p0
.end method
