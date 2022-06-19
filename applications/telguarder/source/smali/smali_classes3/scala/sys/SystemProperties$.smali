.class public final Lscala/sys/SystemProperties$;
.super Ljava/lang/Object;
.source "SystemProperties.scala"


# static fields
.field public static final MODULE$:Lscala/sys/SystemProperties$;


# instance fields
.field private volatile bitmap$0:B

.field private headless:Lscala/sys/BooleanProp;

.field private noTraceSupression:Lscala/sys/BooleanProp;

.field private preferIPv4Stack:Lscala/sys/BooleanProp;

.field private preferIPv6Addresses:Lscala/sys/BooleanProp;

.field private propertyHelp:Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/sys/SystemProperties$;

    invoke-direct {v0}, Lscala/sys/SystemProperties$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/sys/SystemProperties$;->MODULE$:Lscala/sys/SystemProperties$;

    return-void
.end method

.method private addHelp(Lscala/sys/Prop;Ljava/lang/String;)Lscala/sys/Prop;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lscala/sys/Prop<",
            "*>;>(TP;",
            "Ljava/lang/String;",
            ")TP;"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lscala/sys/SystemProperties$;->propertyHelp()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-interface {p1}, Lscala/sys/Prop;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lscala/collection/mutable/Map;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private bool(Ljava/lang/String;Ljava/lang/String;)Lscala/sys/BooleanProp;
    .locals 1

    const-string v0, "java."

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/sys/BooleanProp$;->MODULE$:Lscala/sys/BooleanProp$;

    invoke-virtual {v0, p1}, Lscala/sys/BooleanProp$;->valueIsTrue(Ljava/lang/String;)Lscala/sys/BooleanProp;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/sys/BooleanProp$;->MODULE$:Lscala/sys/BooleanProp$;

    invoke-virtual {v0, p1}, Lscala/sys/BooleanProp$;->keyExists(Ljava/lang/String;)Lscala/sys/BooleanProp;

    move-result-object p1

    .line 70
    :goto_0
    invoke-direct {p0, p1, p2}, Lscala/sys/SystemProperties$;->addHelp(Lscala/sys/Prop;Ljava/lang/String;)Lscala/sys/Prop;

    move-result-object p1

    check-cast p1, Lscala/sys/BooleanProp;

    return-object p1
.end method

.method private headless$lzycompute()Lscala/sys/BooleanProp;
    .locals 2

    .line 79
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const-string v0, "java.awt.headless"

    const-string v1, "system should not utilize a display device"

    invoke-direct {p0, v0, v1}, Lscala/sys/SystemProperties$;->bool(Ljava/lang/String;Ljava/lang/String;)Lscala/sys/BooleanProp;

    move-result-object v0

    iput-object v0, p0, Lscala/sys/SystemProperties$;->headless:Lscala/sys/BooleanProp;

    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/SystemProperties$;->headless:Lscala/sys/BooleanProp;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private noTraceSupression$lzycompute()Lscala/sys/BooleanProp;
    .locals 2

    .line 82
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const-string v0, "scala.control.noTraceSuppression"

    const-string v1, "scala should not suppress any stack trace creation"

    invoke-direct {p0, v0, v1}, Lscala/sys/SystemProperties$;->bool(Ljava/lang/String;Ljava/lang/String;)Lscala/sys/BooleanProp;

    move-result-object v0

    iput-object v0, p0, Lscala/sys/SystemProperties$;->noTraceSupression:Lscala/sys/BooleanProp;

    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/SystemProperties$;->noTraceSupression:Lscala/sys/BooleanProp;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private preferIPv4Stack$lzycompute()Lscala/sys/BooleanProp;
    .locals 2

    .line 80
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "system should prefer IPv4 sockets"

    invoke-direct {p0, v0, v1}, Lscala/sys/SystemProperties$;->bool(Ljava/lang/String;Ljava/lang/String;)Lscala/sys/BooleanProp;

    move-result-object v0

    iput-object v0, p0, Lscala/sys/SystemProperties$;->preferIPv4Stack:Lscala/sys/BooleanProp;

    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/SystemProperties$;->preferIPv4Stack:Lscala/sys/BooleanProp;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private preferIPv6Addresses$lzycompute()Lscala/sys/BooleanProp;
    .locals 2

    .line 81
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "system should prefer IPv6 addresses"

    invoke-direct {p0, v0, v1}, Lscala/sys/SystemProperties$;->bool(Ljava/lang/String;Ljava/lang/String;)Lscala/sys/BooleanProp;

    move-result-object v0

    iput-object v0, p0, Lscala/sys/SystemProperties$;->preferIPv6Addresses:Lscala/sys/BooleanProp;

    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/SystemProperties$;->preferIPv6Addresses:Lscala/sys/BooleanProp;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private propertyHelp()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/SystemProperties$;->propertyHelp$lzycompute()Lscala/collection/mutable/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/sys/SystemProperties$;->propertyHelp:Lscala/collection/mutable/Map;

    :goto_0
    return-object v0
.end method

.method private propertyHelp$lzycompute()Lscala/collection/mutable/Map;
    .locals 2

    .line 65
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    sget-object v0, Lscala/collection/mutable/Map$;->MODULE$:Lscala/collection/mutable/Map$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/Map$;->apply(Lscala/collection/Seq;)Lscala/collection/GenMap;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Map;

    iput-object v0, p0, Lscala/sys/SystemProperties$;->propertyHelp:Lscala/collection/mutable/Map;

    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/SystemProperties$;->propertyHelp:Lscala/collection/mutable/Map;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized exclusively(Lscala/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public headless()Lscala/sys/BooleanProp;
    .locals 1

    .line 79
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/SystemProperties$;->headless$lzycompute()Lscala/sys/BooleanProp;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/sys/SystemProperties$;->headless:Lscala/sys/BooleanProp;

    :goto_0
    return-object v0
.end method

.method public help(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 74
    invoke-direct {p0}, Lscala/sys/SystemProperties$;->propertyHelp()Lscala/collection/mutable/Map;

    move-result-object v0

    new-instance v1, Lscala/sys/SystemProperties$$anonfun$help$1;

    invoke-direct {v1}, Lscala/sys/SystemProperties$$anonfun$help$1;-><init>()V

    invoke-interface {v0, p1, v1}, Lscala/collection/mutable/Map;->getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public noTraceSupression()Lscala/sys/BooleanProp;
    .locals 1

    .line 82
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/SystemProperties$;->noTraceSupression$lzycompute()Lscala/sys/BooleanProp;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/sys/SystemProperties$;->noTraceSupression:Lscala/sys/BooleanProp;

    :goto_0
    return-object v0
.end method

.method public preferIPv4Stack()Lscala/sys/BooleanProp;
    .locals 1

    .line 80
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/SystemProperties$;->preferIPv4Stack$lzycompute()Lscala/sys/BooleanProp;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/sys/SystemProperties$;->preferIPv4Stack:Lscala/sys/BooleanProp;

    :goto_0
    return-object v0
.end method

.method public preferIPv6Addresses()Lscala/sys/BooleanProp;
    .locals 1

    .line 81
    iget-byte v0, p0, Lscala/sys/SystemProperties$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/SystemProperties$;->preferIPv6Addresses$lzycompute()Lscala/sys/BooleanProp;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/sys/SystemProperties$;->preferIPv6Addresses:Lscala/sys/BooleanProp;

    :goto_0
    return-object v0
.end method

.method public systemPropertiesToCompanion(Lscala/sys/SystemProperties;)Lscala/sys/SystemProperties$;
    .locals 0

    return-object p0
.end method
