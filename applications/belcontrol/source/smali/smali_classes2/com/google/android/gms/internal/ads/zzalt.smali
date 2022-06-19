.class public final Lcom/google/android/gms/internal/ads/zzalt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbae<",
        "Lcom/google/android/gms/internal/ads/zzakm;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdki:Lcom/google/android/gms/internal/ads/zzalm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzalq;Lcom/google/android/gms/internal/ads/zzalm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzdki:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzg(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzakm;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalt;->zzdki:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzakm;->zzuj()Lcom/google/android/gms/internal/ads/zzalw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzl(Ljava/lang/Object;)V

    return-void
.end method
