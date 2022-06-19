.class public final Lcom/google/firebase/iid/bc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"


# instance fields
.field private final a:Lcom/google/firebase/b;

.field private final b:Lcom/google/firebase/iid/o;

.field private final c:Lcom/google/firebase/iid/u;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/google/firebase/e/h;

.field private final f:Lcom/google/firebase/b/c;

.field private final g:Lcom/google/firebase/installations/h;


# direct methods
.method public constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/o;Ljava/util/concurrent/Executor;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;Lcom/google/firebase/installations/h;)V
    .locals 8

    .prologue
    .line 1
    new-instance v4, Lcom/google/firebase/iid/u;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p2}, Lcom/google/firebase/iid/u;-><init>(Landroid/content/Context;Lcom/google/firebase/iid/o;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/iid/bc;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/o;Ljava/util/concurrent/Executor;Lcom/google/firebase/iid/u;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;Lcom/google/firebase/installations/h;)V

    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/o;Ljava/util/concurrent/Executor;Lcom/google/firebase/iid/u;Lcom/google/firebase/e/h;Lcom/google/firebase/b/c;Lcom/google/firebase/installations/h;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/firebase/iid/bc;->a:Lcom/google/firebase/b;

    .line 7
    iput-object p2, p0, Lcom/google/firebase/iid/bc;->b:Lcom/google/firebase/iid/o;

    .line 8
    iput-object p4, p0, Lcom/google/firebase/iid/bc;->c:Lcom/google/firebase/iid/u;

    .line 9
    iput-object p3, p0, Lcom/google/firebase/iid/bc;->d:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p5, p0, Lcom/google/firebase/iid/bc;->e:Lcom/google/firebase/e/h;

    .line 11
    iput-object p6, p0, Lcom/google/firebase/iid/bc;->f:Lcom/google/firebase/b/c;

    .line 12
    iput-object p7, p0, Lcom/google/firebase/iid/bc;->g:Lcom/google/firebase/installations/h;

    .line 13
    return-void
.end method

.method private final a(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/firebase/iid/bc;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/iid/bd;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/bd;-><init>(Lcom/google/firebase/iid/bc;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/g;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v6, Lcom/google/android/gms/tasks/h;

    invoke-direct {v6}, Lcom/google/android/gms/tasks/h;-><init>()V

    .line 35
    iget-object v7, p0, Lcom/google/firebase/iid/bc;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/firebase/iid/bb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/iid/bb;-><init>(Lcom/google/firebase/iid/bc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/tasks/h;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/firebase/iid/bc;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "SHA-1"

    .line 39
    :try_start_0
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 40
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "[HASH-ERROR]"

    goto :goto_0
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 44
    const-string/jumbo v0, "scope"

    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v0, "sender"

    invoke-virtual {p4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v0, "subtype"

    invoke-virtual {p4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v0, "appid"

    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "gmp_app_id"

    iget-object v1, p0, Lcom/google/firebase/iid/bc;->a:Lcom/google/firebase/b;

    invoke-virtual {v1}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "gmsv"

    iget-object v1, p0, Lcom/google/firebase/iid/bc;->b:Lcom/google/firebase/iid/o;

    invoke-virtual {v1}, Lcom/google/firebase/iid/o;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "osv"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "app_ver"

    iget-object v1, p0, Lcom/google/firebase/iid/bc;->b:Lcom/google/firebase/iid/o;

    invoke-virtual {v1}, Lcom/google/firebase/iid/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "app_ver_name"

    iget-object v1, p0, Lcom/google/firebase/iid/bc;->b:Lcom/google/firebase/iid/o;

    invoke-virtual {v1}, Lcom/google/firebase/iid/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "firebase-app-name-hash"

    invoke-direct {p0}, Lcom/google/firebase/iid/bc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/iid/bc;->g:Lcom/google/firebase/installations/h;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/firebase/installations/h;->a(Z)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/installations/l;

    invoke-virtual {v0}, Lcom/google/firebase/installations/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    const-string/jumbo v1, "Goog-Firebase-Installations-Auth"

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/internal/p;->a()Lcom/google/android/gms/common/internal/p;

    move-result-object v0

    const-string/jumbo v1, "firebase-iid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "UNKNOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    sget v0, Lcom/google/android/gms/common/f;->b:I

    const/16 v1, 0x13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "unknown_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    const-string/jumbo v1, "cliv"

    const-string/jumbo v2, "fiid-"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/google/firebase/iid/bc;->f:Lcom/google/firebase/b/c;

    const-string/jumbo v1, "fire-iid"

    invoke-interface {v0, v1}, Lcom/google/firebase/b/c;->a(Ljava/lang/String;)Lcom/google/firebase/b/c$a;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/google/firebase/b/c$a;->a:Lcom/google/firebase/b/c$a;

    if-eq v0, v1, :cond_1

    .line 67
    const-string/jumbo v1, "Firebase-Client-Log-Type"

    invoke-virtual {v0}, Lcom/google/firebase/b/c$a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "Firebase-Client"

    iget-object v1, p0, Lcom/google/firebase/iid/bc;->e:Lcom/google/firebase/e/h;

    invoke-interface {v1}, Lcom/google/firebase/e/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    return-object p4

    .line 57
    :cond_2
    :try_start_1
    const-string/jumbo v0, "FirebaseInstanceId"

    const-string/jumbo v1, "FIS auth token is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    :goto_2
    const-string/jumbo v1, "FirebaseInstanceId"

    const-string/jumbo v2, "Failed to get FIS auth token"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 64
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/iid/bc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 16
    invoke-direct {p0, v0}, Lcom/google/firebase/iid/bc;->a(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/tasks/h;)V
    .locals 1

    .prologue
    .line 72
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/iid/bc;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 73
    iget-object v0, p0, Lcom/google/firebase/iid/bc;->c:Lcom/google/firebase/iid/u;

    invoke-virtual {v0, p4}, Lcom/google/firebase/iid/u;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 74
    invoke-virtual {p5, v0}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {p5, v0}, Lcom/google/android/gms/tasks/h;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
