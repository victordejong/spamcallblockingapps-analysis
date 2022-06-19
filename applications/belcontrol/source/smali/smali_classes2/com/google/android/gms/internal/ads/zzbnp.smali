.class public final Lcom/google/android/gms/internal/ads/zzbnp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzbts;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfwa:Lcom/google/android/gms/internal/ads/zzbnq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzfwa:Lcom/google/android/gms/internal/ads/zzbnq;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzfwa:Lcom/google/android/gms/internal/ads/zzbnq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnq;->zzakp()Lcom/google/android/gms/internal/ads/zzbts;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbts;

    return-object v0
.end method
