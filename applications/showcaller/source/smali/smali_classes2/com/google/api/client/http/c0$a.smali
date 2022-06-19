.class final Lcom/google/api/client/http/c0$a;
.super Lio/opencensus/trace/propagation/a$c;
.source "OpenCensusUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/opencensus/trace/propagation/a$c<",
        "Lcom/google/api/client/http/n;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/opencensus/trace/propagation/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/api/client/http/n;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/http/c0$a;->b(Lcom/google/api/client/http/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/google/api/client/http/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/api/client/http/n;->s(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    return-void
.end method
