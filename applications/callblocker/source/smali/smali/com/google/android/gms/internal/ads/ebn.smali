.class final synthetic Lcom/google/android/gms/internal/ads/ebn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ebl;

.field private final b:Lcom/google/android/gms/ads/e/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ebl;Lcom/google/android/gms/ads/e/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebn;->a:Lcom/google/android/gms/internal/ads/ebl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ebn;->b:Lcom/google/android/gms/ads/e/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebn;->a:Lcom/google/android/gms/internal/ads/ebl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebn;->b:Lcom/google/android/gms/ads/e/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ebl;->a(Lcom/google/android/gms/ads/e/c;)V

    return-void
.end method
