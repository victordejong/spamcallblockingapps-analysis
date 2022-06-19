.class public final Lio/opencensus/trace/v/a;
.super Ljava/lang/Object;
.source "BaseMessageEventUtils.java"


# direct methods
.method public static a(Lio/opencensus/trace/g;)Lio/opencensus/trace/MessageEvent;
    .locals 3

    const-string v0, "event"

    .line 1
    invoke-static {p0, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/opencensus/trace/MessageEvent;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lio/opencensus/trace/MessageEvent;

    return-object p0

    .line 4
    :cond_0
    check-cast p0, Lio/opencensus/trace/NetworkEvent;

    .line 5
    invoke-virtual {p0}, Lio/opencensus/trace/NetworkEvent;->e()Lio/opencensus/trace/NetworkEvent$Type;

    move-result-object v0

    sget-object v1, Lio/opencensus/trace/NetworkEvent$Type;->e:Lio/opencensus/trace/NetworkEvent$Type;

    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lio/opencensus/trace/MessageEvent$Type;->e:Lio/opencensus/trace/MessageEvent$Type;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lio/opencensus/trace/MessageEvent$Type;->d:Lio/opencensus/trace/MessageEvent$Type;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lio/opencensus/trace/NetworkEvent;->d()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/opencensus/trace/MessageEvent;->a(Lio/opencensus/trace/MessageEvent$Type;J)Lio/opencensus/trace/MessageEvent$a;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lio/opencensus/trace/NetworkEvent;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/MessageEvent$a;->d(J)Lio/opencensus/trace/MessageEvent$a;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lio/opencensus/trace/NetworkEvent;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/MessageEvent$a;->b(J)Lio/opencensus/trace/MessageEvent$a;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/opencensus/trace/MessageEvent$a;->a()Lio/opencensus/trace/MessageEvent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lio/opencensus/trace/g;)Lio/opencensus/trace/NetworkEvent;
    .locals 3

    const-string v0, "event"

    .line 1
    invoke-static {p0, v0}, Ld/b/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lio/opencensus/trace/NetworkEvent;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lio/opencensus/trace/NetworkEvent;

    return-object p0

    .line 4
    :cond_0
    check-cast p0, Lio/opencensus/trace/MessageEvent;

    .line 5
    invoke-virtual {p0}, Lio/opencensus/trace/MessageEvent;->d()Lio/opencensus/trace/MessageEvent$Type;

    move-result-object v0

    sget-object v1, Lio/opencensus/trace/MessageEvent$Type;->e:Lio/opencensus/trace/MessageEvent$Type;

    if-ne v0, v1, :cond_1

    .line 6
    sget-object v0, Lio/opencensus/trace/NetworkEvent$Type;->e:Lio/opencensus/trace/NetworkEvent$Type;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lio/opencensus/trace/NetworkEvent$Type;->d:Lio/opencensus/trace/NetworkEvent$Type;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lio/opencensus/trace/MessageEvent;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/opencensus/trace/NetworkEvent;->a(Lio/opencensus/trace/NetworkEvent$Type;J)Lio/opencensus/trace/NetworkEvent$a;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lio/opencensus/trace/MessageEvent;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/NetworkEvent$a;->d(J)Lio/opencensus/trace/NetworkEvent$a;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lio/opencensus/trace/MessageEvent;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/opencensus/trace/NetworkEvent$a;->b(J)Lio/opencensus/trace/NetworkEvent$a;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/opencensus/trace/NetworkEvent$a;->a()Lio/opencensus/trace/NetworkEvent;

    move-result-object p0

    return-object p0
.end method
