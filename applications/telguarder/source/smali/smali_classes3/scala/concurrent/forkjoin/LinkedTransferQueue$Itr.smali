.class final Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/forkjoin/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private lastPred:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

.field private lastRet:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

.field final synthetic this$0:Lscala/concurrent/forkjoin/LinkedTransferQueue;


# direct methods
.method constructor <init>(Lscala/concurrent/forkjoin/LinkedTransferQueue;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->this$0:Lscala/concurrent/forkjoin/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 860
    invoke-direct {p0, p1}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->advance(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)V

    return-void
.end method

.method private advance(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)V
    .locals 4

    .line 813
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->lastRet:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_0

    .line 814
    iput-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->lastPred:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    goto :goto_2

    .line 815
    :cond_0
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->lastPred:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 821
    :cond_1
    :goto_0
    iget-object v2, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v2, :cond_3

    if-eq v2, v0, :cond_3

    invoke-virtual {v2}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_3

    .line 822
    invoke-virtual {v0, v2, v3}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->casNext(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z

    goto :goto_0

    .line 816
    :cond_2
    :goto_1
    iput-object v1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->lastPred:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    .line 825
    :cond_3
    :goto_2
    iput-object p1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->lastRet:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    :goto_3
    if-nez p1, :cond_4

    .line 828
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->this$0:Lscala/concurrent/forkjoin/LinkedTransferQueue;

    iget-object v0, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue;->head:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    goto :goto_4

    :cond_4
    iget-object v0, p1, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    :goto_4
    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    if-ne v0, p1, :cond_6

    :goto_5
    move-object p1, v1

    goto :goto_3

    .line 835
    :cond_6
    iget-object v2, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 836
    iget-boolean v3, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_7

    if-eqz v2, :cond_8

    if-eq v2, v0, :cond_8

    .line 838
    invoke-static {v2}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 839
    iput-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->nextNode:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    return-void

    :cond_7
    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    if-nez p1, :cond_9

    move-object p1, v0

    goto :goto_3

    .line 848
    :cond_9
    iget-object v2, v0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->next:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-nez v2, :cond_a

    .line 855
    :goto_6
    iput-object v1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->nextNode:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    .line 856
    iput-object v1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    return-void

    :cond_a
    if-ne v0, v2, :cond_b

    goto :goto_5

    .line 853
    :cond_b
    invoke-virtual {p1, v0, v2}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->casNext(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)Z

    goto :goto_3
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 864
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->nextNode:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->nextNode:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v0, :cond_0

    .line 870
    iget-object v1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 871
    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->advance(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)V

    return-object v1

    .line 869
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 876
    iget-object v0, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->lastRet:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 879
    iput-object v1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->lastRet:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    .line 880
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->this$0:Lscala/concurrent/forkjoin/LinkedTransferQueue;

    iget-object v2, p0, Lscala/concurrent/forkjoin/LinkedTransferQueue$Itr;->lastPred:Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;

    invoke-virtual {v1, v2, v0}, Lscala/concurrent/forkjoin/LinkedTransferQueue;->unsplice(Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;Lscala/concurrent/forkjoin/LinkedTransferQueue$Node;)V

    :cond_0
    return-void

    .line 878
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
