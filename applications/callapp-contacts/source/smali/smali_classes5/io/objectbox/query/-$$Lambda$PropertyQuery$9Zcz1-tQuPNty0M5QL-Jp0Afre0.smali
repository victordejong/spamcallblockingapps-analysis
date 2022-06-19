.class public final synthetic Lio/objectbox/query/-$$Lambda$PropertyQuery$9Zcz1-tQuPNty0M5QL-Jp0Afre0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/objectbox/query/PropertyQuery;


# direct methods
.method public synthetic constructor <init>(Lio/objectbox/query/PropertyQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/objectbox/query/-$$Lambda$PropertyQuery$9Zcz1-tQuPNty0M5QL-Jp0Afre0;->f$0:Lio/objectbox/query/PropertyQuery;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/objectbox/query/-$$Lambda$PropertyQuery$9Zcz1-tQuPNty0M5QL-Jp0Afre0;->f$0:Lio/objectbox/query/PropertyQuery;

    invoke-static {v0}, Lio/objectbox/query/PropertyQuery;->lambda$9Zcz1-tQuPNty0M5QL-Jp0Afre0(Lio/objectbox/query/PropertyQuery;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
