.class final Lcom/google/android/gms/internal/ads/cx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/is0;


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/ads/fx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fx;Lcom/google/android/gms/internal/ads/gw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cx;->c:Lcom/google/android/gms/internal/ads/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(J)Lcom/google/android/gms/internal/ads/is0;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cx;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public final bridge synthetic u(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/is0;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cx;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/js0;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cx;->a:Ljava/lang/Long;

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cx;->b:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ex;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cx;->c:Lcom/google/android/gms/internal/ads/fx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cx;->a:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cx;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ex;-><init>(Lcom/google/android/gms/internal/ads/fx;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/internal/ads/gw;)V

    return-object v0
.end method
