.class public Lcom/explorestack/protobuf/RepeatedFieldBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;,
        Lcom/explorestack/protobuf/RepeatedFieldBuilder$BuilderExternalList;,
        Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageExternalList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/explorestack/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/explorestack/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/explorestack/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/SingleFieldBuilder<",
            "TMType;TBType;TIType;>;>;"
        }
    .end annotation
.end field

.field private externalBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$BuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilder$BuilderExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private externalMessageList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private externalMessageOrBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private isClean:Z

.field private isMessagesListMutable:Z

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation
.end field

.field private parent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/explorestack/protobuf/GeneratedMessage$BuilderParent;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TMType;>;Z",
            "Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    .line 132
    iput-boolean p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    .line 133
    iput-object p3, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->parent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;

    .line 134
    iput-boolean p4, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isClean:Z

    return-void
.end method

.method private ensureBuilders()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureMutableMessageList()V
    .locals 2

    .line 147
    iget-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    :cond_0
    return-void
.end method

.method private getMessage(IZ)Lcom/explorestack/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TMType;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 211
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessage;

    return-object p1

    .line 214
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 219
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessage;

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 222
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->build()Lcom/explorestack/protobuf/GeneratedMessage;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->getMessage()Lcom/explorestack/protobuf/GeneratedMessage;

    move-result-object p1

    return-object p1
.end method

.method private incrementModCounts()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageExternalList;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageExternalList;->incrementModCount()V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder$BuilderExternalList;->incrementModCount()V

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->incrementModCount()V

    :cond_2
    return-void
.end method

.method private onChanged()V
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isClean:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->parent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_0

    .line 538
    invoke-interface {v0}, Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    .line 541
    iput-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isClean:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TMType;>;)",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 342
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/GeneratedMessage;

    .line 343
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 348
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 350
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 351
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    .line 354
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 356
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    if-ltz v0, :cond_3

    .line 358
    iget-object v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 359
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 362
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessage;

    .line 363
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilder;

    goto :goto_1

    .line 366
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 367
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0
.end method

.method public addBuilder(ILcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)TBType;"
        }
    .end annotation

    .line 398
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 399
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    .line 400
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilder;

    iget-boolean v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isClean:Z

    invoke-direct {v0, p2, p0, v1}, Lcom/explorestack/protobuf/SingleFieldBuilder;-><init>(Lcom/explorestack/protobuf/GeneratedMessage;Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 402
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 403
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 404
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 405
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    .line 406
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->getBuilder()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addBuilder(Lcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)TBType;"
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 379
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    .line 380
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilder;

    iget-boolean v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isClean:Z

    invoke-direct {v0, p1, p0, v1}, Lcom/explorestack/protobuf/SingleFieldBuilder;-><init>(Lcom/explorestack/protobuf/GeneratedMessage;Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 382
    iget-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 385
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    .line 386
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->getBuilder()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addMessage(ILcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 322
    invoke-static {p2}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 324
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 325
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 326
    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 329
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0
.end method

.method public addMessage(Lcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 301
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 303
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 305
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 308
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0
.end method

.method public build()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isClean:Z

    .line 455
    iget-boolean v1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v2, :cond_0

    .line 457
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 464
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 465
    iget-object v3, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Message;

    .line 466
    iget-object v4, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/SingleFieldBuilder;

    if-eqz v4, :cond_1

    .line 468
    invoke-virtual {v4}, Lcom/explorestack/protobuf/SingleFieldBuilder;->build()Lcom/explorestack/protobuf/GeneratedMessage;

    move-result-object v4

    if-eq v4, v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 476
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    return-object v0

    .line 481
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    const/4 v1, 0x0

    .line 482
    :goto_2
    iget-object v3, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 483
    iget-object v3, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->getMessage(IZ)Lcom/explorestack/protobuf/GeneratedMessage;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    .line 489
    iput-boolean v2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    .line 433
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 434
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilder;->dispose()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    .line 441
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 442
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->parent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method public getBuilder(I)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    .line 235
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessage;

    .line 238
    new-instance v1, Lcom/explorestack/protobuf/SingleFieldBuilder;

    iget-boolean v2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->isClean:Z

    invoke-direct {v1, v0, p0, v2}, Lcom/explorestack/protobuf/SingleFieldBuilder;-><init>(Lcom/explorestack/protobuf/GeneratedMessage;Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 239
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 241
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->getBuilder()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TBType;>;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder$BuilderExternalList;-><init>(Lcom/explorestack/protobuf/RepeatedFieldBuilder;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessage(I)Lcom/explorestack/protobuf/GeneratedMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->getMessage(IZ)Lcom/explorestack/protobuf/GeneratedMessage;

    move-result-object p1

    return-object p1
.end method

.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageExternalList;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageExternalList;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageExternalList;-><init>(Lcom/explorestack/protobuf/RepeatedFieldBuilder;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageExternalList;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageExternalList;

    return-object v0
.end method

.method public getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageOrBuilder;

    return-object p1

    .line 260
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/MessageOrBuilder;

    return-object p1

    .line 268
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getMessageOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TIType;>;"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;-><init>(Lcom/explorestack/protobuf/RepeatedFieldBuilder;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public markDirty()V
    .locals 0

    .line 547
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->onChanged()V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 417
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 418
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SingleFieldBuilder;

    if-eqz p1, :cond_0

    .line 422
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SingleFieldBuilder;->dispose()V

    .line 425
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 426
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-void
.end method

.method public setMessage(ILcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    .line 280
    invoke-static {p2}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    .line 282
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object p2, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 284
    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/SingleFieldBuilder;

    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/explorestack/protobuf/SingleFieldBuilder;->dispose()V

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->onChanged()V

    .line 290
    invoke-direct {p0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0
.end method
