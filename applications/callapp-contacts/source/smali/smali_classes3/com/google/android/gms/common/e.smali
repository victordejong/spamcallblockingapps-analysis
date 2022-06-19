.class public Lcom/google/android/gms/common/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/google/android/gms/common/e;


# instance fields
.field public final a:Landroid/content/Context;

.field private volatile c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/e;->a:Landroid/content/Context;

    return-void
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/common/aa;
    .locals 7

    const-string v0, "null pkg"

    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/common/aa;->a(Ljava/lang/String;)Lcom/google/android/gms/common/aa;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/e;->c:Ljava/lang/String;

    .line 1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/t;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/e;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/d;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/t;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/aa;

    move-result-object v0

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/e;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    .line 6
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/google/android/gms/common/e;->a:Landroid/content/Context;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/common/d;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v2

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/common/aa;->a(Ljava/lang/String;)Lcom/google/android/gms/common/aa;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/common/q;

    .line 10
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/gms/common/q;-><init>([B)V

    .line 11
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 12
    invoke-static {v4, v0, v2, v5}, Lcom/google/android/gms/common/t;->a(Ljava/lang/String;Lcom/google/android/gms/common/p;ZZ)Lcom/google/android/gms/common/aa;

    move-result-object v2

    iget-boolean v6, v2, Lcom/google/android/gms/common/aa;->a:Z

    if-eqz v6, :cond_4

    .line 13
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_4

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 14
    invoke-static {v4, v0, v5, v3}, Lcom/google/android/gms/common/t;->a(Ljava/lang/String;Lcom/google/android/gms/common/p;ZZ)Lcom/google/android/gms/common/aa;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/common/aa;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "debuggable release cert app rejected"

    invoke-static {v0}, Lcom/google/android/gms/common/aa;->a(Ljava/lang/String;)Lcom/google/android/gms/common/aa;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    :goto_0
    const-string v0, "single cert required"

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/aa;->a(Ljava/lang/String;)Lcom/google/android/gms/common/aa;

    move-result-object v0

    .line 4
    :goto_1
    iget-boolean v1, v0, Lcom/google/android/gms/common/aa;->a:Z

    if-eqz v1, :cond_6

    iput-object p1, p0, Lcom/google/android/gms/common/e;->c:Ljava/lang/String;

    :cond_6
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "no pkg "

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/aa;

    move-result-object p1

    return-object p1

    .line 14
    :cond_8
    invoke-static {}, Lcom/google/android/gms/common/aa;->b()Lcom/google/android/gms/common/aa;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/e;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/android/gms/common/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/e;->b:Lcom/google/android/gms/common/e;

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/t;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/common/e;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/e;->b:Lcom/google/android/gms/common/e;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/android/gms/common/e;->b:Lcom/google/android/gms/common/e;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static varargs a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/p;)Lcom/google/android/gms/common/p;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/q;

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/q;-><init>([B)V

    .line 5
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 6
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/p;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static final a(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/gms/common/s;->a:[Lcom/google/android/gms/common/p;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/e;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/p;)Lcom/google/android/gms/common/p;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Lcom/google/android/gms/common/p;

    .line 3
    sget-object v2, Lcom/google/android/gms/common/s;->a:[Lcom/google/android/gms/common/p;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/e;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/p;)Lcom/google/android/gms/common/p;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/e;->a:Landroid/content/Context;

    .line 1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    aget-object v1, p1, v2

    .line 3
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/e;->a(Ljava/lang/String;)Lcom/google/android/gms/common/aa;

    move-result-object v1

    iget-boolean v3, v1, Lcom/google/android/gms/common/aa;->a:Z

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, "no pkgs"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/aa;->a(Ljava/lang/String;)Lcom/google/android/gms/common/aa;

    move-result-object v1

    .line 5
    :goto_2
    iget-boolean p1, v1, Lcom/google/android/gms/common/aa;->a:Z

    if-nez p1, :cond_5

    const/4 p1, 0x3

    const-string v0, "GoogleCertificatesRslt"

    .line 1001
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v1, Lcom/google/android/gms/common/aa;->c:Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 1002
    invoke-virtual {v1}, Lcom/google/android/gms/common/aa;->a()Ljava/lang/String;

    goto :goto_3

    .line 1003
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/common/aa;->a()Ljava/lang/String;

    .line 5
    :cond_5
    :goto_3
    iget-boolean p1, v1, Lcom/google/android/gms/common/aa;->a:Z

    return p1
.end method
