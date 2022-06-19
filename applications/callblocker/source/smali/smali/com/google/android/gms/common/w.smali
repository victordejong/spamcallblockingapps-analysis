.class Lcom/google/android/gms/common/w;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static final b:Lcom/google/android/gms/common/w;


# instance fields
.field final a:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/google/android/gms/common/w;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/common/w;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/common/w;->b:Lcom/google/android/gms/common/w;

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

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/common/w;->a:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/w;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/w;->d:Ljava/lang/Throwable;

    .line 5
    return-void
.end method

.method static a()Lcom/google/android/gms/common/w;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/android/gms/common/w;->b:Lcom/google/android/gms/common/w;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/google/android/gms/common/w;
    .locals 3

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/common/w;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/w;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/w;
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/google/android/gms/common/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/w;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/w;"
        }
    .end annotation

    .prologue
    .line 7
    new-instance v0, Lcom/google/android/gms/common/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/y;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/common/z;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Ljava/lang/String;
    .locals 5

    .prologue
    .line 16
    if-eqz p3, :cond_0

    const-string/jumbo v0, "debug cert rejected"

    .line 17
    :goto_0
    const-string/jumbo v1, "%s: pkg=%s, sha1=%s, atk=%s, ver=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const/4 v0, 0x2

    .line 19
    const-string/jumbo v3, "SHA-1"

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/common/util/a;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/common/o;->c()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/common/util/j;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 22
    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 23
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v3, "12451009.false"

    aput-object v3, v2, v0

    .line 24
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 16
    :cond_0
    const-string/jumbo v0, "not whitelisted"

    goto :goto_0
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method final c()V
    .locals 3

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/common/w;->a:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "GoogleCertificatesRslt"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/w;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 13
    const-string/jumbo v0, "GoogleCertificatesRslt"

    invoke-virtual {p0}, Lcom/google/android/gms/common/w;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/w;->d:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :cond_0
    :goto_0
    return-void

    .line 14
    :cond_1
    const-string/jumbo v0, "GoogleCertificatesRslt"

    invoke-virtual {p0}, Lcom/google/android/gms/common/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
