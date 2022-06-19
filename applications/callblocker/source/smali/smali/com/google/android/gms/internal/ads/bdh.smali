.class public final Lcom/google/android/gms/internal/ads/bdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/apo;

.field private final b:Lcom/google/android/gms/internal/ads/aqq;

.field private final c:Lcom/google/android/gms/internal/ads/arf;

.field private final d:Lcom/google/android/gms/internal/ads/aro;

.field private final e:Lcom/google/android/gms/internal/ads/asr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/apo;Lcom/google/android/gms/internal/ads/aqq;Lcom/google/android/gms/internal/ads/arf;Lcom/google/android/gms/internal/ads/aro;Lcom/google/android/gms/internal/ads/asr;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdh;->a:Lcom/google/android/gms/internal/ads/apo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdh;->b:Lcom/google/android/gms/internal/ads/aqq;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bdh;->c:Lcom/google/android/gms/internal/ads/arf;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bdh;->d:Lcom/google/android/gms/internal/ads/aro;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bdh;->e:Lcom/google/android/gms/internal/ads/asr;

    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/bcy;)V
    .locals 6

    .prologue
    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/bcy;->a(Lcom/google/android/gms/internal/ads/bcy;)Lcom/google/android/gms/internal/ads/bdd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdh;->a:Lcom/google/android/gms/internal/ads/apo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bdh;->c:Lcom/google/android/gms/internal/ads/arf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bdh;->d:Lcom/google/android/gms/internal/ads/aro;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bdh;->e:Lcom/google/android/gms/internal/ads/asr;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bdh;->b:Lcom/google/android/gms/internal/ads/aqq;

    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/bdg;->a(Lcom/google/android/gms/internal/ads/aqq;)Lcom/google/android/gms/ads/internal/overlay/t;

    move-result-object v5

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/bdd;->a(Lcom/google/android/gms/internal/ads/bdd;Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/internal/ads/ei;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/ek;Lcom/google/android/gms/ads/internal/overlay/t;)V

    .line 11
    return-void
.end method
