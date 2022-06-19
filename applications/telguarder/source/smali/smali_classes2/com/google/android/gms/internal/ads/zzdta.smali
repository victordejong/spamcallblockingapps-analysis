.class final synthetic Lcom/google/android/gms/internal/ads/zzdta;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzcmi:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdta;->zzcmi:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdta;->zzcmi:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdsy;->zzcj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zztz;

    move-result-object v0

    return-object v0
.end method
