.class public Lcom/google/android/gms/common/util/s;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# static fields
.field private static final a:I

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/reflect/Method;

.field private static final h:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/google/android/gms/common/util/s;->a:I

    .line 132
    invoke-static {}, Lcom/google/android/gms/common/util/s;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/s;->b:Ljava/lang/reflect/Method;

    .line 133
    invoke-static {}, Lcom/google/android/gms/common/util/s;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/s;->c:Ljava/lang/reflect/Method;

    .line 134
    invoke-static {}, Lcom/google/android/gms/common/util/s;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/s;->d:Ljava/lang/reflect/Method;

    .line 135
    invoke-static {}, Lcom/google/android/gms/common/util/s;->d()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/s;->e:Ljava/lang/reflect/Method;

    .line 136
    invoke-static {}, Lcom/google/android/gms/common/util/s;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/s;->f:Ljava/lang/reflect/Method;

    .line 137
    invoke-static {}, Lcom/google/android/gms/common/util/s;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/s;->g:Ljava/lang/reflect/Method;

    .line 138
    invoke-static {}, Lcom/google/android/gms/common/util/s;->g()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/s;->h:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static a(ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 1

    .prologue
    .line 2
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/common/util/s;->a(Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    return-object v0

    .line 8
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/c/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 13
    if-nez v0, :cond_4

    .line 14
    const-string/jumbo v2, "WorkSourceUtil"

    const-string/jumbo v3, "Could not get applicationInfo from package: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 15
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    const-string/jumbo v2, "WorkSourceUtil"

    const-string/jumbo v3, "Could not find package: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 12
    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_4
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/s;->a(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/os/WorkSource;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/gms/common/util/s;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/util/s;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string/jumbo v1, "WorkSourceUtil"

    const-string/jumbo v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "add"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/os/WorkSource;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 61
    if-nez p0, :cond_1

    move v2, v1

    .line 62
    :goto_0
    if-nez v2, :cond_2

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 70
    :cond_0
    return-object v0

    .line 61
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/util/s;->b(Landroid/os/WorkSource;)I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    :goto_1
    if-ge v1, v2, :cond_0

    .line 66
    invoke-static {p0, v1}, Lcom/google/android/gms/common/util/s;->a(Landroid/os/WorkSource;I)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v3}, Lcom/google/android/gms/common/util/q;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 68
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static a(Landroid/os/WorkSource;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/gms/common/util/s;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 18
    if-nez p2, :cond_0

    .line 19
    const-string/jumbo p2, ""

    .line 20
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/util/s;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :cond_1
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string/jumbo v1, "WorkSourceUtil"

    const-string/jumbo v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 25
    :cond_2
    sget-object v0, Lcom/google/android/gms/common/util/s;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 26
    :try_start_1
    sget-object v0, Lcom/google/android/gms/common/util/s;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 28
    :catch_1
    move-exception v0

    .line 29
    const-string/jumbo v1, "WorkSourceUtil"

    const-string/jumbo v2, "Unable to assign blame through WorkSource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 71
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    .line 77
    invoke-static {p0}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v1

    const-string/jumbo v2, "android.permission.UPDATE_DEVICE_STATS"

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 79
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/os/WorkSource;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 51
    sget-object v0, Lcom/google/android/gms/common/util/s;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/util/s;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 55
    :goto_0
    return v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string/jumbo v2, "WorkSourceUtil"

    const-string/jumbo v3, "Unable to assign blame through WorkSource"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    .line 55
    goto :goto_0
.end method

.method private static b()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-static {}, Lcom/google/android/gms/common/util/m;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "add"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c()Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "size"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static e()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-static {}, Lcom/google/android/gms/common/util/m;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "getName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static final f()Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    invoke-static {}, Lcom/google/android/gms/common/util/m;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    :try_start_0
    const-class v1, Landroid/os/WorkSource;

    const-string/jumbo v2, "createWorkChain"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    const-string/jumbo v2, "WorkSourceUtil"

    const-string/jumbo v3, "Missing WorkChain API createWorkChain"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static final g()Ljava/lang/reflect/Method;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    invoke-static {}, Lcom/google/android/gms/common/util/m;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    :try_start_0
    const-string/jumbo v1, "android.os.WorkSource$WorkChain"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 126
    const-string/jumbo v2, "addNode"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    const-string/jumbo v2, "WorkSourceUtil"

    const-string/jumbo v3, "Missing WorkChain class"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
