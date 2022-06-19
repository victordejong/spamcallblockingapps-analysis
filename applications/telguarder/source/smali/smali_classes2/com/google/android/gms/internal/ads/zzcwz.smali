.class public final Lcom/google/android/gms/internal/ads/zzcwz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzacl;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgxc:Lcom/google/android/gms/internal/ads/zzcxa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcxa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwz;->zzgxc:Lcom/google/android/gms/internal/ads/zzcxa;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcxa;)Lcom/google/android/gms/internal/ads/zzcwz;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcwz;-><init>(Lcom/google/android/gms/internal/ads/zzcxa;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwz;->zzgxc:Lcom/google/android/gms/internal/ads/zzcxa;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxa;->zzasd()Lcom/google/android/gms/internal/ads/zzacl;

    move-result-object v0

    return-object v0
.end method
