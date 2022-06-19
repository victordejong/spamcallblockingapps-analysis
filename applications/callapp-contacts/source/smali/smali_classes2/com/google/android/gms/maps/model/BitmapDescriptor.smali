.class public final Lcom/google/android/gms/maps/model/BitmapDescriptor;
.super Ljava/lang/Object;


# instance fields
.field private final zze:Lcom/google/android/gms/dynamic/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/dynamic/b;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zze:Lcom/google/android/gms/dynamic/b;

    return-void
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/dynamic/b;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zze:Lcom/google/android/gms/dynamic/b;

    return-object v0
.end method
