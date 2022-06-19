.class Lcom/amazon/device/ads/DtbLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static final b:Ljava/lang/Object;

.field private static c:Z

.field private static d:Lcom/amazon/device/ads/DTBLogLevel;

.field private static e:Lcom/amazon/device/ads/DtbLogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "1234"

    const/4 v2, 0x7

    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v1, 0x1

    .line 18
    sput-boolean v1, Lcom/amazon/device/ads/DtbLog;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    :catchall_0
    sput-boolean v0, Lcom/amazon/device/ads/DtbLog;->a:Z

    .line 24
    :goto_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/amazon/device/ads/DtbLog;->b:Ljava/lang/Object;

    .line 30
    sput-boolean v0, Lcom/amazon/device/ads/DtbLog;->c:Z

    .line 34
    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Warn:Lcom/amazon/device/ads/DTBLogLevel;

    sput-object v0, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 81
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Info:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->a:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->c()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static a(Lcom/amazon/device/ads/DTBLogLevel;)V
    .locals 0

    .line 54
    sput-object p0, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 95
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Warn:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->a:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 88
    sget-object p1, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p1

    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Info:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_0

    sget-boolean p1, Lcom/amazon/device/ads/DtbLog;->a:Z

    if-eqz p1, :cond_0

    .line 90
    sget-object p1, Lcom/amazon/device/ads/DTBLogLevel;->Info:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-static {p0}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 173
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Fatal:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->a:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    sget-object p1, Lcom/amazon/device/ads/DTBLogLevel;->Fatal:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-static {p0}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 2

    .line 109
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Debug:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->a:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->c()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 122
    sget-object p0, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p0

    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Debug:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    if-gt p0, v0, :cond_0

    sget-boolean p0, Lcom/amazon/device/ads/DtbLog;->a:Z

    if-eqz p0, :cond_0

    .line 123
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->c()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 102
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Warn:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->a:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object p1, Lcom/amazon/device/ads/DTBLogLevel;->Warn:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-static {p0}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 6

    .line 61
    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->c:Z

    const-string v1, "Amazon DTB Ads API"

    if-eqz v0, :cond_3

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 1186
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 1187
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dalvik"

    .line 1188
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "java"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v0, v3, 0x2

    .line 1189
    array-length v4, v2

    if-ge v0, v4, :cond_0

    move v3, v0

    :cond_0
    aget-object v0, v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_3
    return-object v1
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .line 138
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Error:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->a:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 115
    sget-object p1, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result p1

    sget-object v0, Lcom/amazon/device/ads/DTBLogLevel;->Debug:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_0

    sget-boolean p1, Lcom/amazon/device/ads/DtbLog;->a:Z

    if-eqz p1, :cond_0

    .line 117
    sget-object p1, Lcom/amazon/device/ads/DTBLogLevel;->Debug:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-static {p0}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2

    .line 69
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->e:Lcom/amazon/device/ads/DtbLogListener;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/amazon/device/ads/DtbLog;->e:Lcom/amazon/device/ads/DtbLogListener;

    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v1}, Lcom/amazon/device/ads/DtbLogListener;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 145
    sget-object v0, Lcom/amazon/device/ads/DtbLog;->d:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/device/ads/DTBLogLevel;->Error:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBLogLevel;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/amazon/device/ads/DtbLog;->a:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object p1, Lcom/amazon/device/ads/DTBLogLevel;->Error:Lcom/amazon/device/ads/DTBLogLevel;

    invoke-static {p0}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
