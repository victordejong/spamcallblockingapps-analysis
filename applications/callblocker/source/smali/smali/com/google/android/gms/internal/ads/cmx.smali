.class public final Lcom/google/android/gms/internal/ads/cmx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/clq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/clq;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cmx;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cmx;->b:Lcom/google/android/gms/internal/ads/clq;

    .line 4
    return-void
.end method

.method private final a([B)V
    .locals 3

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmx;->b:Lcom/google/android/gms/internal/ads/clq;

    if-nez v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string/jumbo v0, "os.arch:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/cot;->a:Lcom/google/android/gms/internal/ads/cot;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cot;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string/jumbo v2, "SUPPORTED_ABIS"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 10
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 11
    if-eqz v0, :cond_1

    .line 12
    const-string/jumbo v2, "supported_abis:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :cond_1
    :goto_1
    const-string/jumbo v0, "CPU_ABI:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v0, "CPU_ABI2:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    if-eqz p1, :cond_2

    .line 20
    const-string/jumbo v0, "ELF:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmx;->b:Lcom/google/android/gms/internal/ads/clq;

    const/16 v2, 0xfa7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/clq;->a(ILjava/lang/String;)Lcom/google/android/gms/tasks/g;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 15
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private final b()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x7e8

    const/4 v3, 0x0

    .line 23
    new-instance v1, Ljava/util/HashSet;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "i686"

    aput-object v2, v0, v3

    const/4 v2, 0x1

    const-string/jumbo v3, "armv71"

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/cot;->a:Lcom/google/android/gms/internal/ads/cot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cot;->a()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    :goto_0
    return-object v0

    .line 27
    :cond_0
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string/jumbo v1, "SUPPORTED_ABIS"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 29
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 30
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmx;->b:Lcom/google/android/gms/internal/ads/clq;

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmx;->b:Lcom/google/android/gms/internal/ads/clq;

    invoke-virtual {v1, v4, v6, v7, v0}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    .line 39
    :cond_1
    :goto_1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 40
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0

    .line 36
    :catch_1
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmx;->b:Lcom/google/android/gms/internal/ads/clq;

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmx;->b:Lcom/google/android/gms/internal/ads/clq;

    invoke-virtual {v1, v4, v6, v7, v0}, Lcom/google/android/gms/internal/ads/clq;->a(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    goto :goto_1

    .line 41
    :cond_2
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    goto :goto_0
.end method

.method private final c()Lcom/google/android/gms/internal/ads/dkc;
    .locals 5

    .prologue
    const/16 v3, 0x14

    const/4 v4, 0x2

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cmx;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->a:Lcom/google/android/gms/internal/ads/dkc;

    .line 82
    :goto_0
    return-object v0

    .line 45
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/cqc;

    const-string/jumbo v2, ".*\\.so$"

    .line 46
    invoke-static {v2, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/cqc;-><init>(Ljava/util/regex/Pattern;)V

    .line 47
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 49
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->a:Lcom/google/android/gms/internal/ads/dkc;

    goto :goto_0

    .line 50
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/16 v0, 0x14

    :try_start_1
    new-array v0, v0, [B

    .line 52
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 53
    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 54
    const/4 v3, 0x5

    aget-byte v3, v0, v3

    if-ne v3, v4, :cond_3

    .line 55
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cmx;->a([B)V

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->a:Lcom/google/android/gms/internal/ads/dkc;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->a:Lcom/google/android/gms/internal/ads/dkc;

    goto :goto_0

    .line 59
    :cond_3
    const/4 v3, 0x0

    const/16 v4, 0x13

    :try_start_3
    aget-byte v4, v0, v4

    aput-byte v4, v2, v3

    .line 60
    const/4 v3, 0x1

    const/16 v4, 0x12

    aget-byte v0, v0, v4

    aput-byte v0, v2, v3

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 63
    sparse-switch v0, :sswitch_data_0

    .line 76
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->a:Lcom/google/android/gms/internal/ads/dkc;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 77
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 64
    :sswitch_0
    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->c:Lcom/google/android/gms/internal/ads/dkc;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 65
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 67
    :sswitch_1
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->e:Lcom/google/android/gms/internal/ads/dkc;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 68
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    .line 70
    :sswitch_2
    :try_start_9
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->b:Lcom/google/android/gms/internal/ads/dkc;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 71
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_0

    .line 73
    :sswitch_3
    :try_start_b
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->d:Lcom/google/android/gms/internal/ads/dkc;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 74
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 79
    :cond_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_1

    .line 80
    :catch_1
    move-exception v0

    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :goto_2
    :try_start_e
    throw v0

    :catch_2
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dap;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_2

    .line 53
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x28 -> :sswitch_2
        0x3e -> :sswitch_1
        0xb7 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dkc;
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmx;->c()Lcom/google/android/gms/internal/ads/dkc;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/ads/dkc;->a:Lcom/google/android/gms/internal/ads/dkc;

    if-ne v0, v1, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmx;->b()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 87
    const-string/jumbo v1, "i686"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->c:Lcom/google/android/gms/internal/ads/dkc;

    .line 97
    :cond_1
    :goto_0
    return-object v0

    .line 89
    :cond_2
    const-string/jumbo v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->e:Lcom/google/android/gms/internal/ads/dkc;

    goto :goto_0

    .line 91
    :cond_3
    const-string/jumbo v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->d:Lcom/google/android/gms/internal/ads/dkc;

    goto :goto_0

    .line 93
    :cond_4
    const-string/jumbo v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "armv71"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 94
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->b:Lcom/google/android/gms/internal/ads/dkc;

    goto :goto_0

    .line 95
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cmx;->a([B)V

    .line 96
    sget-object v0, Lcom/google/android/gms/internal/ads/dkc;->a:Lcom/google/android/gms/internal/ads/dkc;

    goto :goto_0
.end method
