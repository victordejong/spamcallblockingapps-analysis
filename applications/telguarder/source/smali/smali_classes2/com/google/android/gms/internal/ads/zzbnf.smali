.class public final Lcom/google/android/gms/internal/ads/zzbnf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzfvm:Lcom/google/android/gms/internal/ads/zzagl;

.field private final zzfvn:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagl;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnf;->zzfvm:Lcom/google/android/gms/internal/ads/zzagl;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnf;->zzfvn:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final zzakl()Lcom/google/android/gms/internal/ads/zzagl;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnf;->zzfvm:Lcom/google/android/gms/internal/ads/zzagl;

    return-object v0
.end method

.method public final zzakm()Ljava/lang/Runnable;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnf;->zzfvn:Ljava/lang/Runnable;

    return-object v0
.end method
