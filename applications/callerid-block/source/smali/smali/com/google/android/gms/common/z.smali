.class Lcom/google/android/gms/common/z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static final d:Lcom/google/android/gms/common/z;


# instance fields
.field final a:Z

.field final b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final c:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/z;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/common/z;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/common/z;->d:Lcom/google/android/gms/common/z;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/z;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/common/z;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/z;->c:Ljava/lang/Throwable;

    return-void
.end method

.method static b()Lcom/google/android/gms/common/z;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/z;->d:Lcom/google/android/gms/common/z;

    return-object v0
.end method

.method static c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/z;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/y;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/common/x;)V

    return-object v0
.end method

.method static d(Ljava/lang/String;)Lcom/google/android/gms/common/z;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/z;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/z;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/z;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/z;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static g(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    const-string p3, "not allowed"

    goto :goto_0

    :cond_0
    const-string p3, "debug cert rejected"

    :goto_0
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    aput-object p0, v1, v0

    const-string p0, "SHA-1"

    invoke-static {p0}, Lcom/google/android/gms/common/util/a;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x2

    invoke-virtual {p1}, Lcom/google/android/gms/common/o;->M1()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/k;->a([B)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p3

    const/4 p0, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x4

    const-string p1, "12451000.false"

    aput-object p1, v1, p0

    const-string p0, "%s: pkg=%s, sha1=%s, atk=%s, ver=%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method final f()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/z;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "GoogleCertificatesRslt"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/z;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/z;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/z;->c:Ljava/lang/Throwable;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
