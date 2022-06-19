.class public final Lcom/google/android/gms/internal/ads/cnk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Lcom/google/android/gms/internal/ads/dkc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dkc;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "pcvmspf"

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cnk;->c:Landroid/content/SharedPreferences;

    .line 4
    const-string/jumbo v0, "pccache"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cnk;->a:Ljava/io/File;

    .line 7
    const-string/jumbo v0, "tmppccache"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cnk;->b:Ljava/io/File;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cnk;->d:Lcom/google/android/gms/internal/ads/dkc;

    .line 10
    return-void
.end method

.method private final a()Ljava/io/File;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cnk;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cnk;->d:Lcom/google/android/gms/internal/ads/dkc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dkc;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 88
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dki;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/day;->k()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/j;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final b(I)Lcom/google/android/gms/internal/ads/dki;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 92
    .line 93
    sget v0, Lcom/google/android/gms/internal/ads/cnp;->a:I

    if-ne p1, v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnk;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    :cond_0
    :goto_1
    return-object v1

    .line 95
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/cnp;->b:I

    if-ne p1, v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnk;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/common/util/j;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dki;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v2

    .line 102
    const-string/jumbo v3, "pcam"

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->a()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 103
    const-string/jumbo v4, "pcbc"

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->a()Ljava/io/File;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 104
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 105
    :goto_2
    if-eqz v2, :cond_0

    move-object v1, v0

    .line 106
    goto :goto_1

    .line 104
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnk;->d:Lcom/google/android/gms/internal/ads/dkc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dkc;->a()I

    move-result v0

    const/16 v1, 0x11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "FBAMTD"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnk;->d:Lcom/google/android/gms/internal/ads/dkc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dkc;->a()I

    move-result v0

    const/16 v1, 0x11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "LATMTD"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/cng;
    .locals 6

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cnk;->b(I)Lcom/google/android/gms/internal/ads/dki;

    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v0

    .line 15
    const-string/jumbo v2, "pcam"

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->a()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 16
    const-string/jumbo v3, "pcopt"

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->a()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 17
    const-string/jumbo v4, "pcbc"

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->a()Ljava/io/File;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/cng;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/cng;-><init>(Lcom/google/android/gms/internal/ads/dki;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dke;Lcom/google/android/gms/internal/ads/cnq;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dke;->b()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v3

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dke;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v4

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    :cond_0
    move v0, v2

    .line 36
    :goto_0
    if-nez v0, :cond_3

    .line 84
    :goto_1
    return v2

    .line 25
    :cond_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cnk;->b:Ljava/io/File;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/io/File;)Z

    .line 26
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cnk;->b:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 27
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cnk;->b:Ljava/io/File;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 29
    const-string/jumbo v5, "pcam"

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/cnk;->b:Ljava/io/File;

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 30
    if-eqz v3, :cond_2

    array-length v6, v3

    if-lez v6, :cond_2

    .line 31
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/io/File;[B)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string/jumbo v3, "pcbc"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cnk;->b:Ljava/io/File;

    .line 34
    invoke-static {v0, v3, v5}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 35
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/io/File;[B)Z

    move-result v0

    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "pcam"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cnk;->b:Ljava/io/File;

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 44
    const-string/jumbo v3, "pcam"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cnk;->b:Ljava/io/File;

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 45
    const-string/jumbo v4, "pcbc"

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/cnk;->b:Ljava/io/File;

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 46
    const-string/jumbo v5, "pcam"

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->a()Ljava/io/File;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 47
    const-string/jumbo v6, "pcbc"

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->a()Ljava/io/File;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 48
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 49
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 50
    :goto_2
    if-eqz v0, :cond_b

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/dki;->f()Lcom/google/android/gms/internal/ads/dki$a;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dki$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dki$a;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dki;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dki$a;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dki$a;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dki;->d()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dki$a;->b(J)Lcom/google/android/gms/internal/ads/dki$a;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dki;->e()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dki$a;->c(J)Lcom/google/android/gms/internal/ads/dki$a;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dke;->a()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dki;->c()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dki$a;->a(J)Lcom/google/android/gms/internal/ads/dki$a;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dki;

    .line 59
    sget v3, Lcom/google/android/gms/internal/ads/cnp;->a:I

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/cnk;->b(I)Lcom/google/android/gms/internal/ads/dki;

    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cnk;->c:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 61
    if-eqz v3, :cond_6

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cnk;->a(Lcom/google/android/gms/internal/ads/dki;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cnk;->a(Lcom/google/android/gms/internal/ads/dki;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 66
    if-eqz v0, :cond_b

    move v0, v1

    .line 68
    :goto_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 69
    sget v3, Lcom/google/android/gms/internal/ads/cnp;->a:I

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/cnk;->b(I)Lcom/google/android/gms/internal/ads/dki;

    move-result-object v3

    .line 70
    if-eqz v3, :cond_7

    .line 71
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_7
    sget v3, Lcom/google/android/gms/internal/ads/cnp;->b:I

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/cnk;->b(I)Lcom/google/android/gms/internal/ads/dki;

    move-result-object v3

    .line 73
    if-eqz v3, :cond_8

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dki;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 76
    array-length v4, v3

    :goto_4
    if-ge v2, v4, :cond_c

    aget-object v5, v3, v2

    .line 77
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnk;->a()Ljava/io/File;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 82
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/cnj;->a(Ljava/io/File;)Z

    .line 83
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    move v0, v2

    .line 49
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 66
    goto :goto_3

    :cond_c
    move v2, v0

    .line 84
    goto/16 :goto_1
.end method
