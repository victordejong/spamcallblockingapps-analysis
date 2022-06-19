.class public Lio/objectbox/query/PropertyQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lio/objectbox/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/query/Query<",
            "*>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "*>;"
        }
    .end annotation
.end field

.field final d:I

.field e:Z


# direct methods
.method public constructor <init>(Lio/objectbox/query/Query;Lio/objectbox/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/query/Query<",
            "*>;",
            "Lio/objectbox/g<",
            "*>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lio/objectbox/query/PropertyQuery;->e:Z

    .line 45
    iput-object p1, p0, Lio/objectbox/query/PropertyQuery;->a:Lio/objectbox/query/Query;

    .line 46
    iget-wide v0, p1, Lio/objectbox/query/Query;->c:J

    iput-wide v0, p0, Lio/objectbox/query/PropertyQuery;->b:J

    .line 47
    iput-object p2, p0, Lio/objectbox/query/PropertyQuery;->c:Lio/objectbox/g;

    .line 48
    iget p1, p2, Lio/objectbox/g;->c:I

    iput p1, p0, Lio/objectbox/query/PropertyQuery;->d:I

    return-void
.end method

.method private synthetic b()Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 361
    iget-wide v1, p0, Lio/objectbox/query/PropertyQuery;->b:J

    iget-object v0, p0, Lio/objectbox/query/PropertyQuery;->a:Lio/objectbox/query/Query;

    .line 1146
    iget-object v0, v0, Lio/objectbox/query/Query;->a:Lio/objectbox/a;

    .line 2059
    invoke-virtual {v0}, Lio/objectbox/a;->a()Lio/objectbox/Cursor;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/Cursor;->internalHandle()J

    move-result-wide v3

    .line 361
    iget v5, p0, Lio/objectbox/query/PropertyQuery;->d:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/objectbox/query/PropertyQuery;->nativeSum(JJI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$9Zcz1-tQuPNty0M5QL-Jp0Afre0(Lio/objectbox/query/PropertyQuery;)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0}, Lio/objectbox/query/PropertyQuery;->b()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 360
    iget-object v0, p0, Lio/objectbox/query/PropertyQuery;->a:Lio/objectbox/query/Query;

    new-instance v1, Lio/objectbox/query/-$$Lambda$PropertyQuery$9Zcz1-tQuPNty0M5QL-Jp0Afre0;

    invoke-direct {v1, p0}, Lio/objectbox/query/-$$Lambda$PropertyQuery$9Zcz1-tQuPNty0M5QL-Jp0Afre0;-><init>(Lio/objectbox/query/PropertyQuery;)V

    invoke-virtual {v0, v1}, Lio/objectbox/query/Query;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method native nativeSum(JJI)J
.end method
