.class public final Lcom/google/android/gms/internal/ads/jw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jp;
.implements Lcom/google/android/gms/internal/ads/ju;


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/ads/internal/zzb;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbfu;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkw()Lcom/google/android/gms/internal/ads/aeb;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/afh;->a()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v1

    .line 1001
    new-instance v10, Lcom/google/android/gms/internal/ads/ehk;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/ehk;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p1

    move-object/from16 v5, p3

    move-object v7, p2

    .line 6
    invoke-static/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/aeb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v0

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/jw;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jw;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->destroy()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/jt;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jw;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2000
    new-instance v1, Lcom/google/android/gms/internal/ads/kd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/kd;-><init>(Lcom/google/android/gms/internal/ads/jt;)V

    .line 26
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afg;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/jv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/jv;-><init>(Lcom/google/android/gms/internal/ads/jw;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jw;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/hi<",
            "-",
            "Lcom/google/android/gms/internal/ads/lc;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jw;->a:Lcom/google/android/gms/internal/ads/adt;

    new-instance v1, Lcom/google/android/gms/internal/ads/kc;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/kc;-><init>(Lcom/google/android/gms/internal/ads/jw;Lcom/google/android/gms/internal/ads/hi;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/js;->a(Lcom/google/android/gms/internal/ads/jp;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/js;->a(Lcom/google/android/gms/internal/ads/jp;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/js;->b(Lcom/google/android/gms/internal/ads/jp;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    .line 15
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/jy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/jw;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jw;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/hi<",
            "-",
            "Lcom/google/android/gms/internal/ads/lc;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jw;->a:Lcom/google/android/gms/internal/ads/adt;

    new-instance v1, Lcom/google/android/gms/internal/ads/ka;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/ka;-><init>(Lcom/google/android/gms/internal/ads/hi;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lcom/google/android/gms/common/util/o;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/js;->a(Lcom/google/android/gms/internal/ads/jp;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jw;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->H()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/lf;
    .locals 1

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/le;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/le;-><init>(Lcom/google/android/gms/internal/ads/lc;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/kb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/kb;-><init>(Lcom/google/android/gms/internal/ads/jw;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jw;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/jx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/jx;-><init>(Lcom/google/android/gms/internal/ads/jw;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jw;->a(Ljava/lang/Runnable;)V

    return-void
.end method
