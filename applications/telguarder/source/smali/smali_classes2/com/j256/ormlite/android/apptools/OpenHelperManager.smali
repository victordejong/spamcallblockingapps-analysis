.class public Lcom/j256/ormlite/android/apptools/OpenHelperManager;
.super Ljava/lang/Object;
.source "OpenHelperManager.java"


# static fields
.field private static final HELPER_CLASS_RESOURCE_NAME:Ljava/lang/String; = "open_helper_classname"

.field private static volatile helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

.field private static helperClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static instanceCount:I

.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static wasClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    .line 42
    sput-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->wasClosed:Z

    .line 44
    sput v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;)",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 210
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not construct instance of helper class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find public constructor that has a single (Context) argument for helper class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static declared-synchronized getHelper(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->lookupHelperClass(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->innerSetHelperClass(Ljava/lang/Class;)V

    goto :goto_0

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context argument is null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_1
    :goto_0
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    invoke-static {p0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->loadHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    invoke-static {p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->innerSetHelperClass(Ljava/lang/Class;)V

    .line 78
    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->loadHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 75
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "openHelperClass argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private static innerSetHelperClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 149
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 150
    sput-object p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    :goto_0
    return-void

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Helper class was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is trying to be reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Helper class was trying to be reset to null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static loadHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_2

    .line 159
    sget-boolean v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->wasClosed:Z

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "helper was already closed and is being re-opened"

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/logger/Logger;->info(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 167
    invoke-static {p0, p1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->constructHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object p0

    sput-object p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 168
    sget-object p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    sget-object p1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    const-string v0, "zero instances, created helper {}"

    invoke-virtual {p0, v0, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    invoke-static {}, Lcom/j256/ormlite/dao/BaseDaoImpl;->clearAllInternalObjectCaches()V

    .line 192
    invoke-static {}, Lcom/j256/ormlite/dao/DaoManager;->clearDaoCache()V

    const/4 p0, 0x0

    .line 193
    sput p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    goto :goto_0

    .line 164
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_2
    :goto_0
    sget p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    .line 197
    sget-object p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    sget-object p1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    sget v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "returning helper {}, instance count = {} "

    invoke-virtual {p0, v1, p1, v0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    sget-object p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    return-object p0
.end method

.method private static lookupHelperClass(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "open_helper_classname"

    const-string v2, "string"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 232
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 236
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create helper instance for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_6

    .line 246
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 247
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_1

    goto :goto_3

    .line 251
    :cond_1
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 253
    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_3

    .line 256
    :cond_2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 258
    instance-of v4, v3, Ljava/lang/Class;

    if-nez v4, :cond_3

    goto :goto_2

    .line 261
    :cond_3
    check-cast v3, Ljava/lang/Class;

    .line 262
    const-class v4, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v3

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 270
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find OpenHelperClass because none of the generic parameters of class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " extends OrmLiteSqliteOpenHelper.  You should use getHelper(Context, Class) instead."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized releaseHelper()V
    .locals 6

    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    .line 127
    :try_start_0
    sget v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    .line 128
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "releasing helper {}, instance count = {}"

    sget-object v4, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    sget v5, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    sget v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    if-gtz v1, :cond_1

    .line 130
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "zero instances, closing helper {}"

    sget-object v4, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    const/4 v1, 0x0

    .line 133
    sput-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 134
    sput-boolean v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->wasClosed:Z

    .line 136
    :cond_0
    sget v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->instanceCount:I

    if-gez v1, :cond_1

    .line 137
    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "too many calls to release helper, instance count = {}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setHelper(Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;)V
    .locals 1

    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sput-object p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helper:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setOpenHelperClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 52
    :try_start_0
    sput-object p0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->helperClass:Ljava/lang/Class;

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->innerSetHelperClass(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
