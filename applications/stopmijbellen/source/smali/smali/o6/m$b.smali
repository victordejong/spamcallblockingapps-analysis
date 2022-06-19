.class public final Lo6/m$b;
.super Lcom/google/protobuf/i$a;
.source "SourceFile"

# interfaces
.implements Lx6/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i$a<",
        "Lo6/m;",
        "Lo6/m$b;",
        ">;",
        "Lx6/p;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo6/m;->y()Lo6/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/i$a;-><init>(Lcom/google/protobuf/i;)V

    return-void
.end method

.method public constructor <init>(Lo6/m$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lo6/m;->y()Lo6/m;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/i$a;-><init>(Lcom/google/protobuf/i;)V

    return-void
.end method


# virtual methods
.method public q(Ljava/lang/String;J)Lo6/m$b;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/i$a;->n()V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/m;

    invoke-static {v0}, Lo6/m;->A(Lo6/m;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast v0, Lcom/google/protobuf/r;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/r;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public r(J)Lo6/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i$a;->n()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/m;

    invoke-static {v0, p1, p2}, Lo6/m;->G(Lo6/m;J)V

    return-object p0
.end method

.method public s(J)Lo6/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i$a;->n()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/m;

    invoke-static {v0, p1, p2}, Lo6/m;->H(Lo6/m;J)V

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lo6/m$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i$a;->n()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/m;

    invoke-static {v0, p1}, Lo6/m;->z(Lo6/m;Ljava/lang/String;)V

    return-object p0
.end method
