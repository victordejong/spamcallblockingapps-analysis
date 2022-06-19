.class public final Lcom/google/android/gms/internal/ads/vj1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/w21;

.field private final b:Lcom/google/android/gms/internal/ads/g41;

.field private final c:Lcom/google/android/gms/internal/ads/t41;

.field private final d:Lcom/google/android/gms/internal/ads/f51;

.field private final e:Lcom/google/android/gms/internal/ads/y71;

.field private final f:Lcom/google/android/gms/internal/ads/oa1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/w21;Lcom/google/android/gms/internal/ads/g41;Lcom/google/android/gms/internal/ads/t41;Lcom/google/android/gms/internal/ads/f51;Lcom/google/android/gms/internal/ads/y71;Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vj1;->a:Lcom/google/android/gms/internal/ads/w21;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vj1;->b:Lcom/google/android/gms/internal/ads/g41;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vj1;->c:Lcom/google/android/gms/internal/ads/t41;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/vj1;->d:Lcom/google/android/gms/internal/ads/f51;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/vj1;->e:Lcom/google/android/gms/internal/ads/y71;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/vj1;->f:Lcom/google/android/gms/internal/ads/oa1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/wj1;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wj1;->a(Lcom/google/android/gms/internal/ads/wj1;)Lcom/google/android/gms/internal/ads/tj1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vj1;->a:Lcom/google/android/gms/internal/ads/w21;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vj1;->c:Lcom/google/android/gms/internal/ads/t41;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vj1;->d:Lcom/google/android/gms/internal/ads/f51;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vj1;->e:Lcom/google/android/gms/internal/ads/y71;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vj1;->b:Lcom/google/android/gms/internal/ads/g41;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uj1;->a(Lcom/google/android/gms/internal/ads/g41;)Lcom/google/android/gms/ads/internal/overlay/u;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/vj1;->f:Lcom/google/android/gms/internal/ads/oa1;

    .line 3
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/tj1;->d(Lcom/google/android/gms/internal/ads/tj1;Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/internal/ads/m10;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/o10;Lcom/google/android/gms/ads/internal/overlay/u;Lcom/google/android/gms/internal/ads/qa1;)V

    return-void
.end method
