.class final synthetic Lcom/google/android/gms/internal/ads/zzalj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjx:Lcom/google/android/gms/internal/ads/zzakm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzakm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdjx:Lcom/google/android/gms/internal/ads/zzakm;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzakm;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzalj;-><init>(Lcom/google/android/gms/internal/ads/zzakm;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdjx:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakm;->destroy()V

    return-void
.end method
