.class public final synthetic Lio/objectbox/query/-$$Lambda$Query$N5_mnxSAX-3ip-3n4R_5Voa8B2w;
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

    iput-object p1, p0, Lio/objectbox/query/-$$Lambda$Query$N5_mnxSAX-3ip-3n4R_5Voa8B2w;->f$0:Lio/objectbox/query/Query;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/objectbox/query/-$$Lambda$Query$N5_mnxSAX-3ip-3n4R_5Voa8B2w;->f$0:Lio/objectbox/query/Query;

    invoke-static {v0}, Lio/objectbox/query/Query;->lambda$N5_mnxSAX-3ip-3n4R_5Voa8B2w(Lio/objectbox/query/Query;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
