.class final synthetic Lcom/google/android/gms/internal/ads/rt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uy1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zh2;

.field private final c:Lcom/google/android/gms/internal/ads/zzbbq;

.field private final d:Lcom/google/android/gms/ads/internal/a;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/ads/internal/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rt;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rt;->b:Lcom/google/android/gms/internal/ads/zh2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rt;->c:Lcom/google/android/gms/internal/ads/zzbbq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rt;->d:Lcom/google/android/gms/ads/internal/a;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/rt;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rt;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/rt;->b:Lcom/google/android/gms/internal/ads/zh2;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/rt;->c:Lcom/google/android/gms/internal/ads/zzbbq;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/rt;->d:Lcom/google/android/gms/ads/internal/a;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rt;->e:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->e()Lcom/google/android/gms/internal/ads/ut;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yu;->b()Lcom/google/android/gms/internal/ads/yu;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/wv2;->a()Lcom/google/android/gms/internal/ads/wv2;

    move-result-object v11

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/ut;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yu;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/m4;Lcom/google/android/gms/internal/ads/zzbbq;Lcom/google/android/gms/internal/ads/c4;Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/wv2;Lcom/google/android/gms/internal/ads/al1;Lcom/google/android/gms/internal/ads/dl1;)Lcom/google/android/gms/internal/ads/jt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ep;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ep;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->b1()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/tt;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/tt;-><init>(Lcom/google/android/gms/internal/ads/ep;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/wu;->k0(Lcom/google/android/gms/internal/ads/uu;)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jt;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
