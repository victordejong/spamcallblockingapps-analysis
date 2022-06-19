.class public final synthetic Lio/objectbox/query/-$$Lambda$Query$aK9Eq4vTl-gSJwzL5OrvUyBVDvA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/objectbox/query/Query;


# direct methods
.method public synthetic constructor <init>(Lio/objectbox/query/Query;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/objectbox/query/-$$Lambda$Query$aK9Eq4vTl-gSJwzL5OrvUyBVDvA;->f$0:Lio/objectbox/query/Query;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/objectbox/query/-$$Lambda$Query$aK9Eq4vTl-gSJwzL5OrvUyBVDvA;->f$0:Lio/objectbox/query/Query;

    invoke-static {v0}, Lio/objectbox/query/Query;->lambda$aK9Eq4vTl-gSJwzL5OrvUyBVDvA(Lio/objectbox/query/Query;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
