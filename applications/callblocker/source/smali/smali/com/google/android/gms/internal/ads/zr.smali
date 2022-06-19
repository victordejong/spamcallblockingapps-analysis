.class final Lcom/google/android/gms/internal/ads/zr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zr;->a:Lcom/google/android/gms/internal/ads/zq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zr;->a:Lcom/google/android/gms/internal/ads/zq;

    const-string/jumbo v1, "surfaceCreated"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zq;->a(Lcom/google/android/gms/internal/ads/zq;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    return-void
.end method
