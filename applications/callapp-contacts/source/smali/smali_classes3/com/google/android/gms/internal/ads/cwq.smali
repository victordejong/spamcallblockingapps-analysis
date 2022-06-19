.class public final Lcom/google/android/gms/internal/ads/cwq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/io/File;

.field final b:Landroid/content/SharedPreferences;

.field private final c:Ljava/io/File;

.field private final d:Lcom/google/android/gms/internal/ads/duu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/duu;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pcvmspf"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cwq;->b:Landroid/content/SharedPreferences;

    const-string v0, "pccache"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cwq;->c:Ljava/io/File;

    const-string v0, "tmppccache"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cwq;->a:Ljava/io/File;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cwq;->d:Lcom/google/android/gms/internal/ads/duu;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/dva;)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dln;->f()Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/k;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/cwn;
    .locals 5

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cwq;->b(I)Lcom/google/android/gms/internal/ads/dva;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1005
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cwq;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "pcam.jar"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cwq;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "pcam"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cwq;->a()Ljava/io/File;

    move-result-object v2

    const-string v3, "pcopt"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cwq;->a()Ljava/io/File;

    move-result-object v3

    const-string v4, "pcbc"

    invoke-static {v0, v4, v3}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 20
    new-instance v3, Lcom/google/android/gms/internal/ads/cwn;

    invoke-direct {v3, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/cwn;-><init>(Lcom/google/android/gms/internal/ads/dva;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-object v3
.end method

.method final a()Ljava/io/File;
    .locals 3

    .line 88
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cwq;->c:Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cwq;->d:Lcom/google/android/gms/internal/ads/duu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/duu;->zzv()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    return-object v0
.end method

.method final b(I)Lcom/google/android/gms/internal/ads/dva;
    .locals 5

    .line 96
    sget v0, Lcom/google/android/gms/internal/ads/cwv;->a:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cwq;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cwq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/cwv;->b:I

    if-ne p1, v0, :cond_1

    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cwq;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cwq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 100
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 103
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/util/k;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dva;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dva;

    move-result-object p1

    .line 2005
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dva;->zzaci:Ljava/lang/String;

    const-string v2, "pcam.jar"

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cwq;->a()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "pcam"

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cwq;->a()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    :cond_3
    const-string v3, "pcbc"

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cwq;->a()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/cwp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    return-object p1

    :catch_0
    :cond_5
    return-object v1
.end method

.method final b()Ljava/lang/String;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwq;->d:Lcom/google/android/gms/internal/ads/duu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duu;->zzv()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "FBAMTD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cwq;->d:Lcom/google/android/gms/internal/ads/duu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duu;->zzv()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "LATMTD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
