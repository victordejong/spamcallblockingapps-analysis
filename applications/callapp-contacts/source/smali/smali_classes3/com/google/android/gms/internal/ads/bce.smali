.class final synthetic Lcom/google/android/gms/internal/ads/bce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bcf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bcf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bce;->a:Lcom/google/android/gms/internal/ads/bcf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bce;->a:Lcom/google/android/gms/internal/ads/bcf;

    .line 1264
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bcr;->a()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Google"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_7

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x6

    if-eq v1, v4, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    :try_start_1
    const-string v0, "Wrong native template id!"

    .line 1297
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    .line 1292
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->d:Lcom/google/android/gms/internal/ads/bcy;

    .line 7005
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcy;->e:Lcom/google/android/gms/internal/ads/jf;

    if-eqz v1, :cond_1

    .line 1293
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->d:Lcom/google/android/gms/internal/ads/bcy;

    .line 8005
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcy;->e:Lcom/google/android/gms/internal/ads/jf;

    .line 1294
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcf;->n:Lcom/google/android/gms/internal/ads/dsb;

    .line 1295
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/iz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/jf;->a(Lcom/google/android/gms/internal/ads/iz;)V

    :cond_1
    return-void

    .line 1265
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->d:Lcom/google/android/gms/internal/ads/bcy;

    .line 2003
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcy;->c:Lcom/google/android/gms/internal/ads/fm;

    if-eqz v1, :cond_3

    .line 1266
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bcf;->a(Ljava/lang/String;Z)V

    .line 1267
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->d:Lcom/google/android/gms/internal/ads/bcy;

    .line 3003
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcy;->c:Lcom/google/android/gms/internal/ads/fm;

    .line 1268
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcf;->g:Lcom/google/android/gms/internal/ads/dsb;

    .line 1269
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ft;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/fm;->a(Lcom/google/android/gms/internal/ads/ft;)V

    :cond_3
    return-void

    .line 1283
    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->d:Lcom/google/android/gms/internal/ads/bcy;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bcr;

    .line 1284
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/bcr;->u()Ljava/lang/String;

    move-result-object v4

    .line 1285
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fe;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1286
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bcr;->v()Lcom/google/android/gms/internal/ads/adt;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1287
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bcf;->a(Ljava/lang/String;Z)V

    .line 1288
    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->d:Lcom/google/android/gms/internal/ads/bcy;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bcr;

    .line 1289
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bcr;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/fe;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcf;->o:Lcom/google/android/gms/internal/ads/dsb;

    .line 1290
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eo;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/fe;->a(Lcom/google/android/gms/internal/ads/eo;)V

    :cond_6
    return-void

    .line 1271
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->d:Lcom/google/android/gms/internal/ads/bcy;

    .line 4002
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcy;->b:Lcom/google/android/gms/internal/ads/es;

    if-eqz v1, :cond_8

    .line 1272
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bcf;->a(Ljava/lang/String;Z)V

    .line 1273
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->d:Lcom/google/android/gms/internal/ads/bcy;

    .line 5002
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcy;->b:Lcom/google/android/gms/internal/ads/es;

    .line 1274
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcf;->f:Lcom/google/android/gms/internal/ads/dsb;

    .line 1275
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eg;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/es;->a(Lcom/google/android/gms/internal/ads/eg;)V

    :cond_8
    return-void

    .line 1277
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->d:Lcom/google/android/gms/internal/ads/bcy;

    .line 6001
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcy;->a:Lcom/google/android/gms/internal/ads/ex;

    if-eqz v1, :cond_a

    .line 1278
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bcf;->a(Ljava/lang/String;Z)V

    .line 1279
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/bcf;->d:Lcom/google/android/gms/internal/ads/bcy;

    .line 7001
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcy;->a:Lcom/google/android/gms/internal/ads/ex;

    .line 1280
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcf;->e:Lcom/google/android/gms/internal/ads/dsb;

    .line 1281
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsb;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ek;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ex;->a(Lcom/google/android/gms/internal/ads/ek;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 1300
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
