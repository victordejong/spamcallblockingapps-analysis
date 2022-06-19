.class final Lcom/google/android/gms/internal/ads/zzfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzzo:Lcom/google/android/gms/internal/ads/zzfc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfg;->zzzo:Lcom/google/android/gms/internal/ads/zzfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfg;->zzzo:Lcom/google/android/gms/internal/ads/zzfc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfc;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabp;->initialize(Landroid/content/Context;)V

    return-void
.end method
