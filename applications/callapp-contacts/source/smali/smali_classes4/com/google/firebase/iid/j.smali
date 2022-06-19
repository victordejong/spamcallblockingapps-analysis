.class public final Lcom/google/firebase/iid/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/b;

.field private final b:Lcom/google/firebase/iid/n;

.field private final c:Lcom/google/android/gms/cloudmessaging/b;

.field private final d:Lcom/google/firebase/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/f/i;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/firebase/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/firebase/installations/h;


# direct methods
.method constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/n;Lcom/google/android/gms/cloudmessaging/b;Lcom/google/firebase/d/b;Lcom/google/firebase/d/b;Lcom/google/firebase/installations/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/b;",
            "Lcom/google/firebase/iid/n;",
            "Lcom/google/android/gms/cloudmessaging/b;",
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/f/i;",
            ">;",
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/c/f;",
            ">;",
            "Lcom/google/firebase/installations/h;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/j;->a:Lcom/google/firebase/b;

    iput-object p2, p0, Lcom/google/firebase/iid/j;->b:Lcom/google/firebase/iid/n;

    iput-object p3, p0, Lcom/google/firebase/iid/j;->c:Lcom/google/android/gms/cloudmessaging/b;

    iput-object p4, p0, Lcom/google/firebase/iid/j;->d:Lcom/google/firebase/d/b;

    iput-object p5, p0, Lcom/google/firebase/iid/j;->e:Lcom/google/firebase/d/b;

    iput-object p6, p0, Lcom/google/firebase/iid/j;->f:Lcom/google/firebase/installations/h;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/n;Lcom/google/firebase/d/b;Lcom/google/firebase/d/b;Lcom/google/firebase/installations/h;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/b;",
            "Lcom/google/firebase/iid/n;",
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/f/i;",
            ">;",
            "Lcom/google/firebase/d/b<",
            "Lcom/google/firebase/c/f;",
            ">;",
            "Lcom/google/firebase/installations/h;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v3, Lcom/google/android/gms/cloudmessaging/b;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/cloudmessaging/b;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/iid/j;-><init>(Lcom/google/firebase/b;Lcom/google/firebase/iid/n;Lcom/google/android/gms/cloudmessaging/b;Lcom/google/firebase/d/b;Lcom/google/firebase/d/b;Lcom/google/firebase/installations/h;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/j;->a:Lcom/google/firebase/b;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-1"

    .line 2
    :try_start_0
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/16 v1, 0xb

    .line 1001
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "[HASH-ERROR]"

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "FirebaseInstanceId"

    const-string v1, "scope"

    .line 1
    invoke-virtual {p4, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "sender"

    .line 2
    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "subtype"

    .line 3
    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "appid"

    .line 4
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/j;->a:Lcom/google/firebase/b;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/b;->c()Lcom/google/firebase/h;

    move-result-object p1

    .line 1183
    iget-object p1, p1, Lcom/google/firebase/h;->b:Ljava/lang/String;

    const-string p2, "gmp_app_id"

    .line 5
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/j;->b:Lcom/google/firebase/iid/n;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/iid/n;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "gmsv"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "osv"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/j;->b:Lcom/google/firebase/iid/n;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/iid/n;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_ver"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/j;->b:Lcom/google/firebase/iid/n;

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/iid/n;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_ver_name"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/iid/j;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "firebase-app-name-hash"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/firebase/iid/j;->f:Lcom/google/firebase/installations/h;

    .line 11
    invoke-interface {p1}, Lcom/google/firebase/installations/h;->c()Lcom/google/android/gms/tasks/h;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/k;->a(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/installations/l;

    invoke-virtual {p1}, Lcom/google/firebase/installations/l;->a()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Goog-Firebase-Installations-Auth"

    .line 13
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, "FIS auth token is empty"

    .line 14
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "Failed to get FIS auth token"

    .line 15
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string p1, "cliv"

    const-string p2, "fiid-21.1.0"

    .line 16
    invoke-virtual {p4, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/iid/j;->e:Lcom/google/firebase/d/b;

    .line 17
    invoke-interface {p1}, Lcom/google/firebase/d/b;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/c/f;

    iget-object p2, p0, Lcom/google/firebase/iid/j;->d:Lcom/google/firebase/d/b;

    .line 18
    invoke-interface {p2}, Lcom/google/firebase/d/b;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/f/i;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string p3, "fire-iid"

    .line 19
    invoke-interface {p1, p3}, Lcom/google/firebase/c/f;->a(Ljava/lang/String;)Lcom/google/firebase/c/f$a;

    move-result-object p1

    .line 20
    sget-object p3, Lcom/google/firebase/c/f$a;->NONE:Lcom/google/firebase/c/f$a;

    if-eq p1, p3, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/google/firebase/c/f$a;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Firebase-Client-Log-Type"

    invoke-virtual {p4, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-interface {p2}, Lcom/google/firebase/f/i;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Firebase-Client"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p4
.end method


# virtual methods
.method final a(Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/firebase/iid/a;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 1
    new-instance v1, Lcom/google/firebase/iid/k;

    invoke-direct {v1, p0}, Lcom/google/firebase/iid/k;-><init>(Lcom/google/firebase/iid/j;)V

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/iid/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object p1, p0, Lcom/google/firebase/iid/j;->c:Lcom/google/android/gms/cloudmessaging/b;

    .line 2
    invoke-virtual {p1, p4}, Lcom/google/android/gms/cloudmessaging/b;->a(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method
