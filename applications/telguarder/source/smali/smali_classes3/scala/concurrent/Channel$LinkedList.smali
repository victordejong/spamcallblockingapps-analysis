.class public Lscala/concurrent/Channel$LinkedList;
.super Ljava/lang/Object;
.source "Channel.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinkedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/concurrent/Channel;

.field private elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private next:Lscala/concurrent/Channel$LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/Channel<",
            "TA;>.",
            "LinkedList<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/concurrent/Channel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Channel<",
            "TA;>;)V"
        }
    .end annotation

    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/concurrent/Channel$LinkedList;->$outer:Lscala/concurrent/Channel;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lscala/concurrent/Channel$LinkedList;->next:Lscala/concurrent/Channel$LinkedList;

    return-void
.end method


# virtual methods
.method public elem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lscala/concurrent/Channel$LinkedList;->elem:Ljava/lang/Object;

    return-object v0
.end method

.method public elem_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lscala/concurrent/Channel$LinkedList;->elem:Ljava/lang/Object;

    return-void
.end method

.method public next()Lscala/concurrent/Channel$LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/Channel<",
            "TA;>.",
            "LinkedList<",
            "TA;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lscala/concurrent/Channel$LinkedList;->next:Lscala/concurrent/Channel$LinkedList;

    return-object v0
.end method

.method public next_$eq(Lscala/concurrent/Channel$LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/Channel<",
            "TA;>.",
            "LinkedList<",
            "TA;>;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lscala/concurrent/Channel$LinkedList;->next:Lscala/concurrent/Channel$LinkedList;

    return-void
.end method

.method public synthetic scala$concurrent$Channel$LinkedList$$$outer()Lscala/concurrent/Channel;
    .locals 1

    .line 21
    iget-object v0, p0, Lscala/concurrent/Channel$LinkedList;->$outer:Lscala/concurrent/Channel;

    return-object v0
.end method
