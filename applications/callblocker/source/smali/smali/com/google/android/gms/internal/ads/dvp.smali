.class final Lcom/google/android/gms/internal/ads/dvp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dvl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dvl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvl;->a(Lcom/google/android/gms/internal/ads/dvl;)V

    .line 3
    return-void
.end method
