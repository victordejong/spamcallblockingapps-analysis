.class final Lcom/google/android/gms/internal/ads/zzdtw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzelj<",
        "Ljava/lang/Integer;",
        "Lcom/google/android/gms/internal/ads/zzdtt$zza;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdtt$zza;->zzeh(I)Lcom/google/android/gms/internal/ads/zzdtt$zza;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdtt$zza;->zzhtm:Lcom/google/android/gms/internal/ads/zzdtt$zza;

    :cond_0
    return-object p1
.end method
