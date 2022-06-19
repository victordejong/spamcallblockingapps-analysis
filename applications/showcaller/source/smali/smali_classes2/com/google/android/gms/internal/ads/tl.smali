.class public final Lcom/google/android/gms/internal/ads/tl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/ts;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/pu;

.field private final e:I

.field private final f:Lcom/google/android/gms/ads/u/a$a;

.field private final g:Lcom/google/android/gms/internal/ads/p70;

.field private final h:Lcom/google/android/gms/internal/ads/xq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/pu;ILcom/google/android/gms/ads/u/a$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/p70;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/p70;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tl;->g:Lcom/google/android/gms/internal/ads/p70;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tl;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tl;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/tl;->d:Lcom/google/android/gms/internal/ads/pu;

    iput p4, p0, Lcom/google/android/gms/internal/ads/tl;->e:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/tl;->f:Lcom/google/android/gms/ads/u/a$a;

    sget-object p1, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/xq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tl;->h:Lcom/google/android/gms/internal/ads/xq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->n0()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->b()Lcom/google/android/gms/internal/ads/ur;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tl;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tl;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/tl;->g:Lcom/google/android/gms/internal/ads/p70;

    .line 3
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/ur;->i(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/ts;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tl;->a:Lcom/google/android/gms/internal/ads/ts;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdr;

    iget v1, p0, Lcom/google/android/gms/internal/ads/tl;->e:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdr;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tl;->a:Lcom/google/android/gms/internal/ads/ts;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ts;->N5(Lcom/google/android/gms/internal/ads/zzbdr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tl;->a:Lcom/google/android/gms/internal/ads/ts;

    new-instance v1, Lcom/google/android/gms/internal/ads/fl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tl;->f:Lcom/google/android/gms/ads/u/a$a;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tl;->c:Ljava/lang/String;

    .line 6
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/fl;-><init>(Lcom/google/android/gms/ads/u/a$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ts;->m6(Lcom/google/android/gms/internal/ads/nl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tl;->a:Lcom/google/android/gms/internal/ads/ts;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tl;->h:Lcom/google/android/gms/internal/ads/xq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tl;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tl;->d:Lcom/google/android/gms/internal/ads/pu;

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/xq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/pu;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ts;->k5(Lcom/google/android/gms/internal/ads/zzbdg;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
