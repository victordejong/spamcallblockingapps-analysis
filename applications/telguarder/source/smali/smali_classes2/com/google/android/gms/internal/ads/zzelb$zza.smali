.class public final Lcom/google/android/gms/internal/ads/zzelb$zza;
.super Lcom/google/android/gms/internal/ads/zzeji;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzelb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/ads/zzelb<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/ads/zzeji<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zziqo:Lcom/google/android/gms/internal/ads/zzelb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzelb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeji;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelb$zza;->zziqo:Lcom/google/android/gms/internal/ads/zzelb;

    return-void
.end method
