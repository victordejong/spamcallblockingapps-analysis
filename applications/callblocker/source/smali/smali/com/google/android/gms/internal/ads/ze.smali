.class final Lcom/google/android/gms/internal/ads/ze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/za;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/za;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ze;->c:Lcom/google/android/gms/internal/ads/za;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ze;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ze;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ze;->c:Lcom/google/android/gms/internal/ads/za;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->a(Lcom/google/android/gms/internal/ads/za;)Lcom/google/android/gms/internal/ads/zl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ze;->c:Lcom/google/android/gms/internal/ads/za;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->a(Lcom/google/android/gms/internal/ads/za;)Lcom/google/android/gms/internal/ads/zl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ze;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ze;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    return-void
.end method
