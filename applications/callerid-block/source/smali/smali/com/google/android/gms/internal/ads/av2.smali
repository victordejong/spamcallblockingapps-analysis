.class public final Lcom/google/android/gms/internal/ads/av2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/w;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/s1;

.field private final e:I

.field private final f:Lcom/google/android/gms/ads/t/a$a;

.field private final g:Lcom/google/android/gms/internal/ads/de;

.field private final h:Lcom/google/android/gms/internal/ads/sz2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s1;ILcom/google/android/gms/ads/t/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/de;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/de;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/av2;->g:Lcom/google/android/gms/internal/ads/de;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/av2;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/av2;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/av2;->d:Lcom/google/android/gms/internal/ads/s1;

    iput p4, p0, Lcom/google/android/gms/internal/ads/av2;->e:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/av2;->f:Lcom/google/android/gms/ads/t/a$a;

    sget-object p1, Lcom/google/android/gms/internal/ads/sz2;->a:Lcom/google/android/gms/internal/ads/sz2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/av2;->h:Lcom/google/android/gms/internal/ads/sz2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyx;->B()Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->b()Lcom/google/android/gms/internal/ads/k03;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/av2;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/av2;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/av2;->g:Lcom/google/android/gms/internal/ads/de;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/k03;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/he;)Lcom/google/android/gms/internal/ads/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/av2;->a:Lcom/google/android/gms/internal/ads/w;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/av2;->e:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzzd;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/av2;->a:Lcom/google/android/gms/internal/ads/w;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/w;->i2(Lcom/google/android/gms/internal/ads/zzzd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/av2;->a:Lcom/google/android/gms/internal/ads/w;

    new-instance v1, Lcom/google/android/gms/internal/ads/mu2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/av2;->f:Lcom/google/android/gms/ads/t/a$a;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/av2;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/mu2;-><init>(Lcom/google/android/gms/ads/t/a$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/w;->o3(Lcom/google/android/gms/internal/ads/vu2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/av2;->a:Lcom/google/android/gms/internal/ads/w;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/av2;->h:Lcom/google/android/gms/internal/ads/sz2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/av2;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/av2;->d:Lcom/google/android/gms/internal/ads/s1;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/sz2;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/w;->q0(Lcom/google/android/gms/internal/ads/zzys;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
