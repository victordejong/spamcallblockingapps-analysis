.class public final Lscala/language$;
.super Ljava/lang/Object;
.source "language.scala"


# static fields
.field public static final MODULE$:Lscala/language$;


# instance fields
.field private volatile bitmap$0:B

.field private dynamics:Lscala/languageFeature$dynamics;

.field private existentials:Lscala/languageFeature$existentials;

.field private higherKinds:Lscala/languageFeature$higherKinds;

.field private implicitConversions:Lscala/languageFeature$implicitConversions;

.field private postfixOps:Lscala/languageFeature$postfixOps;

.field private reflectiveCalls:Lscala/languageFeature$reflectiveCalls;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/language$;

    invoke-direct {v0}, Lscala/language$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/language$;->MODULE$:Lscala/language$;

    return-void
.end method

.method private dynamics$lzycompute()Lscala/languageFeature$dynamics;
    .locals 1

    .line 55
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/languageFeature$dynamics$;->MODULE$:Lscala/languageFeature$dynamics$;

    iput-object v0, p0, Lscala/language$;->dynamics:Lscala/languageFeature$dynamics;

    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/language$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/language$;->dynamics:Lscala/languageFeature$dynamics;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private existentials$lzycompute()Lscala/languageFeature$existentials;
    .locals 1

    .line 152
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/languageFeature$existentials$;->MODULE$:Lscala/languageFeature$existentials$;

    iput-object v0, p0, Lscala/language$;->existentials:Lscala/languageFeature$existentials;

    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/language$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/language$;->existentials:Lscala/languageFeature$existentials;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private higherKinds$lzycompute()Lscala/languageFeature$higherKinds;
    .locals 1

    .line 134
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/languageFeature$higherKinds$;->MODULE$:Lscala/languageFeature$higherKinds$;

    iput-object v0, p0, Lscala/language$;->higherKinds:Lscala/languageFeature$higherKinds;

    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/language$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/language$;->higherKinds:Lscala/languageFeature$higherKinds;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private implicitConversions$lzycompute()Lscala/languageFeature$implicitConversions;
    .locals 1

    .line 111
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/languageFeature$implicitConversions$;->MODULE$:Lscala/languageFeature$implicitConversions$;

    iput-object v0, p0, Lscala/language$;->implicitConversions:Lscala/languageFeature$implicitConversions;

    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/language$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/language$;->implicitConversions:Lscala/languageFeature$implicitConversions;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private postfixOps$lzycompute()Lscala/languageFeature$postfixOps;
    .locals 1

    .line 66
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/languageFeature$postfixOps$;->MODULE$:Lscala/languageFeature$postfixOps$;

    iput-object v0, p0, Lscala/language$;->postfixOps:Lscala/languageFeature$postfixOps;

    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/language$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/language$;->postfixOps:Lscala/languageFeature$postfixOps;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reflectiveCalls$lzycompute()Lscala/languageFeature$reflectiveCalls;
    .locals 1

    .line 84
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/languageFeature$reflectiveCalls$;->MODULE$:Lscala/languageFeature$reflectiveCalls$;

    iput-object v0, p0, Lscala/language$;->reflectiveCalls:Lscala/languageFeature$reflectiveCalls;

    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/language$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/language$;->reflectiveCalls:Lscala/languageFeature$reflectiveCalls;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dynamics()Lscala/languageFeature$dynamics;
    .locals 1

    .line 55
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/language$;->dynamics$lzycompute()Lscala/languageFeature$dynamics;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/language$;->dynamics:Lscala/languageFeature$dynamics;

    :goto_0
    return-object v0
.end method

.method public existentials()Lscala/languageFeature$existentials;
    .locals 1

    .line 152
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/language$;->existentials$lzycompute()Lscala/languageFeature$existentials;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/language$;->existentials:Lscala/languageFeature$existentials;

    :goto_0
    return-object v0
.end method

.method public higherKinds()Lscala/languageFeature$higherKinds;
    .locals 1

    .line 134
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/language$;->higherKinds$lzycompute()Lscala/languageFeature$higherKinds;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/language$;->higherKinds:Lscala/languageFeature$higherKinds;

    :goto_0
    return-object v0
.end method

.method public implicitConversions()Lscala/languageFeature$implicitConversions;
    .locals 1

    .line 111
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/language$;->implicitConversions$lzycompute()Lscala/languageFeature$implicitConversions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/language$;->implicitConversions:Lscala/languageFeature$implicitConversions;

    :goto_0
    return-object v0
.end method

.method public postfixOps()Lscala/languageFeature$postfixOps;
    .locals 1

    .line 66
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/language$;->postfixOps$lzycompute()Lscala/languageFeature$postfixOps;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/language$;->postfixOps:Lscala/languageFeature$postfixOps;

    :goto_0
    return-object v0
.end method

.method public reflectiveCalls()Lscala/languageFeature$reflectiveCalls;
    .locals 1

    .line 84
    iget-byte v0, p0, Lscala/language$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/language$;->reflectiveCalls$lzycompute()Lscala/languageFeature$reflectiveCalls;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/language$;->reflectiveCalls:Lscala/languageFeature$reflectiveCalls;

    :goto_0
    return-object v0
.end method
