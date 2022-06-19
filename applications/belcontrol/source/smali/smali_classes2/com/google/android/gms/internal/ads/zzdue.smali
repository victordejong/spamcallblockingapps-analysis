.class public final Lcom/google/android/gms/internal/ads/zzdue;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzvs:Lcom/google/android/gms/internal/ads/zzdsy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdue;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdue;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgp;)Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdud;->zzhtw:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private final zzaye()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "i686"

    const-string v2, "armv71"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdwq;->zzhxb:Lcom/google/android/gms/internal/ads/zzdwq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdwq;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v0, 0x0

    const/16 v2, 0x7e8

    :try_start_0
    const-class v3, Landroid/os/Build;

    const-string v4, "SUPPORTED_ABIS"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    const/4 v4, 0x0

    aget-object v0, v3, v4
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdue;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v4, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    :catch_1
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdue;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    return-object v0
.end method

.method private final zzayf()Lcom/google/android/gms/internal/ads/zzgp;
    .locals 8

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdue;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/16 v2, 0x1399

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdue;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    if-eqz v0, :cond_0

    const-string v1, "No lib/"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdsy;->zzg(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabw:Lcom/google/android/gms/internal/ads/zzgp;

    return-object v0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdye;

    const-string v3, ".*\\.so$"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzdye;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x14

    :try_start_1
    new-array v5, v0, [B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-ne v6, v0, :cond_8

    new-array v0, v4, [B

    aput-byte v3, v0, v3

    const/4 v6, 0x1

    aput-byte v3, v0, v6

    const/4 v7, 0x5

    aget-byte v7, v5, v7

    if-ne v7, v4, :cond_3

    invoke-direct {p0, v5, v1}, Lcom/google/android/gms/internal/ads/zzdue;->zzc([BLjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabr:Lcom/google/android/gms/internal/ads/zzgp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :cond_3
    const/16 v4, 0x13

    :try_start_3
    aget-byte v4, v5, v4

    aput-byte v4, v0, v3

    const/16 v3, 0x12

    aget-byte v3, v5, v3

    aput-byte v3, v0, v6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    const/16 v3, 0x28

    if-eq v0, v3, :cond_6

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_5

    const/16 v3, 0xb7

    if-eq v0, v3, :cond_4

    invoke-direct {p0, v5, v1}, Lcom/google/android/gms/internal/ads/zzdue;->zzc([BLjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabr:Lcom/google/android/gms/internal/ads/zzgp;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :cond_4
    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabu:Lcom/google/android/gms/internal/ads/zzgp;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :cond_5
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabv:Lcom/google/android/gms/internal/ads/zzgp;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return-object v0

    :cond_6
    :try_start_9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabs:Lcom/google/android/gms/internal/ads/zzgp;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    return-object v0

    :cond_7
    :try_start_b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabt:Lcom/google/android/gms/internal/ads/zzgp;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :cond_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_e
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzeja;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdue;->zzc([BLjava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabr:Lcom/google/android/gms/internal/ads/zzgp;

    return-object v0

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdue;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    if-eqz v0, :cond_a

    const-string v1, "No .so"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdsy;->zzg(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_a
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabw:Lcom/google/android/gms/internal/ads/zzgp;

    return-object v0
.end method

.method private final zzc([BLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdue;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "os.arch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdwq;->zzhxb:Lcom/google/android/gms/internal/ads/zzdwq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdwq;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    const-class v2, Landroid/os/Build;

    const-string v3, "SUPPORTED_ABIS"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "supported_abis:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    const-string v2, "CPU_ABI:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CPU_ABI2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string v2, "ELF:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "dbg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdue;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    const/16 p2, 0xfa7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsy;->zzg(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final zzayg()Lcom/google/android/gms/internal/ads/zzgp;
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdue;->zzayf()Lcom/google/android/gms/internal/ads/zzgp;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgp;->zzabw:Lcom/google/android/gms/internal/ads/zzgp;

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdue;->zzaye()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v0, "Empty dev arch"

    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdue;->zzc([BLjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabr:Lcom/google/android/gms/internal/ads/zzgp;

    goto :goto_1

    :cond_1
    const-string v1, "i686"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabv:Lcom/google/android/gms/internal/ads/zzgp;

    goto :goto_1

    :cond_3
    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabu:Lcom/google/android/gms/internal/ads/zzgp;

    goto :goto_1

    :cond_4
    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "armv71"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabs:Lcom/google/android/gms/internal/ads/zzgp;

    goto :goto_1

    :cond_6
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgp;->zzabt:Lcom/google/android/gms/internal/ads/zzgp;

    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdue;->zzvs:Lcom/google/android/gms/internal/ads/zzdsy;

    if-eqz v1, :cond_8

    const/16 v2, 0x139a

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsy;->zzg(ILjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    :cond_8
    return-object v0
.end method
