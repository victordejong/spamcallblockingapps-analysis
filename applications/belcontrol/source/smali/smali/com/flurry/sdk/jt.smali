.class public Lcom/flurry/sdk/jt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jt$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "jt"

.field private static c:Lcom/flurry/sdk/jt;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/flurry/sdk/kb;",
            "[B>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/sdk/jt$a;

.field private f:Lcom/flurry/sdk/kd;

.field private g:Ljava/lang/String;

.field private final h:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/lt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "9774d56d682e549c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "dead00beef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/jt;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jt;->a:Ljava/util/Map;

    sget-object v0, Lcom/flurry/sdk/jt$a;->a:Lcom/flurry/sdk/jt$a;

    iput-object v0, p0, Lcom/flurry/sdk/jt;->e:Lcom/flurry/sdk/jt$a;

    new-instance v0, Lcom/flurry/sdk/jt$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jt$1;-><init>(Lcom/flurry/sdk/jt;)V

    iput-object v0, p0, Lcom/flurry/sdk/jt;->h:Lcom/flurry/sdk/kp;

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.FlurrySessionEvent"

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jt$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jt$2;-><init>(Lcom/flurry/sdk/jt;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jt;
    .locals 2

    const-class v0, Lcom/flurry/sdk/jt;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jt;->c:Lcom/flurry/sdk/jt;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/jt;

    invoke-direct {v1}, Lcom/flurry/sdk/jt;-><init>()V

    sput-object v1, Lcom/flurry/sdk/jt;->c:Lcom/flurry/sdk/jt;

    :cond_0
    sget-object v1, Lcom/flurry/sdk/jt;->c:Lcom/flurry/sdk/jt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic a(Lcom/flurry/sdk/jt;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/jt;->d()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x1

    :try_start_1
    invoke-interface {v1, p1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {v1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    const/4 p1, 0x6

    :try_start_2
    sget-object v1, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    const-string v2, "Error when saving deviceId"

    invoke-static {p1, v1, v2, p0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p0

    invoke-static {v0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static synthetic b(Lcom/flurry/sdk/jt;)V
    .locals 9

    :goto_0
    sget-object v0, Lcom/flurry/sdk/jt$a;->e:Lcom/flurry/sdk/jt$a;

    iget-object v1, p0, Lcom/flurry/sdk/jt;->e:Lcom/flurry/sdk/jt$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/flurry/sdk/jt$4;->b:[I

    iget-object v2, p0, Lcom/flurry/sdk/jt;->e:Lcom/flurry/sdk/jt$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    if-eq v2, v6, :cond_3

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/flurry/sdk/jt$a;->d:Lcom/flurry/sdk/jt$a;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/flurry/sdk/jt$a;->c:Lcom/flurry/sdk/jt$a;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/flurry/sdk/jt$a;->b:Lcom/flurry/sdk/jt$a;

    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/flurry/sdk/jt;->e:Lcom/flurry/sdk/jt$a;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jt;->e:Lcom/flurry/sdk/jt$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_5

    if-eq v0, v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/flurry/sdk/jt;->h()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/jt;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_7

    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AND"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/flurry/sdk/jt;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/flurry/sdk/jt;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v4

    iget-object v4, v4, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/flurry/sdk/ma;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/flurry/sdk/md;->i(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v7, 0x25

    mul-long v4, v4, v7

    add-long/2addr v2, v4

    mul-long v2, v2, v7

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ID"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v2, ".flurryb."

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/mc;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v0, v1}, Lcom/flurry/sdk/jt;->a(Ljava/lang/String;Ljava/io/File;)V

    :cond_a
    :goto_5
    iput-object v0, p0, Lcom/flurry/sdk/jt;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/flurry/sdk/jt;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception during id fetch:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/jt;->e:Lcom/flurry/sdk/jt$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    new-instance p0, Lcom/flurry/sdk/ju;

    invoke-direct {p0}, Lcom/flurry/sdk/ju;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/ko;)V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    invoke-static {}, Lcom/flurry/sdk/jt;->e()Lcom/flurry/sdk/kd;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/jt;->f:Lcom/flurry/sdk/kd;

    invoke-virtual {p0}, Lcom/flurry/sdk/jt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/flurry/sdk/jt;->h()V

    new-instance v0, Lcom/flurry/sdk/jv;

    invoke-direct {v0}, Lcom/flurry/sdk/jv;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/ko;)V

    :cond_0
    return-void
.end method

.method private static e()Lcom/flurry/sdk/kd;
    .locals 6

    const-string v0, "There is a problem with the Google Play Services library, which is required for Android Advertising ID support. The Google Play Services library should be integrated in any app shipping in the Play Store that uses analytics or advertising."

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    new-instance v3, Lcom/flurry/sdk/kd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-direct {v3, v4, v2}, Lcom/flurry/sdk/kd;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    sget-object v3, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GOOGLE PLAY SERVICES ERROR: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_1
    sget-object v2, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/flurry/sdk/ku;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static f()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v1, ".flurryb."

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v3

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x6

    :try_start_2
    sget-object v4, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    invoke-static {v2}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_2
    move-exception v0

    invoke-static {v2}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :goto_2
    return-object v1
.end method

.method private g()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/flurry/sdk/jt$3;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/jt$3;-><init>(Lcom/flurry/sdk/jt;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v2

    iget-object v2, v2, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const v0, 0xb5fa

    :try_start_1
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    if-eq v0, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x6

    :try_start_2
    sget-object v4, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    const-string v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    invoke-static {v2}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_2
    move-exception v0

    invoke-static {v2}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_5
    :goto_2
    return-object v1
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/flurry/sdk/jt;->f:Lcom/flurry/sdk/kd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/kd;->a:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x3

    if-eqz v0, :cond_1

    sget-object v2, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    const-string v3, "Fetched advertising id"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/jt;->a:Ljava/util/Map;

    sget-object v3, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/kb;

    invoke-static {v0}, Lcom/flurry/sdk/md;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/jt;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/flurry/sdk/jt;->b:Ljava/lang/String;

    const-string v3, "Fetched device id"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/jt;->a:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/kb;->a:Lcom/flurry/sdk/kb;

    invoke-static {v0}, Lcom/flurry/sdk/md;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    sget-object v0, Lcom/flurry/sdk/jt$a;->e:Lcom/flurry/sdk/jt$a;

    iget-object v1, p0, Lcom/flurry/sdk/jt;->e:Lcom/flurry/sdk/jt$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/jt;->f:Lcom/flurry/sdk/kd;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, v0, Lcom/flurry/sdk/kd;->b:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
