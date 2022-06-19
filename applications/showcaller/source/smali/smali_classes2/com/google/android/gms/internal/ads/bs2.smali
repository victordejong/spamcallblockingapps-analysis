.class final synthetic Lcom/google/android/gms/internal/ads/bs2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/tasks/d;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/gs2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bs2;->a:Lcom/google/android/gms/internal/ads/gs2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bs2;->a:Lcom/google/android/gms/internal/ads/gs2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gs2;->d(Ljava/lang/Exception;)V

    return-void
.end method
