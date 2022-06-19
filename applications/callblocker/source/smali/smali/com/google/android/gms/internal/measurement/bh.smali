.class public final Lcom/google/android/gms/internal/measurement/bh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# static fields
.field private static volatile a:Lcom/google/android/gms/internal/measurement/bx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/bx",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/bx;->c()Lcom/google/android/gms/internal/measurement/bx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bx;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/bh;->b:Ljava/lang/Object;

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    :try_start_0
    const-string/jumbo v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 7
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 5
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 9
    const-string/jumbo v3, "com.google.android.gms.phenotype"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10
    const-string/jumbo v1, "PhenotypeClientHelper"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :goto_0
    return v0

    .line 12
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/bx;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bx;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 14
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/measurement/bh;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 15
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/bx;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bx;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v3

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 17
    :cond_2
    :try_start_1
    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    .line 24
    :goto_1
    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/bh;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/bx;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/bx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bx;

    .line 25
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/measurement/bh;->a:Lcom/google/android/gms/internal/measurement/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bx;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 20
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v4, "com.google.android.gms.phenotype"

    const/4 v5, 0x0

    .line 21
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 22
    if-eqz v2, :cond_5

    const-string/jumbo v4, "com.google.android.gms"

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    move v2, v0

    goto :goto_1
.end method
