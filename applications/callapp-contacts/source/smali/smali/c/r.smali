.class public final synthetic Lc/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0008\u0002\u001a\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0001\u001a\n\u0010\u0003\u001a\u00020\u0005*\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "blackholeSink",
        "Lokio/Sink;",
        "blackhole",
        "buffer",
        "Lokio/BufferedSink;",
        "Lokio/BufferedSource;",
        "Lokio/Source;",
        "okio"
    }
    k = 0x5
    mv = {
        0x1,
        0x4,
        0x0
    }
    xs = "okio/Okio"
.end annotation


# direct methods
.method public static final a()Lc/ab;
    .locals 1

    .line 41
    new-instance v0, Lc/e;

    invoke-direct {v0}, Lc/e;-><init>()V

    check-cast v0, Lc/ab;

    return-object v0
.end method

.method public static final a(Lc/ab;)Lc/g;
    .locals 1

    const-string v0, "$this$buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lc/w;

    invoke-direct {v0, p0}, Lc/w;-><init>(Lc/ab;)V

    check-cast v0, Lc/g;

    return-object v0
.end method

.method public static final a(Lc/ad;)Lc/h;
    .locals 1

    const-string v0, "$this$buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lc/x;

    invoke-direct {v0, p0}, Lc/x;-><init>(Lc/ad;)V

    check-cast v0, Lc/h;

    return-object v0
.end method
