.class public final Lcom/google/android/gms/internal/ads/zzebr$zza;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeaq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzebr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzicu:Lcom/google/android/gms/internal/ads/zzebf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzebf<",
            "Lcom/google/android/gms/internal/ads/zzeaq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzebf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzebf<",
            "Lcom/google/android/gms/internal/ads/zzeaq;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebr$zza;->zzicu:Lcom/google/android/gms/internal/ads/zzebf;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzebf;Lcom/google/android/gms/internal/ads/zzebt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzebr$zza;-><init>(Lcom/google/android/gms/internal/ads/zzebf;)V

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebr$zza;->zzicu:Lcom/google/android/gms/internal/ads/zzebf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebf;->zzbar()Lcom/google/android/gms/internal/ads/zzebi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebi;->zzbaw()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebr$zza;->zzicu:Lcom/google/android/gms/internal/ads/zzebf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebf;->zzbar()Lcom/google/android/gms/internal/ads/zzebi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzebi;->zzbat()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeaq;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzeaq;->zzc([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeho;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
