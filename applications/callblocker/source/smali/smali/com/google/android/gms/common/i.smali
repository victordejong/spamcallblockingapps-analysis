.class public Lcom/google/android/gms/common/i;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/common/i;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/i;->b:Landroid/content/Context;

    .line 3
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/i;
    .locals 2

    .prologue
    .line 4
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lcom/google/android/gms/common/i;

    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/i;->a:Lcom/google/android/gms/common/i;

    if-nez v0, :cond_0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/common/n;->a(Landroid/content/Context;)V

    .line 8
    new-instance v0, Lcom/google/android/gms/common/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/i;->a:Lcom/google/android/gms/common/i;

    .line 9
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v0, Lcom/google/android/gms/common/i;->a:Lcom/google/android/gms/common/i;

    return-object v0

    .line 9
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static varargs a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/o;)Lcom/google/android/gms/common/o;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 119
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 112
    const-string/jumbo v0, "GoogleSignatureVerifier"

    const-string/jumbo v2, "Package has more than one signature."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    new-instance v2, Lcom/google/android/gms/common/r;

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/r;-><init>([B)V

    .line 115
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 116
    aget-object v3, p1, v0

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/o;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    aget-object v0, p1, v0

    goto :goto_0

    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 119
    goto :goto_0
.end method

.method private final a(Ljava/lang/String;I)Lcom/google/android/gms/common/w;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/i;->b:Landroid/content/Context;

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    const/16 v1, 0x40

    .line 49
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/common/c/b;->a(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/common/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/h;->b(Landroid/content/Context;)Z

    move-result v0

    .line 54
    if-nez v1, :cond_1

    .line 55
    const-string/jumbo v0, "null pkg"

    invoke-static {v0}, Lcom/google/android/gms/common/w;->a(Ljava/lang/String;)Lcom/google/android/gms/common/w;

    move-result-object v0

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-eq v2, v3, :cond_3

    .line 57
    :cond_2
    const-string/jumbo v0, "single cert required"

    invoke-static {v0}, Lcom/google/android/gms/common/w;->a(Ljava/lang/String;)Lcom/google/android/gms/common/w;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_3
    new-instance v2, Lcom/google/android/gms/common/r;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/r;-><init>([B)V

    .line 59
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static {v3, v2, v0, v4}, Lcom/google/android/gms/common/n;->a(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Lcom/google/android/gms/common/w;

    move-result-object v0

    .line 63
    iget-boolean v4, v0, Lcom/google/android/gms/common/w;->a:Z

    .line 64
    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 65
    invoke-static {v3, v2, v1, v4}, Lcom/google/android/gms/common/n;->a(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Lcom/google/android/gms/common/w;

    move-result-object v1

    .line 66
    iget-boolean v1, v1, Lcom/google/android/gms/common/w;->a:Z

    .line 67
    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v0, "debuggable release cert app rejected"

    invoke-static {v0}, Lcom/google/android/gms/common/w;->a(Ljava/lang/String;)Lcom/google/android/gms/common/w;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    const-string/jumbo v1, "no pkg "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/w;->a(Ljava/lang/String;)Lcom/google/android/gms/common/w;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/pm/PackageInfo;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    if-eqz p0, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    sget-object v2, Lcom/google/android/gms/common/t;->a:[Lcom/google/android/gms/common/o;

    invoke-static {p0, v2}, Lcom/google/android/gms/common/i;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/o;)Lcom/google/android/gms/common/o;

    move-result-object v2

    .line 36
    :goto_0
    if-eqz v2, :cond_1

    .line 37
    :goto_1
    return v0

    .line 36
    :cond_0
    new-array v2, v0, [Lcom/google/android/gms/common/o;

    sget-object v3, Lcom/google/android/gms/common/t;->a:[Lcom/google/android/gms/common/o;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    invoke-static {p0, v2}, Lcom/google/android/gms/common/i;->a(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/o;)Lcom/google/android/gms/common/o;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 37
    goto :goto_1
.end method


# virtual methods
.method public a(I)Z
    .locals 5

    .prologue
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/c/b;->a(I)[Ljava/lang/String;

    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_2

    .line 14
    :cond_0
    const-string/jumbo v0, "no pkgs"

    invoke-static {v0}, Lcom/google/android/gms/common/w;->a(Ljava/lang/String;)Lcom/google/android/gms/common/w;

    move-result-object v0

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/w;->c()V

    .line 26
    iget-boolean v0, v0, Lcom/google/android/gms/common/w;->a:Z

    .line 27
    return v0

    .line 15
    :cond_2
    const/4 v0, 0x0

    .line 16
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 17
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/i;->a(Ljava/lang/String;I)Lcom/google/android/gms/common/w;

    move-result-object v0

    .line 19
    iget-boolean v4, v0, Lcom/google/android/gms/common/w;->a:Z

    .line 20
    if-nez v4, :cond_1

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/i;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/gms/common/i;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/common/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/h;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const-string/jumbo v1, "GoogleSignatureVerifier"

    const-string/jumbo v2, "Test-keys aren\'t accepted on this build."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
