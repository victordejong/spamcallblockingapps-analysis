.class public final Lscala/collection/immutable/PagedSeq$$anonfun$fromLines$1;
.super Lscala/runtime/AbstractFunction1;
.source "PagedSeq.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/PagedSeq$;->fromLines(Lscala/collection/Iterator;)Lscala/collection/immutable/PagedSeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final isFirst$1:Lscala/runtime/BooleanRef;


# direct methods
.method public constructor <init>(Lscala/runtime/BooleanRef;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lscala/collection/immutable/PagedSeq$$anonfun$fromLines$1;->isFirst$1:Lscala/runtime/BooleanRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq$$anonfun$fromLines$1;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 72
    iget-object v0, p0, Lscala/collection/immutable/PagedSeq$$anonfun$fromLines$1;->isFirst$1:Lscala/runtime/BooleanRef;

    iget-boolean v0, v0, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lscala/collection/immutable/PagedSeq$$anonfun$fromLines$1;->isFirst$1:Lscala/runtime/BooleanRef;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lscala/runtime/BooleanRef;->elem:Z

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
