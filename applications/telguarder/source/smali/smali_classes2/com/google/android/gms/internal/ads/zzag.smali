.class public final Lcom/google/android/gms/internal/ads/zzag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final zzbq:Lcom/google/android/gms/internal/ads/zzn;

.field public final zzbr:Lcom/google/android/gms/internal/ads/zzap;

.field public zzbs:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzag;->zzbs:Z

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzag;->result:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzag;->zzbq:Lcom/google/android/gms/internal/ads/zzn;

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzag;->zzbr:Lcom/google/android/gms/internal/ads/zzap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzn;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzag;->zzbs:Z

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzag;->result:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzag;->zzbq:Lcom/google/android/gms/internal/ads/zzn;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzag;->zzbr:Lcom/google/android/gms/internal/ads/zzap;

    return-void
.end method

.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/zzn;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzag<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzag;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzag;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzn;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzap;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzag<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzag;-><init>(Lcom/google/android/gms/internal/ads/zzap;)V

    return-object v0
.end method


# virtual methods
.method public final isSuccess()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzag;->zzbr:Lcom/google/android/gms/internal/ads/zzap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
