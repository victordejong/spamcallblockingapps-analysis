.class public final synthetic Lio/objectbox/query/-$$Lambda$Query$GSfXJtZdRHQfjBFOXwxneWMTnPY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/objectbox/b/a;


# instance fields
.field public final synthetic f$0:Lio/objectbox/query/Query;


# direct methods
.method public synthetic constructor <init>(Lio/objectbox/query/Query;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/objectbox/query/-$$Lambda$Query$GSfXJtZdRHQfjBFOXwxneWMTnPY;->f$0:Lio/objectbox/query/Query;

    return-void
.end method


# virtual methods
.method public final call(J)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/objectbox/query/-$$Lambda$Query$GSfXJtZdRHQfjBFOXwxneWMTnPY;->f$0:Lio/objectbox/query/Query;

    invoke-static {v0, p1, p2}, Lio/objectbox/query/Query;->lambda$GSfXJtZdRHQfjBFOXwxneWMTnPY(Lio/objectbox/query/Query;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
