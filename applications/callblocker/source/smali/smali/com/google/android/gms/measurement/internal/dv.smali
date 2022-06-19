.class public final Lcom/google/android/gms/measurement/internal/dv;
.super Lcom/google/android/gms/measurement/internal/de;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;J)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/de;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/dv;->g:J

    .line 3
    return-void
.end method

.method private final I()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-static {}, Lcom/google/android/gms/internal/measurement/lu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->ar:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Disabled IID for tests."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 231
    :goto_0
    return-object v0

    .line 210
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v2, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 212
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 213
    if-nez v0, :cond_1

    move-object v0, v1

    .line 214
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 218
    :cond_1
    :try_start_1
    const-string/jumbo v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 219
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 220
    if-nez v2, :cond_2

    move-object v0, v1

    .line 221
    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->f()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 225
    goto :goto_0

    .line 226
    :cond_2
    :try_start_2
    const-string/jumbo v3, "getFirebaseInstanceId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 227
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 228
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 230
    :catch_2
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 231
    goto :goto_0
.end method


# virtual methods
.method protected final A()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5
    const-string/jumbo v3, "unknown"

    .line 6
    const-string/jumbo v2, "Unknown"

    .line 7
    const/high16 v1, -0x80000000

    .line 8
    const-string/jumbo v0, "Unknown"

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 11
    if-nez v7, :cond_7

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v8

    .line 13
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v8

    const-string/jumbo v9, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 14
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 15
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    :cond_0
    :goto_0
    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/dv;->a:Ljava/lang/String;

    .line 41
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/dv;->d:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/dv;->b:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/google/android/gms/measurement/internal/dv;->c:I

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->e:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/dv;->f:J

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v4

    .line 50
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dv;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "am"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/dv;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v4

    .line 53
    :goto_2
    or-int/2addr v0, v1

    .line 54
    if-nez v0, :cond_1

    .line 56
    if-nez v2, :cond_d

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->c()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "GoogleService failed to initialize (no status)"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 64
    :cond_1
    :goto_3
    if-eqz v0, :cond_1a

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->C()I

    move-result v0

    .line 67
    packed-switch v0, :pswitch_data_0

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "App measurement disabled"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->c()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Invalid scion state in identity"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 88
    :goto_4
    if-nez v0, :cond_e

    move v0, v4

    .line 90
    :goto_5
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/dv;->j:Ljava/lang/String;

    .line 91
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/dv;->k:Ljava/lang/String;

    .line 92
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/dv;->l:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 94
    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dv;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/dv;->k:Ljava/lang/String;

    .line 96
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/lo;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aO:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v1

    .line 98
    const-string/jumbo v2, "google_app_id"

    .line 99
    new-instance v3, Lcom/google/android/gms/common/internal/w;

    invoke-direct {v3, v1}, Lcom/google/android/gms/common/internal/w;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    :goto_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, ""

    :goto_7
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/dv;->j:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 105
    new-instance v8, Lcom/google/android/gms/common/internal/w;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/google/android/gms/common/internal/w;-><init>(Landroid/content/Context;)V

    .line 106
    const-string/jumbo v1, "ga_app_id"

    invoke-virtual {v8, v1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v1, ""

    :goto_8
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/dv;->l:Ljava/lang/String;

    .line 108
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 109
    :cond_3
    const-string/jumbo v1, "admob_app_id"

    invoke-virtual {v8, v1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/dv;->k:Ljava/lang/String;

    .line 114
    :cond_4
    :goto_9
    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "App measurement enabled for app package, google app id"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/dv;->a:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->k:Ljava/lang/String;

    .line 118
    :goto_a
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 125
    :cond_5
    :goto_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->h:Ljava/util/List;

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->ac:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    const-string/jumbo v1, "analytics.safelisted_events"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_16

    .line 131
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move v0, v5

    .line 139
    :goto_c
    if-eqz v0, :cond_6

    .line 140
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/dv;->h:Ljava/util/List;

    .line 141
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_19

    .line 142
    if-eqz v7, :cond_18

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    :goto_d
    iput v4, p0, Lcom/google/android/gms/measurement/internal/dv;->i:I

    .line 146
    :goto_e
    return-void

    .line 16
    :cond_7
    :try_start_1
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 22
    :goto_f
    if-nez v3, :cond_a

    .line 23
    const-string/jumbo v3, "manual_install"

    .line 26
    :cond_8
    :goto_10
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 27
    if-eqz v8, :cond_0

    .line 28
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 30
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 31
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_9
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 33
    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 19
    :catch_0
    move-exception v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v8

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v8

    const-string/jumbo v9, "Error retrieving app installer package name. appId"

    .line 21
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f

    .line 24
    :cond_a
    const-string/jumbo v8, "com.android.vending"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 25
    const-string/jumbo v3, ""

    goto :goto_10

    .line 36
    :catch_1
    move-exception v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v8

    .line 37
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v8

    const-string/jumbo v9, "Error retrieving package info. appId, appName"

    .line 38
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 39
    invoke-virtual {v8, v9, v10, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    move v0, v5

    .line 49
    goto/16 :goto_1

    :cond_c
    move v1, v5

    .line 52
    goto/16 :goto_2

    .line 58
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->c()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v8, "GoogleService failed to initialize, status"

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->e()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->a()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v3, v8, v9, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 70
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "App measurement disabled via the global data collection setting"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 72
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "App measurement collection enabled"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 74
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "App measurement deactivated via the init parameters"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 76
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "App measurement disabled via the init parameters"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 78
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "App measurement deactivated via the manifest"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 80
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "App measurement disabled via the manifest"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 82
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 84
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    move v0, v5

    .line 88
    goto/16 :goto_5

    .line 102
    :cond_f
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/g;->a()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    :cond_10
    move-object v1, v3

    .line 103
    goto/16 :goto_7

    :cond_11
    move-object v1, v2

    .line 107
    goto/16 :goto_8

    .line 111
    :cond_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 112
    new-instance v1, Lcom/google/android/gms/common/internal/w;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/w;-><init>(Landroid/content/Context;)V

    .line 113
    const-string/jumbo v2, "admob_app_id"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/dv;->k:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_9

    .line 120
    :catch_2
    move-exception v0

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Fetching Google App Id failed with exception. appId"

    .line 123
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 124
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 117
    :cond_13
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->j:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_a

    .line 134
    :cond_14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    const-string/jumbo v6, "safelisted event"

    invoke-virtual {v3, v6, v0}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v5

    .line 136
    goto/16 :goto_c

    :cond_16
    move v0, v4

    .line 138
    goto/16 :goto_c

    :cond_17
    move v4, v5

    .line 143
    goto/16 :goto_d

    .line 144
    :cond_18
    iput v5, p0, Lcom/google/android/gms/measurement/internal/dv;->i:I

    goto/16 :goto_e

    .line 145
    :cond_19
    iput v5, p0, Lcom/google/android/gms/measurement/internal/dv;->i:I

    goto/16 :goto_e

    :cond_1a
    move v0, v5

    goto/16 :goto_5

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method final B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->a:Ljava/lang/String;

    return-object v0
.end method

.method final C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 235
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->j:Ljava/lang/String;

    return-object v0
.end method

.method final D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->k:Ljava/lang/String;

    return-object v0
.end method

.method final E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->l:Ljava/lang/String;

    return-object v0
.end method

.method final F()I
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 241
    iget v0, p0, Lcom/google/android/gms/measurement/internal/dv;->c:I

    return v0
.end method

.method final G()I
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 243
    iget v0, p0, Lcom/google/android/gms/measurement/internal/dv;->i:I

    return v0
.end method

.method final H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->h:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic a()Lcom/google/android/gms/measurement/internal/ab;
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->a()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/kb;
    .locals 32

    .prologue
    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 149
    new-instance v3, Lcom/google/android/gms/measurement/internal/kb;

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/dv;->B()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/dv;->C()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 154
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/dv;->b:Ljava/lang/String;

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/dv;->F()I

    move-result v2

    int-to-long v7, v2

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 159
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/dv;->d:Ljava/lang/String;

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->b()J

    move-result-wide v10

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 166
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/dv;->f:J

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-nez v2, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/dv;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/gms/measurement/internal/dv;->f:J

    .line 168
    :cond_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/dv;->f:J

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/dv;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v15

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/measurement/internal/el;->r:Z

    if-nez v2, :cond_2

    const/16 v16, 0x1

    .line 173
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/dv;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v2

    if-nez v2, :cond_3

    .line 176
    const/16 v17, 0x0

    .line 178
    :goto_1
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/dv;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 180
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v14

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/el;->h:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 181
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_4

    .line 182
    iget-wide v0, v2, Lcom/google/android/gms/measurement/internal/fd;->a:J

    move-wide/from16 v20, v0

    .line 185
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/dv;->G()I

    move-result v22

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 189
    const-string/jumbo v14, "google_analytics_ssaid_collection_enabled"

    invoke-virtual {v2, v14}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 190
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 194
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/el;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v14, "deferred_analytics_collection"

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v2, v14, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/dv;->D()Ljava/lang/String;

    move-result-object v26

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    const-string/jumbo v14, "google_analytics_default_allow_ad_personalization_signals"

    invoke-virtual {v2, v14}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 198
    if-nez v2, :cond_6

    const/16 v27, 0x0

    .line 200
    :goto_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/measurement/internal/dv;->g:J

    move-wide/from16 v28, v0

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    sget-object v14, Lcom/google/android/gms/measurement/internal/t;->ac:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v14}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/dv;->h:Ljava/util/List;

    move-object/from16 v30, v0

    .line 204
    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    sget-object v14, Lcom/google/android/gms/measurement/internal/t;->ao:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v14}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/dv;->E()Ljava/lang/String;

    move-result-object v31

    :goto_6
    move-object/from16 v14, p1

    invoke-direct/range {v3 .. v31}, Lcom/google/android/gms/measurement/internal/kb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V

    .line 205
    return-object v3

    .line 171
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 177
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/dv;->I()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 183
    :cond_4
    iget-wide v0, v2, Lcom/google/android/gms/measurement/internal/fd;->a:J

    move-wide/from16 v20, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    goto/16 :goto_2

    .line 190
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 198
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    .line 203
    :cond_8
    const/16 v30, 0x0

    goto :goto_5

    .line 204
    :cond_9
    const/16 v31, 0x0

    goto :goto_6
.end method

.method public final bridge synthetic b()Lcom/google/android/gms/measurement/internal/gk;
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->b()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Lcom/google/android/gms/measurement/internal/dv;
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->c()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/measurement/internal/hu;
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/ho;
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/du;
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/iz;
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method

.method protected final z()Z
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x1

    return v0
.end method
