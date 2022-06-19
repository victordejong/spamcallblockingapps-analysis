.class public Landroidx/lifecycle/LifecycleRegistry;
.super Landroidx/lifecycle/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LifecycleRegistry$a;
    }
.end annotation


# instance fields
.field private mAddingObserverCounter:I

.field private final mEnforceMainThread:Z

.field private mHandlingEvent:Z

.field private final mLifecycleOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/p;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEventOccurred:Z

.field private mObserverMap:Landroidx/a/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/a<",
            "Landroidx/lifecycle/o;",
            "Landroidx/lifecycle/LifecycleRegistry$a;",
            ">;"
        }
    .end annotation
.end field

.field private mParentStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Landroidx/lifecycle/j$b;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/p;)V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/p;Z)V

    return-void
.end method

.method private constructor <init>(Landroidx/lifecycle/p;Z)V
    .locals 1

    .line 94
    invoke-direct {p0}, Landroidx/lifecycle/j;-><init>()V

    .line 51
    new-instance v0, Landroidx/a/a/b/a;

    invoke-direct {v0}, Landroidx/a/a/b/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 68
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 69
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    .line 96
    sget-object p1, Landroidx/lifecycle/j$b;->INITIALIZED:Landroidx/lifecycle/j$b;

    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/j$b;

    .line 97
    iput-boolean p2, p0, Landroidx/lifecycle/LifecycleRegistry;->mEnforceMainThread:Z

    return-void
.end method

.method private backwardPass(Landroidx/lifecycle/p;)V
    .locals 5

    .line 272
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 2150
    new-instance v1, Landroidx/a/a/b/b$b;

    iget-object v2, v0, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    iget-object v3, v0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    invoke-direct {v1, v2, v3}, Landroidx/a/a/b/b$b;-><init>(Landroidx/a/a/b/b$c;Landroidx/a/a/b/b$c;)V

    .line 2151
    iget-object v0, v0, Landroidx/a/a/b/b;->d:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v0, :cond_2

    .line 275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry$a;

    .line 277
    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/j$b;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/j$b;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, v2, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-static {v3}, Landroidx/lifecycle/j$a;->downFrom(Landroidx/lifecycle/j$b;)Landroidx/lifecycle/j$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 283
    invoke-virtual {v3}, Landroidx/lifecycle/j$a;->getTargetState()Landroidx/lifecycle/j$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/j$b;)V

    .line 284
    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/LifecycleRegistry$a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/j$a;)V

    .line 285
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_0

    .line 281
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no event down from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private calculateTargetState(Landroidx/lifecycle/o;)Landroidx/lifecycle/j$b;
    .locals 3

    .line 162
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 2075
    invoke-virtual {v0, p1}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2076
    iget-object v0, v0, Landroidx/a/a/b/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/a/a/b/b$c;

    iget-object p1, p1, Landroidx/a/a/b/b$c;->d:Landroidx/a/a/b/b$c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 164
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LifecycleRegistry$a;

    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    goto :goto_1

    :cond_1
    move-object p1, v2

    .line 165
    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/j$b;

    .line 167
    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/j$b;

    invoke-static {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/j$b;Landroidx/lifecycle/j$b;)Landroidx/lifecycle/j$b;

    move-result-object p1

    invoke-static {p1, v2}, Landroidx/lifecycle/LifecycleRegistry;->min(Landroidx/lifecycle/j$b;Landroidx/lifecycle/j$b;)Landroidx/lifecycle/j$b;

    move-result-object p1

    return-object p1
.end method

.method public static createUnsafe(Landroidx/lifecycle/p;)Landroidx/lifecycle/LifecycleRegistry;
    .locals 2

    .line 335
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/p;Z)V

    return-object v0
.end method

.method private enforceMainThreadIfNeeded(Ljava/lang/String;)V
    .locals 3

    .line 315
    iget-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mEnforceMainThread:Z

    if-eqz v0, :cond_1

    .line 316
    invoke-static {}, Landroidx/a/a/a/a;->a()Landroidx/a/a/a/a;

    move-result-object v0

    .line 3116
    iget-object v0, v0, Landroidx/a/a/a/a;->a:Landroidx/a/a/a/c;

    invoke-virtual {v0}, Landroidx/a/a/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be called on the main thread"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private forwardPass(Landroidx/lifecycle/p;)V
    .locals 5

    .line 253
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 254
    invoke-virtual {v0}, Landroidx/a/a/b/a;->a()Landroidx/a/a/b/b$d;

    move-result-object v0

    .line 255
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v1, :cond_2

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry$a;

    .line 258
    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/j$b;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/j$b;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 259
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, v2, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-direct {p0, v3}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/j$b;)V

    .line 261
    iget-object v3, v2, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-static {v3}, Landroidx/lifecycle/j$a;->upFrom(Landroidx/lifecycle/j$b;)Landroidx/lifecycle/j$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 265
    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/LifecycleRegistry$a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/j$a;)V

    .line 266
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    goto :goto_0

    .line 263
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no event up from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private isSynced()Z
    .locals 3

    .line 153
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 1130
    iget v0, v0, Landroidx/a/a/b/b;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 156
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 1169
    iget-object v0, v0, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry$a;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    .line 157
    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 1176
    iget-object v2, v2, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry$a;

    iget-object v2, v2, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    if-ne v0, v2, :cond_1

    .line 158
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/j$b;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static min(Landroidx/lifecycle/j$b;Landroidx/lifecycle/j$b;)Landroidx/lifecycle/j$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p1, p0}, Landroidx/lifecycle/j$b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method private moveToState(Landroidx/lifecycle/j$b;)V
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/j$b;

    if-ne v0, p1, :cond_0

    return-void

    .line 141
    :cond_0
    iput-object p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/j$b;

    .line 142
    iget-boolean p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    .line 148
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    const/4 p1, 0x0

    .line 149
    iput-boolean p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    return-void

    .line 143
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void
.end method

.method private popParentState()V
    .locals 2

    .line 210
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private pushParentState(Landroidx/lifecycle/j$b;)V
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mParentStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private sync()V
    .locals 3

    .line 293
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/p;

    if-eqz v0, :cond_3

    .line 298
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->isSynced()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 299
    iput-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    .line 301
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/j$b;

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 2169
    iget-object v2, v2, Landroidx/a/a/b/b;->b:Landroidx/a/a/b/b$c;

    .line 301
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry$a;

    iget-object v2, v2, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/j$b;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 302
    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->backwardPass(Landroidx/lifecycle/p;)V

    .line 304
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 2176
    iget-object v1, v1, Landroidx/a/a/b/b;->c:Landroidx/a/a/b/b$c;

    .line 305
    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/j$b;

    .line 306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry$a;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/j$b;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 307
    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->forwardPass(Landroidx/lifecycle/p;)V

    goto :goto_0

    .line 310
    :cond_2
    iput-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mNewEventOccurred:Z

    return-void

    .line 295
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addObserver(Landroidx/lifecycle/o;)V
    .locals 6

    const-string v0, "addObserver"

    .line 172
    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/j$b;

    sget-object v1, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    if-ne v0, v1, :cond_0

    sget-object v0, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/lifecycle/j$b;->INITIALIZED:Landroidx/lifecycle/j$b;

    .line 174
    :goto_0
    new-instance v1, Landroidx/lifecycle/LifecycleRegistry$a;

    invoke-direct {v1, p1, v0}, Landroidx/lifecycle/LifecycleRegistry$a;-><init>(Landroidx/lifecycle/o;Landroidx/lifecycle/j$b;)V

    .line 175
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    invoke-virtual {v0, p1, v1}, Landroidx/a/a/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry$a;

    if-eqz v0, :cond_1

    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mLifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/p;

    if-nez v0, :cond_2

    return-void

    .line 186
    :cond_2
    iget v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroidx/lifecycle/LifecycleRegistry;->mHandlingEvent:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 187
    :goto_2
    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/o;)Landroidx/lifecycle/j$b;

    move-result-object v4

    .line 188
    iget v5, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    add-int/2addr v5, v3

    iput v5, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    .line 189
    :goto_3
    iget-object v5, v1, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-virtual {v5, v4}, Landroidx/lifecycle/j$b;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_6

    iget-object v4, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 190
    invoke-virtual {v4, p1}, Landroidx/a/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 191
    iget-object v4, v1, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-direct {p0, v4}, Landroidx/lifecycle/LifecycleRegistry;->pushParentState(Landroidx/lifecycle/j$b;)V

    .line 192
    iget-object v4, v1, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-static {v4}, Landroidx/lifecycle/j$a;->upFrom(Landroidx/lifecycle/j$b;)Landroidx/lifecycle/j$a;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 196
    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/LifecycleRegistry$a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/j$a;)V

    .line 197
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->popParentState()V

    .line 199
    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->calculateTargetState(Landroidx/lifecycle/o;)Landroidx/lifecycle/j$b;

    move-result-object v4

    goto :goto_3

    .line 194
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "no event up from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry$a;->a:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez v2, :cond_7

    .line 204
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleRegistry;->sync()V

    .line 206
    :cond_7
    iget p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/lifecycle/LifecycleRegistry;->mAddingObserverCounter:I

    return-void
.end method

.method public getCurrentState()Landroidx/lifecycle/j$b;
    .locals 1

    .line 249
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mState:Landroidx/lifecycle/j$b;

    return-object v0
.end method

.method public getObserverCount()I
    .locals 1

    const-string v0, "getObserverCount"

    .line 242
    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    .line 2130
    iget v0, v0, Landroidx/a/a/b/b;->e:I

    return v0
.end method

.method public handleLifecycleEvent(Landroidx/lifecycle/j$a;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    .line 133
    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->getTargetState()Landroidx/lifecycle/j$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method public markState(Landroidx/lifecycle/j$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "markState"

    .line 109
    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method public removeObserver(Landroidx/lifecycle/o;)V
    .locals 1

    const-string v0, "removeObserver"

    .line 219
    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Landroidx/lifecycle/LifecycleRegistry;->mObserverMap:Landroidx/a/a/b/a;

    invoke-virtual {v0, p1}, Landroidx/a/a/b/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCurrentState(Landroidx/lifecycle/j$b;)V
    .locals 1

    const-string v0, "setCurrentState"

    .line 120
    invoke-direct {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/j$b;)V

    return-void
.end method
