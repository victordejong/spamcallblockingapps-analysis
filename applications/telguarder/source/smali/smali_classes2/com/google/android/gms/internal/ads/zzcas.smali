.class public final Lcom/google/android/gms/internal/ads/zzcas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzcaq;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgbx:Lcom/google/android/gms/internal/ads/zzcaq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcaq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzgbx:Lcom/google/android/gms/internal/ads/zzcaq;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzcaq;)Lcom/google/android/gms/internal/ads/zzcas;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcas;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcas;-><init>(Lcom/google/android/gms/internal/ads/zzcaq;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzgbx:Lcom/google/android/gms/internal/ads/zzcaq;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcaq;

    return-object v0
.end method
