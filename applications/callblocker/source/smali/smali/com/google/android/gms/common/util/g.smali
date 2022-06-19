.class public final Lcom/google/android/gms/common/util/g;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Landroid/os/DropBoxManager;

.field private static c:Z

.field private static d:I

.field private static e:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "CrashUtils.class"
    .end annotation
.end field

.field private static f:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "CrashUtils.class"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android."

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "com.android."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "dalvik."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "java."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "javax."

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/util/g;->a:[Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/g;->b:Landroid/os/DropBoxManager;

    .line 12
    sput-boolean v3, Lcom/google/android/gms/common/util/g;->c:Z

    .line 13
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/util/g;->d:I

    .line 14
    sput v3, Lcom/google/android/gms/common/util/g;->e:I

    .line 15
    sput v3, Lcom/google/android/gms/common/util/g;->f:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 2
    const/high16 v0, 0x20000000

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/g;->a(Landroid/content/Context;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Throwable;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :goto_0
    return v3

    .line 6
    :catch_0
    move-exception v0

    .line 8
    const-string/jumbo v1, "CrashUtils"

    const-string/jumbo v2, "Error adding exception to DropBox!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
