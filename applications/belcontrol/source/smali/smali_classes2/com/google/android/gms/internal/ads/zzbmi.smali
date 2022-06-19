.class public final Lcom/google/android/gms/internal/ads/zzbmi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzbnu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfvc:Lcom/google/android/gms/internal/ads/zzbmc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbmc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zzfvc:Lcom/google/android/gms/internal/ads/zzbmc;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbmc;)Lcom/google/android/gms/internal/ads/zzbnu;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbmc;->zzakd()Lcom/google/android/gms/internal/ads/zzbnu;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbnu;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmi;->zzfvc:Lcom/google/android/gms/internal/ads/zzbmc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmi;->zzc(Lcom/google/android/gms/internal/ads/zzbmc;)Lcom/google/android/gms/internal/ads/zzbnu;

    move-result-object v0

    return-object v0
.end method
