.class public final Lcom/google/android/gms/internal/ads/bif;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/atx;

.field private final b:Lcom/google/android/gms/internal/ads/aeb;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/die;

.field private final e:Lcom/google/android/gms/internal/ads/bw;

.field private final f:Lcom/google/android/gms/internal/ads/zzbar;

.field private final g:Lcom/google/android/gms/ads/internal/zzb;

.field private final h:Lcom/google/android/gms/internal/ads/ehk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aeb;Landroid/content/Context;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/atx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bif;->b:Lcom/google/android/gms/internal/ads/aeb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bif;->c:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bif;->d:Lcom/google/android/gms/internal/ads/die;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bif;->e:Lcom/google/android/gms/internal/ads/bw;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bif;->f:Lcom/google/android/gms/internal/ads/zzbar;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bif;->g:Lcom/google/android/gms/ads/internal/zzb;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/bif;->h:Lcom/google/android/gms/internal/ads/ehk;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bif;->a:Lcom/google/android/gms/internal/ads/atx;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbfu;
        }
    .end annotation

    move-object v0, p0

    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bif;->c:Landroid/content/Context;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/afh;->a(Lcom/google/android/gms/internal/ads/zzvt;)Lcom/google/android/gms/internal/ads/afh;

    move-result-object v2

    move-object v3, p1

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvt;->zzadd:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/bif;->d:Lcom/google/android/gms/internal/ads/die;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/bif;->e:Lcom/google/android/gms/internal/ads/bw;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bif;->f:Lcom/google/android/gms/internal/ads/zzbar;

    new-instance v9, Lcom/google/android/gms/internal/ads/bii;

    invoke-direct {v9, p0}, Lcom/google/android/gms/internal/ads/bii;-><init>(Lcom/google/android/gms/internal/ads/bif;)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/bif;->g:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/bif;->h:Lcom/google/android/gms/internal/ads/ehk;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 14
    invoke-static/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/aeb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v1

    return-object v1
.end method
