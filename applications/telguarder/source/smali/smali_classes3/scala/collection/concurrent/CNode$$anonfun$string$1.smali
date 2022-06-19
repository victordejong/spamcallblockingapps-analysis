.class public final Lscala/collection/concurrent/CNode$$anonfun$string$1;
.super Lscala/runtime/AbstractFunction1;
.source "TrieMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/concurrent/CNode;->string(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/concurrent/BasicNode;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final lev$3:I


# direct methods
.method public constructor <init>(Lscala/collection/concurrent/CNode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/concurrent/CNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 569
    iput p2, p0, Lscala/collection/concurrent/CNode$$anonfun$string$1;->lev$3:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 569
    check-cast p1, Lscala/collection/concurrent/BasicNode;

    invoke-virtual {p0, p1}, Lscala/collection/concurrent/CNode$$anonfun$string$1;->apply(Lscala/collection/concurrent/BasicNode;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/concurrent/BasicNode;)Ljava/lang/String;
    .locals 1

    .line 569
    iget v0, p0, Lscala/collection/concurrent/CNode$$anonfun$string$1;->lev$3:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lscala/collection/concurrent/BasicNode;->string(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
