.class final synthetic Lcom/google/android/gms/internal/consent_sdk/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/consent_sdk/ch;

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/android/c/d;

.field private final d:Lcom/google/android/c/c$b;

.field private final e:Lcom/google/android/c/c$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/ch;Landroid/app/Activity;Lcom/google/android/c/d;Lcom/google/android/c/c$b;Lcom/google/android/c/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/ck;->a:Lcom/google/android/gms/internal/consent_sdk/ch;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/ck;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/ck;->c:Lcom/google/android/c/d;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/ck;->d:Lcom/google/android/c/c$b;

    iput-object p5, p0, Lcom/google/android/gms/internal/consent_sdk/ck;->e:Lcom/google/android/c/c$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/ck;->a:Lcom/google/android/gms/internal/consent_sdk/ch;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/ck;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/ck;->c:Lcom/google/android/c/d;

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/ck;->d:Lcom/google/android/c/c$b;

    iget-object v4, p0, Lcom/google/android/gms/internal/consent_sdk/ck;->e:Lcom/google/android/c/c$a;

    .line 2016
    :try_start_0
    iget-object v5, v2, Lcom/google/android/c/d;->c:Lcom/google/android/c/a;

    if-eqz v5, :cond_0

    .line 3005
    iget-boolean v5, v5, Lcom/google/android/c/a;->a:Z

    if-nez v5, :cond_1

    .line 1208
    :cond_0
    iget-object v5, v0, Lcom/google/android/gms/internal/consent_sdk/ch;->a:Landroid/app/Application;

    .line 1209
    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/ba;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x5f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Use new ConsentDebugSettings.Builder().addTestDeviceHashedId(\""

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\") to set this as a debug device."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    :cond_1
    iget-object v5, v0, Lcom/google/android/gms/internal/consent_sdk/ch;->f:Lcom/google/android/gms/internal/consent_sdk/cf;

    .line 1213
    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/cf;->a(Landroid/app/Activity;Lcom/google/android/c/d;)Lcom/google/android/gms/internal/consent_sdk/ao;

    move-result-object v1

    .line 1214
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/ch;->a(Lcom/google/android/gms/internal/consent_sdk/ao;)Lcom/google/android/gms/internal/consent_sdk/az;

    move-result-object v1

    .line 1215
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/ch;->g:Lcom/google/android/gms/internal/consent_sdk/cr;

    .line 1216
    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/b;

    invoke-direct {v5, v2, v1}, Lcom/google/android/gms/internal/consent_sdk/b;-><init>(Lcom/google/android/gms/internal/consent_sdk/cr;Lcom/google/android/gms/internal/consent_sdk/az;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/consent_sdk/b;->a()Lcom/google/android/gms/internal/consent_sdk/cq;

    move-result-object v1

    .line 1218
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/ch;->d:Lcom/google/android/gms/internal/consent_sdk/m;

    iget v5, v1, Lcom/google/android/gms/internal/consent_sdk/cq;->a:I

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/consent_sdk/m;->a(I)V

    .line 1219
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/ch;->d:Lcom/google/android/gms/internal/consent_sdk/m;

    iget v5, v1, Lcom/google/android/gms/internal/consent_sdk/cq;->b:I

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/consent_sdk/m;->b(I)V

    .line 1220
    iget-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/ch;->e:Lcom/google/android/gms/internal/consent_sdk/aa;

    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/cq;->c:Lcom/google/android/gms/internal/consent_sdk/ad;

    .line 4005
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/aa;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1221
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/ch;->h:Lcom/google/android/gms/internal/consent_sdk/bx;

    .line 5006
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/bx;->a:Ljava/util/concurrent/Executor;

    .line 1222
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/cj;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/consent_sdk/cj;-><init>(Lcom/google/android/gms/internal/consent_sdk/ch;Lcom/google/android/c/c$b;)V

    .line 1223
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/consent_sdk/zzk; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1229
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzk;

    const/4 v3, 0x1

    const-string v5, "Caught exception when trying to request consent info update: "

    .line 1230
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/consent_sdk/zzk;-><init>(ILjava/lang/String;)V

    .line 1231
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/ch;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/co;

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/internal/consent_sdk/co;-><init>(Lcom/google/android/c/c$a;Lcom/google/android/gms/internal/consent_sdk/zzk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_1
    move-exception v1

    .line 1226
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/ch;->b:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/cl;

    invoke-direct {v2, v4, v1}, Lcom/google/android/gms/internal/consent_sdk/cl;-><init>(Lcom/google/android/c/c$a;Lcom/google/android/gms/internal/consent_sdk/zzk;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
