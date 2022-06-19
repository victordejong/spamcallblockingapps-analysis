.class final Lcom/google/android/gms/internal/ads/lu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zr;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zp;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/kv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ls;Lcom/google/android/gms/internal/ads/zp;Lcom/google/android/gms/internal/ads/kv;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lu;->a:Lcom/google/android/gms/internal/ads/zp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lu;->b:Lcom/google/android/gms/internal/ads/kv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lu;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamh;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzamh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lu;->b:Lcom/google/android/gms/internal/ads/kv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kv;->a()V

    return-void
.end method
