.class public final Lscala/collection/convert/Wrappers$;
.super Ljava/lang/Object;
.source "Wrappers.scala"

# interfaces
.implements Lscala/collection/convert/Wrappers;
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/convert/Wrappers$; = null

.field public static final serialVersionUID:J = -0x514b4c75d325437fL


# instance fields
.field private volatile DictionaryWrapper$module:Lscala/collection/convert/Wrappers$DictionaryWrapper$;

.field private volatile IterableWrapper$module:Lscala/collection/convert/Wrappers$IterableWrapper$;

.field private volatile IteratorWrapper$module:Lscala/collection/convert/Wrappers$IteratorWrapper$;

.field private volatile JCollectionWrapper$module:Lscala/collection/convert/Wrappers$JCollectionWrapper$;

.field private volatile JConcurrentMapWrapper$module:Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;

.field private volatile JDictionaryWrapper$module:Lscala/collection/convert/Wrappers$JDictionaryWrapper$;

.field private volatile JEnumerationWrapper$module:Lscala/collection/convert/Wrappers$JEnumerationWrapper$;

.field private volatile JIterableWrapper$module:Lscala/collection/convert/Wrappers$JIterableWrapper$;

.field private volatile JIteratorWrapper$module:Lscala/collection/convert/Wrappers$JIteratorWrapper$;

.field private volatile JListWrapper$module:Lscala/collection/convert/Wrappers$JListWrapper$;

.field private volatile JMapWrapper$module:Lscala/collection/convert/Wrappers$JMapWrapper$;

.field private volatile JPropertiesWrapper$module:Lscala/collection/convert/Wrappers$JPropertiesWrapper$;

.field private volatile JSetWrapper$module:Lscala/collection/convert/Wrappers$JSetWrapper$;

.field private volatile MutableBufferWrapper$module:Lscala/collection/convert/Wrappers$MutableBufferWrapper$;

.field private volatile MutableMapWrapper$module:Lscala/collection/convert/Wrappers$MutableMapWrapper$;

.field private volatile MutableSeqWrapper$module:Lscala/collection/convert/Wrappers$MutableSeqWrapper$;

.field private volatile MutableSetWrapper$module:Lscala/collection/convert/Wrappers$MutableSetWrapper$;

.field private volatile SeqWrapper$module:Lscala/collection/convert/Wrappers$SeqWrapper$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/convert/Wrappers$;

    invoke-direct {v0}, Lscala/collection/convert/Wrappers$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    invoke-static {p0}, Lscala/collection/convert/Wrappers$class;->$init$(Lscala/collection/convert/Wrappers;)V

    return-void
.end method

.method private DictionaryWrapper$lzycompute()Lscala/collection/convert/Wrappers$DictionaryWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->DictionaryWrapper$module:Lscala/collection/convert/Wrappers$DictionaryWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$DictionaryWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$DictionaryWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->DictionaryWrapper$module:Lscala/collection/convert/Wrappers$DictionaryWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->DictionaryWrapper$module:Lscala/collection/convert/Wrappers$DictionaryWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private IterableWrapper$lzycompute()Lscala/collection/convert/Wrappers$IterableWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->IterableWrapper$module:Lscala/collection/convert/Wrappers$IterableWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$IterableWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$IterableWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->IterableWrapper$module:Lscala/collection/convert/Wrappers$IterableWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->IterableWrapper$module:Lscala/collection/convert/Wrappers$IterableWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private IteratorWrapper$lzycompute()Lscala/collection/convert/Wrappers$IteratorWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->IteratorWrapper$module:Lscala/collection/convert/Wrappers$IteratorWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$IteratorWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$IteratorWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->IteratorWrapper$module:Lscala/collection/convert/Wrappers$IteratorWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->IteratorWrapper$module:Lscala/collection/convert/Wrappers$IteratorWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private JCollectionWrapper$lzycompute()Lscala/collection/convert/Wrappers$JCollectionWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JCollectionWrapper$module:Lscala/collection/convert/Wrappers$JCollectionWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$JCollectionWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JCollectionWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->JCollectionWrapper$module:Lscala/collection/convert/Wrappers$JCollectionWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JCollectionWrapper$module:Lscala/collection/convert/Wrappers$JCollectionWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private JConcurrentMapWrapper$lzycompute()Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JConcurrentMapWrapper$module:Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->JConcurrentMapWrapper$module:Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JConcurrentMapWrapper$module:Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private JDictionaryWrapper$lzycompute()Lscala/collection/convert/Wrappers$JDictionaryWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JDictionaryWrapper$module:Lscala/collection/convert/Wrappers$JDictionaryWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$JDictionaryWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JDictionaryWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->JDictionaryWrapper$module:Lscala/collection/convert/Wrappers$JDictionaryWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JDictionaryWrapper$module:Lscala/collection/convert/Wrappers$JDictionaryWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private JEnumerationWrapper$lzycompute()Lscala/collection/convert/Wrappers$JEnumerationWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JEnumerationWrapper$module:Lscala/collection/convert/Wrappers$JEnumerationWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$JEnumerationWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JEnumerationWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->JEnumerationWrapper$module:Lscala/collection/convert/Wrappers$JEnumerationWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JEnumerationWrapper$module:Lscala/collection/convert/Wrappers$JEnumerationWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private JIterableWrapper$lzycompute()Lscala/collection/convert/Wrappers$JIterableWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JIterableWrapper$module:Lscala/collection/convert/Wrappers$JIterableWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$JIterableWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JIterableWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->JIterableWrapper$module:Lscala/collection/convert/Wrappers$JIterableWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JIterableWrapper$module:Lscala/collection/convert/Wrappers$JIterableWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private JIteratorWrapper$lzycompute()Lscala/collection/convert/Wrappers$JIteratorWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JIteratorWrapper$module:Lscala/collection/convert/Wrappers$JIteratorWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$JIteratorWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JIteratorWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->JIteratorWrapper$module:Lscala/collection/convert/Wrappers$JIteratorWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JIteratorWrapper$module:Lscala/collection/convert/Wrappers$JIteratorWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private JListWrapper$lzycompute()Lscala/collection/convert/Wrappers$JListWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JListWrapper$module:Lscala/collection/convert/Wrappers$JListWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$JListWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JListWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->JListWrapper$module:Lscala/collection/convert/Wrappers$JListWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JListWrapper$module:Lscala/collection/convert/Wrappers$JListWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private JMapWrapper$lzycompute()Lscala/collection/convert/Wrappers$JMapWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JMapWrapper$module:Lscala/collection/convert/Wrappers$JMapWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$JMapWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JMapWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->JMapWrapper$module:Lscala/collection/convert/Wrappers$JMapWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JMapWrapper$module:Lscala/collection/convert/Wrappers$JMapWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private JPropertiesWrapper$lzycompute()Lscala/collection/convert/Wrappers$JPropertiesWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JPropertiesWrapper$module:Lscala/collection/convert/Wrappers$JPropertiesWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$JPropertiesWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->JPropertiesWrapper$module:Lscala/collection/convert/Wrappers$JPropertiesWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JPropertiesWrapper$module:Lscala/collection/convert/Wrappers$JPropertiesWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private JSetWrapper$lzycompute()Lscala/collection/convert/Wrappers$JSetWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JSetWrapper$module:Lscala/collection/convert/Wrappers$JSetWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$JSetWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JSetWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->JSetWrapper$module:Lscala/collection/convert/Wrappers$JSetWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JSetWrapper$module:Lscala/collection/convert/Wrappers$JSetWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private MutableBufferWrapper$lzycompute()Lscala/collection/convert/Wrappers$MutableBufferWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableBufferWrapper$module:Lscala/collection/convert/Wrappers$MutableBufferWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$MutableBufferWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$MutableBufferWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableBufferWrapper$module:Lscala/collection/convert/Wrappers$MutableBufferWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableBufferWrapper$module:Lscala/collection/convert/Wrappers$MutableBufferWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private MutableMapWrapper$lzycompute()Lscala/collection/convert/Wrappers$MutableMapWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableMapWrapper$module:Lscala/collection/convert/Wrappers$MutableMapWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$MutableMapWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$MutableMapWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableMapWrapper$module:Lscala/collection/convert/Wrappers$MutableMapWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableMapWrapper$module:Lscala/collection/convert/Wrappers$MutableMapWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private MutableSeqWrapper$lzycompute()Lscala/collection/convert/Wrappers$MutableSeqWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableSeqWrapper$module:Lscala/collection/convert/Wrappers$MutableSeqWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$MutableSeqWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$MutableSeqWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableSeqWrapper$module:Lscala/collection/convert/Wrappers$MutableSeqWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableSeqWrapper$module:Lscala/collection/convert/Wrappers$MutableSeqWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private MutableSetWrapper$lzycompute()Lscala/collection/convert/Wrappers$MutableSetWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableSetWrapper$module:Lscala/collection/convert/Wrappers$MutableSetWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$MutableSetWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$MutableSetWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableSetWrapper$module:Lscala/collection/convert/Wrappers$MutableSetWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableSetWrapper$module:Lscala/collection/convert/Wrappers$MutableSetWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private SeqWrapper$lzycompute()Lscala/collection/convert/Wrappers$SeqWrapper$;
    .locals 1

    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->SeqWrapper$module:Lscala/collection/convert/Wrappers$SeqWrapper$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/convert/Wrappers$SeqWrapper$;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$SeqWrapper$;-><init>(Lscala/collection/convert/Wrappers;)V

    iput-object v0, p0, Lscala/collection/convert/Wrappers$;->SeqWrapper$module:Lscala/collection/convert/Wrappers$SeqWrapper$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->SeqWrapper$module:Lscala/collection/convert/Wrappers$SeqWrapper$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 458
    sget-object v0, Lscala/collection/convert/Wrappers$;->MODULE$:Lscala/collection/convert/Wrappers$;

    return-object v0
.end method


# virtual methods
.method public DictionaryWrapper()Lscala/collection/convert/Wrappers$DictionaryWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->DictionaryWrapper$module:Lscala/collection/convert/Wrappers$DictionaryWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->DictionaryWrapper$lzycompute()Lscala/collection/convert/Wrappers$DictionaryWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->DictionaryWrapper$module:Lscala/collection/convert/Wrappers$DictionaryWrapper$;

    :goto_0
    return-object v0
.end method

.method public IterableWrapper()Lscala/collection/convert/Wrappers$IterableWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->IterableWrapper$module:Lscala/collection/convert/Wrappers$IterableWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->IterableWrapper$lzycompute()Lscala/collection/convert/Wrappers$IterableWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->IterableWrapper$module:Lscala/collection/convert/Wrappers$IterableWrapper$;

    :goto_0
    return-object v0
.end method

.method public IteratorWrapper()Lscala/collection/convert/Wrappers$IteratorWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->IteratorWrapper$module:Lscala/collection/convert/Wrappers$IteratorWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->IteratorWrapper$lzycompute()Lscala/collection/convert/Wrappers$IteratorWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->IteratorWrapper$module:Lscala/collection/convert/Wrappers$IteratorWrapper$;

    :goto_0
    return-object v0
.end method

.method public JCollectionWrapper()Lscala/collection/convert/Wrappers$JCollectionWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JCollectionWrapper$module:Lscala/collection/convert/Wrappers$JCollectionWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->JCollectionWrapper$lzycompute()Lscala/collection/convert/Wrappers$JCollectionWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JCollectionWrapper$module:Lscala/collection/convert/Wrappers$JCollectionWrapper$;

    :goto_0
    return-object v0
.end method

.method public JConcurrentMapWrapper()Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JConcurrentMapWrapper$module:Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->JConcurrentMapWrapper$lzycompute()Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JConcurrentMapWrapper$module:Lscala/collection/convert/Wrappers$JConcurrentMapWrapper$;

    :goto_0
    return-object v0
.end method

.method public JDictionaryWrapper()Lscala/collection/convert/Wrappers$JDictionaryWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JDictionaryWrapper$module:Lscala/collection/convert/Wrappers$JDictionaryWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->JDictionaryWrapper$lzycompute()Lscala/collection/convert/Wrappers$JDictionaryWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JDictionaryWrapper$module:Lscala/collection/convert/Wrappers$JDictionaryWrapper$;

    :goto_0
    return-object v0
.end method

.method public JEnumerationWrapper()Lscala/collection/convert/Wrappers$JEnumerationWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JEnumerationWrapper$module:Lscala/collection/convert/Wrappers$JEnumerationWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->JEnumerationWrapper$lzycompute()Lscala/collection/convert/Wrappers$JEnumerationWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JEnumerationWrapper$module:Lscala/collection/convert/Wrappers$JEnumerationWrapper$;

    :goto_0
    return-object v0
.end method

.method public JIterableWrapper()Lscala/collection/convert/Wrappers$JIterableWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JIterableWrapper$module:Lscala/collection/convert/Wrappers$JIterableWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->JIterableWrapper$lzycompute()Lscala/collection/convert/Wrappers$JIterableWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JIterableWrapper$module:Lscala/collection/convert/Wrappers$JIterableWrapper$;

    :goto_0
    return-object v0
.end method

.method public JIteratorWrapper()Lscala/collection/convert/Wrappers$JIteratorWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JIteratorWrapper$module:Lscala/collection/convert/Wrappers$JIteratorWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->JIteratorWrapper$lzycompute()Lscala/collection/convert/Wrappers$JIteratorWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JIteratorWrapper$module:Lscala/collection/convert/Wrappers$JIteratorWrapper$;

    :goto_0
    return-object v0
.end method

.method public JListWrapper()Lscala/collection/convert/Wrappers$JListWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JListWrapper$module:Lscala/collection/convert/Wrappers$JListWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->JListWrapper$lzycompute()Lscala/collection/convert/Wrappers$JListWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JListWrapper$module:Lscala/collection/convert/Wrappers$JListWrapper$;

    :goto_0
    return-object v0
.end method

.method public JMapWrapper()Lscala/collection/convert/Wrappers$JMapWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JMapWrapper$module:Lscala/collection/convert/Wrappers$JMapWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->JMapWrapper$lzycompute()Lscala/collection/convert/Wrappers$JMapWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JMapWrapper$module:Lscala/collection/convert/Wrappers$JMapWrapper$;

    :goto_0
    return-object v0
.end method

.method public JPropertiesWrapper()Lscala/collection/convert/Wrappers$JPropertiesWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JPropertiesWrapper$module:Lscala/collection/convert/Wrappers$JPropertiesWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->JPropertiesWrapper$lzycompute()Lscala/collection/convert/Wrappers$JPropertiesWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JPropertiesWrapper$module:Lscala/collection/convert/Wrappers$JPropertiesWrapper$;

    :goto_0
    return-object v0
.end method

.method public JSetWrapper()Lscala/collection/convert/Wrappers$JSetWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JSetWrapper$module:Lscala/collection/convert/Wrappers$JSetWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->JSetWrapper$lzycompute()Lscala/collection/convert/Wrappers$JSetWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->JSetWrapper$module:Lscala/collection/convert/Wrappers$JSetWrapper$;

    :goto_0
    return-object v0
.end method

.method public MutableBufferWrapper()Lscala/collection/convert/Wrappers$MutableBufferWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableBufferWrapper$module:Lscala/collection/convert/Wrappers$MutableBufferWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->MutableBufferWrapper$lzycompute()Lscala/collection/convert/Wrappers$MutableBufferWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableBufferWrapper$module:Lscala/collection/convert/Wrappers$MutableBufferWrapper$;

    :goto_0
    return-object v0
.end method

.method public MutableMapWrapper()Lscala/collection/convert/Wrappers$MutableMapWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableMapWrapper$module:Lscala/collection/convert/Wrappers$MutableMapWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->MutableMapWrapper$lzycompute()Lscala/collection/convert/Wrappers$MutableMapWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableMapWrapper$module:Lscala/collection/convert/Wrappers$MutableMapWrapper$;

    :goto_0
    return-object v0
.end method

.method public MutableSeqWrapper()Lscala/collection/convert/Wrappers$MutableSeqWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableSeqWrapper$module:Lscala/collection/convert/Wrappers$MutableSeqWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->MutableSeqWrapper$lzycompute()Lscala/collection/convert/Wrappers$MutableSeqWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableSeqWrapper$module:Lscala/collection/convert/Wrappers$MutableSeqWrapper$;

    :goto_0
    return-object v0
.end method

.method public MutableSetWrapper()Lscala/collection/convert/Wrappers$MutableSetWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableSetWrapper$module:Lscala/collection/convert/Wrappers$MutableSetWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->MutableSetWrapper$lzycompute()Lscala/collection/convert/Wrappers$MutableSetWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->MutableSetWrapper$module:Lscala/collection/convert/Wrappers$MutableSetWrapper$;

    :goto_0
    return-object v0
.end method

.method public SeqWrapper()Lscala/collection/convert/Wrappers$SeqWrapper$;
    .locals 1

    .line 458
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->SeqWrapper$module:Lscala/collection/convert/Wrappers$SeqWrapper$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/convert/Wrappers$;->SeqWrapper$lzycompute()Lscala/collection/convert/Wrappers$SeqWrapper$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/convert/Wrappers$;->SeqWrapper$module:Lscala/collection/convert/Wrappers$SeqWrapper$;

    :goto_0
    return-object v0
.end method
