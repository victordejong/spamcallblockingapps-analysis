.class public abstract Lscala/UniquenessCache;
.super Ljava/lang/Object;
.source "Symbol.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u000154a!\u0001\u0002\u0002\u0002\t!!aD+oSF,XM\\3tg\u000e\u000b7\r[3\u000b\u0003\r\tQa]2bY\u0006,2!B\t\u001c\'\t\u0001a\u0001\u0005\u0002\u0008\u00115\t!!\u0003\u0002\n\u0005\t1\u0011I\\=SK\u001aDQa\u0003\u0001\u0005\u00025\ta\u0001P5oSRt4\u0001\u0001\u000b\u0002\u001dA!q\u0001A\u0008\u001b!\t\u0001\u0012\u0003\u0004\u0001\u0005\u000bI\u0001!\u0019A\n\u0003\u0003-\u000b\"\u0001F\u000c\u0011\u0005\u001d)\u0012B\u0001\u000c\u0003\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"a\u0002\r\n\u0005e\u0011!aA!osB\u0011\u0001c\u0007\u0003\u00069\u0001\u0011\r!\u0008\u0002\u0002-F\u0011ad\u0006\t\u0003\u000f}I!\u0001\t\u0002\u0003\t9+H\u000e\u001c\u0005\u0008E\u0001\u0011\r\u0011\"\u0003$\u0003\r\u0011x\u000f\\\u000b\u0002IA\u0011QEL\u0007\u0002M)\u0011q\u0005K\u0001\u0006Y>\u001c7n\u001d\u0006\u0003S)\n!bY8oGV\u0014(/\u001a8u\u0015\tYC&\u0001\u0003vi&d\'\"A\u0017\u0002\t)\u000cg/Y\u0005\u0003_\u0019\u0012aCU3f]R\u0014\u0018M\u001c;SK\u0006$wK]5uK2{7m\u001b\u0005\u0007c\u0001\u0001\u000b\u0011\u0002\u0013\u0002\tI<H\u000e\t\u0005\u0008g\u0001\u0011\r\u0011\"\u00035\u0003\u0015\u0011Hn\\2l+\u0005)\u0004C\u0001\u001c:\u001b\u00059$B\u0001\u001d\'\u0003Y\u0011V-\u001a8ue\u0006tGOU3bI^\u0013\u0018\u000e^3M_\u000e\\\u0017B\u0001\u001e8\u0005!\u0011V-\u00193M_\u000e\\\u0007B\u0002\u001f\u0001A\u0003%Q\'\u0001\u0004sY>\u001c7\u000e\t\u0005\u0008}\u0001\u0011\r\u0011\"\u0003@\u0003\u00159Hn\\2l+\u0005\u0001\u0005C\u0001\u001cB\u0013\t\u0011uGA\u0005Xe&$X\rT8dW\"1A\t\u0001Q\u0001\n\u0001\u000baa\u001e7pG.\u0004\u0003b\u0002$\u0001\u0005\u0004%IaR\u0001\u0004[\u0006\u0004X#\u0001%\u0011\t%Su\u0002T\u0007\u0002U%\u00111J\u000b\u0002\u000c/\u0016\u000c7\u000eS1tQ6\u000b\u0007\u000fE\u0002N%ji\u0011A\u0014\u0006\u0003\u001fB\u000b1A]3g\u0015\t\tF&\u0001\u0003mC:<\u0017BA*O\u000559V-Y6SK\u001a,\'/\u001a8dK\"1Q\u000b\u0001Q\u0001\n!\u000bA!\\1qA!)q\u000b\u0001D\t1\u0006aa/\u00197vK\u001a\u0013x.\\&fsR\u0011!$\u0017\u0005\u00065Z\u0003\raD\u0001\u0002W\")A\u000c\u0001D\t;\u0006a1.Z=Ge>lg+\u00197vKR\u0011a,\u0019\t\u0004\u000f}{\u0011B\u00011\u0003\u0005\u0019y\u0005\u000f^5p]\")!m\u0017a\u00015\u0005\ta\u000fC\u0003e\u0001\u0011\u0005Q-A\u0003baBd\u0017\u0010\u0006\u0002\u001bM\")qm\u0019a\u0001\u001f\u0005!a.Y7f\u0011\u0015I\u0007\u0001\"\u0001k\u0003\u001d)h.\u00199qYf$\"AX6\t\u000b1D\u0007\u0019\u0001\u000e\u0002\u000b=$\u0008.\u001a:"
.end annotation


# instance fields
.field private final map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "TK;",
            "Ljava/lang/ref/WeakReference<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lscala/UniquenessCache;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 49
    invoke-direct {p0}, Lscala/UniquenessCache;->rwl()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lscala/UniquenessCache;->rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 50
    invoke-direct {p0}, Lscala/UniquenessCache;->rwl()Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lscala/UniquenessCache;->wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lscala/UniquenessCache;->map:Ljava/util/WeakHashMap;

    return-void
.end method

.method private final cached$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-direct {p0}, Lscala/UniquenessCache;->rlock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 60
    :try_start_0
    invoke-direct {p0}, Lscala/UniquenessCache;->map()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    invoke-direct {p0}, Lscala/UniquenessCache;->rlock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lscala/UniquenessCache;->rlock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method private map()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap<",
            "TK;",
            "Ljava/lang/ref/WeakReference<",
            "TV;>;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lscala/UniquenessCache;->map:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method private rlock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .locals 1

    .line 49
    iget-object v0, p0, Lscala/UniquenessCache;->rlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object v0
.end method

.method private rwl()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .line 48
    iget-object v0, p0, Lscala/UniquenessCache;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method private final updateCache$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 67
    invoke-direct {p0}, Lscala/UniquenessCache;->wlock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 69
    :try_start_0
    invoke-direct {p0, p1}, Lscala/UniquenessCache;->cached$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lscala/UniquenessCache;->map()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0, p1}, Lscala/UniquenessCache;->valueFromKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    invoke-direct {p0}, Lscala/UniquenessCache;->map()Ljava/util/WeakHashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    invoke-direct {p0}, Lscala/UniquenessCache;->wlock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lscala/UniquenessCache;->wlock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method private wlock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 1

    .line 50
    iget-object v0, p0, Lscala/UniquenessCache;->wlock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Lscala/UniquenessCache;->cached$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0, p1}, Lscala/UniquenessCache;->updateCache$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract keyFromValue(Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lscala/Option<",
            "TK;>;"
        }
    .end annotation
.end method

.method public unapply(Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lscala/Option<",
            "TK;>;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lscala/UniquenessCache;->keyFromValue(Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public abstract valueFromKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method
