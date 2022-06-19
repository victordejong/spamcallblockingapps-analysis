.class public final Lcom/google/android/gms/internal/ads/dwi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dwn;

.field private final b:Lcom/google/android/gms/internal/ads/dwv$n$a;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$n;->d()Lcom/google/android/gms/internal/ads/dwv$n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwi;->b:Lcom/google/android/gms/internal/ads/dwv$n$a;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwi;->c:Z

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/dwn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwi;->a:Lcom/google/android/gms/internal/ads/dwn;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/dwn;)V
    .locals 2

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$n;->d()Lcom/google/android/gms/internal/ads/dwv$n$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwi;->b:Lcom/google/android/gms/internal/ads/dwv$n$a;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwi;->a:Lcom/google/android/gms/internal/ads/dwn;

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ch:Lcom/google/android/gms/internal/ads/ect;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwi;->c:Z

    .line 9
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dwi;
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dwi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dwi;-><init>()V

    return-object v0
.end method

.method private static b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/ads/edi;->b()Ljava/util/List;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 72
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v5

    const-string/jumbo v5, "Experiment ID is not a number"

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_1
    return-object v1
.end method

.method private final declared-synchronized b(Lcom/google/android/gms/internal/ads/dwk$a$a;)V
    .locals 3

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwi;->b:Lcom/google/android/gms/internal/ads/dwv$n$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwv$n$a;->h()Lcom/google/android/gms/internal/ads/dwv$n$a;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dwi;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$n$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dwv$n$a;

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dwi;->a:Lcom/google/android/gms/internal/ads/dwn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwi;->b:Lcom/google/android/gms/internal/ads/dwv$n$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dwn;->a([B)Lcom/google/android/gms/internal/ads/dws;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwk$a$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dws;->b(I)Lcom/google/android/gms/internal/ads/dws;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dws;->a()V

    .line 26
    const-string/jumbo v1, "Logging Event with event code : "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwk$a$a;->a()I

    move-result v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 26
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized c(Lcom/google/android/gms/internal/ads/dwk$a$a;)V
    .locals 3

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 54
    :goto_0
    monitor-exit p0

    return-void

    .line 31
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "clearcut_events.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v2, v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dwi;->d(Lcom/google/android/gms/internal/ads/dwk$a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v0, "Could not close Clearcut output stream."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 53
    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v0, "Could not find file for Clearcut"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 40
    :catch_2
    move-exception v0

    :try_start_7
    const-string/jumbo v0, "Could not write Clearcut to file."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 41
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 44
    :catch_3
    move-exception v0

    :try_start_9
    const-string/jumbo v0, "Could not close Clearcut output stream."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 46
    :catchall_1
    move-exception v0

    .line 47
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 51
    :goto_1
    :try_start_b
    throw v0

    .line 50
    :catch_4
    move-exception v1

    const-string/jumbo v1, "Could not close Clearcut output stream."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1
.end method

.method private final declared-synchronized d(Lcom/google/android/gms/internal/ads/dwk$a$a;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "id=%s,timestamp=%s,event=%s,data=%s\n"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dwi;->b:Lcom/google/android/gms/internal/ads/dwv$n$a;

    .line 56
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dwv$n$a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 57
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwk$a$a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwi;->b:Lcom/google/android/gms/internal/ads/dwv$n$a;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v0

    const/4 v4, 0x3

    .line 60
    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 61
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dwk$a$a;)V
    .locals 2

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwi;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 23
    :goto_0
    monitor-exit p0

    return-void

    .line 18
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ci:Lcom/google/android/gms/internal/ads/ect;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dwi;->c(Lcom/google/android/gms/internal/ads/dwk$a$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 22
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dwi;->b(Lcom/google/android/gms/internal/ads/dwk$a$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dwl;)V
    .locals 3

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwi;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwi;->b:Lcom/google/android/gms/internal/ads/dwv$n$a;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dwl;->a(Lcom/google/android/gms/internal/ads/dwv$n$a;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "AdMobClearcutLogger.modify"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
