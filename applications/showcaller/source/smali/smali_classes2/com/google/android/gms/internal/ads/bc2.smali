.class final synthetic Lcom/google/android/gms/internal/ads/bc2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cc2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cc2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bc2;->a:Lcom/google/android/gms/internal/ads/cc2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bc2;->a:Lcom/google/android/gms/internal/ads/cc2;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cc2;->a(Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/dc2;

    const/4 p1, 0x0

    return-object p1
.end method
