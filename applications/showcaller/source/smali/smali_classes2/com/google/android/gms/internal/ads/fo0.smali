.class final synthetic Lcom/google/android/gms/internal/ads/fo0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jv2;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/mp0;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Z

.field private final i:Lcom/google/android/gms/internal/ads/u;

.field private final j:Lcom/google/android/gms/internal/ads/kx;

.field private final k:Lcom/google/android/gms/internal/ads/zzcgz;

.field private final l:Lcom/google/android/gms/ads/internal/k;

.field private final m:Lcom/google/android/gms/ads/internal/a;

.field private final n:Lcom/google/android/gms/internal/ads/pm;

.field private final o:Lcom/google/android/gms/internal/ads/ej2;

.field private final p:Lcom/google/android/gms/internal/ads/jj2;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mp0;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/kx;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ax;Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/pm;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fo0;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fo0;->e:Lcom/google/android/gms/internal/ads/mp0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fo0;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/fo0;->g:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/fo0;->h:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/fo0;->i:Lcom/google/android/gms/internal/ads/u;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/fo0;->j:Lcom/google/android/gms/internal/ads/kx;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/fo0;->k:Lcom/google/android/gms/internal/ads/zzcgz;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/fo0;->l:Lcom/google/android/gms/ads/internal/k;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/fo0;->m:Lcom/google/android/gms/ads/internal/a;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/fo0;->n:Lcom/google/android/gms/internal/ads/pm;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/fo0;->o:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/fo0;->p:Lcom/google/android/gms/internal/ads/jj2;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/fo0;->d:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/fo0;->e:Lcom/google/android/gms/internal/ads/mp0;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/fo0;->f:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/fo0;->g:Z

    iget-boolean v15, v1, Lcom/google/android/gms/internal/ads/fo0;->h:Z

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/fo0;->i:Lcom/google/android/gms/internal/ads/u;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/fo0;->j:Lcom/google/android/gms/internal/ads/kx;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/fo0;->k:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/fo0;->l:Lcom/google/android/gms/ads/internal/k;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/fo0;->m:Lcom/google/android/gms/ads/internal/a;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/fo0;->n:Lcom/google/android/gms/internal/ads/pm;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/fo0;->o:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/fo0;->p:Lcom/google/android/gms/internal/ads/jj2;

    const/16 v2, 0x108

    :try_start_0
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcna;

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/oo0;->d:I

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/lp0;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/lp0;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/oo0;

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object v2, v0

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    move v7, v15

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v17

    .line 4
    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/ads/oo0;-><init>(Lcom/google/android/gms/internal/ads/lp0;Lcom/google/android/gms/internal/ads/mp0;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/kx;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ax;Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/pm;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)V

    move-object/from16 v2, v18

    .line 5
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcna;-><init>(Lcom/google/android/gms/internal/ads/wn0;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/ads/internal/util/e;

    move-result-object v0

    move-object/from16 v4, v20

    move/from16 v3, v21

    .line 7
    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/gms/ads/internal/util/e;->l(Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/pm;Z)Lcom/google/android/gms/internal/ads/do0;

    move-result-object v0

    .line 8
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/wn0;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/vn0;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/vn0;-><init>(Lcom/google/android/gms/internal/ads/wn0;)V

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/wn0;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 11
    throw v0
.end method
