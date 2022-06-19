.class public final synthetic Lio/objectbox/query/-$$Lambda$Query$F9Mj6UQkNElYy1cnI6f1U-EU9Lw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/objectbox/b/a;


# instance fields
.field public final synthetic f$0:Lio/objectbox/query/Query;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lio/objectbox/query/Query;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/objectbox/query/-$$Lambda$Query$F9Mj6UQkNElYy1cnI6f1U-EU9Lw;->f$0:Lio/objectbox/query/Query;

    iput-wide p2, p0, Lio/objectbox/query/-$$Lambda$Query$F9Mj6UQkNElYy1cnI6f1U-EU9Lw;->f$1:J

    iput-wide p4, p0, Lio/objectbox/query/-$$Lambda$Query$F9Mj6UQkNElYy1cnI6f1U-EU9Lw;->f$2:J

    return-void
.end method


# virtual methods
.method public final call(J)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lio/objectbox/query/-$$Lambda$Query$F9Mj6UQkNElYy1cnI6f1U-EU9Lw;->f$0:Lio/objectbox/query/Query;

    iget-wide v1, p0, Lio/objectbox/query/-$$Lambda$Query$F9Mj6UQkNElYy1cnI6f1U-EU9Lw;->f$1:J

    iget-wide v3, p0, Lio/objectbox/query/-$$Lambda$Query$F9Mj6UQkNElYy1cnI6f1U-EU9Lw;->f$2:J

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lio/objectbox/query/Query;->lambda$F9Mj6UQkNElYy1cnI6f1U-EU9Lw(Lio/objectbox/query/Query;JJJ)[J

    move-result-object p1

    return-object p1
.end method
