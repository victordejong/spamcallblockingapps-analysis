.class public final Lcom/flurry/sdk/jw;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/flurry/sdk/jw;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jw;
    .locals 2

    const-class v0, Lcom/flurry/sdk/jw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jw;->a:Lcom/flurry/sdk/jw;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/jw;

    invoke-direct {v1}, Lcom/flurry/sdk/jw;-><init>()V

    sput-object v1, Lcom/flurry/sdk/jw;->a:Lcom/flurry/sdk/jw;

    :cond_0
    sget-object v1, Lcom/flurry/sdk/jw;->a:Lcom/flurry/sdk/jw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
