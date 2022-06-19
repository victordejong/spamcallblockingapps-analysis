.class abstract Lscala/concurrent/impl/AbstractPromise;
.super Ljava/lang/Object;
.source "AbstractPromise.java"


# static fields
.field static final _refoffset:J

.field protected static final updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lscala/concurrent/impl/AbstractPromise;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile _ref:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "_ref"

    .line 24
    const-class v1, Lscala/concurrent/impl/AbstractPromise;

    :try_start_0
    sget-object v2, Lscala/concurrent/util/Unsafe;->instance:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lscala/concurrent/impl/AbstractPromise;->_refoffset:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lscala/concurrent/impl/AbstractPromise;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void

    :catchall_0
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getState()Ljava/lang/Object;
    .locals 1

    .line 35
    iget-object v0, p0, Lscala/concurrent/impl/AbstractPromise;->_ref:Ljava/lang/Object;

    return-object v0
.end method

.method protected final updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 31
    sget-object v0, Lscala/concurrent/util/Unsafe;->instance:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/impl/AbstractPromise;->_refoffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
