.class final Lcom/google/android/gms/internal/ads/s60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zi0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zi0<",
        "Lcom/google/android/gms/internal/ads/e60;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/x50;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/android/gms/internal/ads/vi0;

.field final synthetic d:Lcom/google/android/gms/internal/ads/v60;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/v60;Lcom/google/android/gms/internal/ads/x50;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vi0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s60;->d:Lcom/google/android/gms/internal/ads/v60;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s60;->a:Lcom/google/android/gms/internal/ads/x50;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/s60;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/s60;->c:Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/e60;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s60;->d:Lcom/google/android/gms/internal/ads/v60;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s60;->a:Lcom/google/android/gms/internal/ads/x50;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/s60;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/s60;->c:Lcom/google/android/gms/internal/ads/vi0;

    .line 2
    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/v60;->d(Lcom/google/android/gms/internal/ads/v60;Lcom/google/android/gms/internal/ads/x50;Lcom/google/android/gms/internal/ads/e60;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/vi0;)V

    return-void
.end method
