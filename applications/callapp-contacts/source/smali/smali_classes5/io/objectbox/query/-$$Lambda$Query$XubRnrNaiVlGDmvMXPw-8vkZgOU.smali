.class public final synthetic Lio/objectbox/query/-$$Lambda$Query$XubRnrNaiVlGDmvMXPw-8vkZgOU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lio/objectbox/query/Query;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lio/objectbox/query/Query;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/objectbox/query/-$$Lambda$Query$XubRnrNaiVlGDmvMXPw-8vkZgOU;->f$0:Lio/objectbox/query/Query;

    iput-wide p2, p0, Lio/objectbox/query/-$$Lambda$Query$XubRnrNaiVlGDmvMXPw-8vkZgOU;->f$1:J

    iput-wide p4, p0, Lio/objectbox/query/-$$Lambda$Query$XubRnrNaiVlGDmvMXPw-8vkZgOU;->f$2:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lio/objectbox/query/-$$Lambda$Query$XubRnrNaiVlGDmvMXPw-8vkZgOU;->f$0:Lio/objectbox/query/Query;

    iget-wide v1, p0, Lio/objectbox/query/-$$Lambda$Query$XubRnrNaiVlGDmvMXPw-8vkZgOU;->f$1:J

    iget-wide v3, p0, Lio/objectbox/query/-$$Lambda$Query$XubRnrNaiVlGDmvMXPw-8vkZgOU;->f$2:J

    invoke-static {v0, v1, v2, v3, v4}, Lio/objectbox/query/Query;->lambda$XubRnrNaiVlGDmvMXPw-8vkZgOU(Lio/objectbox/query/Query;JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
