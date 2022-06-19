.class public final Lscala/collection/immutable/Stream$Cons;
.super Lscala/collection/immutable/Stream;
.source "Stream.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cons"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/Stream<",
        "TA;>;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x85b73ea3322c6bbL


# instance fields
.field private final hd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private volatile tlGen:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;"
        }
    .end annotation
.end field

.field private volatile tlVal:Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lscala/Function0<",
            "Lscala/collection/immutable/Stream<",
            "TA;>;>;)V"
        }
    .end annotation

    .line 1223
    iput-object p1, p0, Lscala/collection/immutable/Stream$Cons;->hd:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/collection/immutable/Stream;-><init>()V

    .line 1227
    iput-object p2, p0, Lscala/collection/immutable/Stream$Cons;->tlGen:Lscala/Function0;

    return-void
.end method


# virtual methods
.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Lscala/collection/immutable/Stream$Cons;->hd:Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 1223
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$Cons;->tail()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tail()Lscala/collection/LinearSeqOptimized;
    .locals 1

    .line 1223
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$Cons;->tail()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TA;>;"
        }
    .end annotation

    .line 1230
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$Cons;->tailDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 1231
    :cond_0
    monitor-enter p0

    .line 1232
    :try_start_0
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$Cons;->tailDefined()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 1233
    :cond_1
    iget-object v0, p0, Lscala/collection/immutable/Stream$Cons;->tlGen:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    iput-object v0, p0, Lscala/collection/immutable/Stream$Cons;->tlVal:Lscala/collection/immutable/Stream;

    const/4 v0, 0x0

    .line 1234
    iput-object v0, p0, Lscala/collection/immutable/Stream$Cons;->tlGen:Lscala/Function0;

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 1231
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    :goto_1
    iget-object v0, p0, Lscala/collection/immutable/Stream$Cons;->tlVal:Lscala/collection/immutable/Stream;

    return-object v0

    :catchall_0
    move-exception v0

    .line 1231
    monitor-exit p0

    throw v0
.end method

.method public tailDefined()Z
    .locals 1

    .line 1228
    iget-object v0, p0, Lscala/collection/immutable/Stream$Cons;->tlGen:Lscala/Function0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
