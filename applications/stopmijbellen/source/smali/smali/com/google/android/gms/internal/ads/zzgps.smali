.class public final Lcom/google/android/gms/internal/ads/zzgps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgpr;
.implements Lcom/google/android/gms/internal/ads/zzgpl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgpr;",
        "Lcom/google/android/gms/internal/ads/zzgpl;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgps<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgps;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgps;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgps;->zza:Lcom/google/android/gms/internal/ads/zzgps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgps;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzgpr<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgps;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/zzgpz;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgps;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzc(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzgpr<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgps;->zza:Lcom/google/android/gms/internal/ads/zzgps;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgps;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgps;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgps;->zzb:Ljava/lang/Object;

    return-object v0
.end method
