.class final synthetic Lcom/google/android/gms/internal/ads/wl1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/om;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzazj;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/np;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/np;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wl1;->a:Lcom/google/android/gms/internal/ads/zzazj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wl1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wl1;->c:Lcom/google/android/gms/internal/ads/np;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/wl1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/co;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wl1;->a:Lcom/google/android/gms/internal/ads/zzazj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wl1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wl1;->c:Lcom/google/android/gms/internal/ads/np;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/wl1;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/co;->x()Lcom/google/android/gms/internal/ads/ym;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ie3;->x()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/xm;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/xm;->q(Lcom/google/android/gms/internal/ads/zzazj;)Lcom/google/android/gms/internal/ads/xm;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/co;->y(Lcom/google/android/gms/internal/ads/xm;)Lcom/google/android/gms/internal/ads/co;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/co;->v()Lcom/google/android/gms/internal/ads/vn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ie3;->x()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/un;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/un;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/un;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/un;->r(Lcom/google/android/gms/internal/ads/np;)Lcom/google/android/gms/internal/ads/un;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/co;->w(Lcom/google/android/gms/internal/ads/un;)Lcom/google/android/gms/internal/ads/co;

    .line 6
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/co;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/co;

    return-void
.end method
