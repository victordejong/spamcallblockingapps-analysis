.class public final Lo6/i$b;
.super Lcom/google/protobuf/i$a;
.source "SourceFile"

# interfaces
.implements Lo6/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i$a<",
        "Lo6/i;",
        "Lo6/i$b;",
        ">;",
        "Lo6/j;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo6/i;->y()Lo6/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/i$a;-><init>(Lcom/google/protobuf/i;)V

    return-void
.end method

.method public constructor <init>(Lo6/i$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lo6/i;->y()Lo6/i;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/i$a;-><init>(Lcom/google/protobuf/i;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/i;

    invoke-virtual {v0}, Lo6/i;->a()Z

    move-result v0

    return v0
.end method

.method public e()Lo6/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/i;

    invoke-virtual {v0}, Lo6/i;->e()Lo6/g;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/i;

    invoke-virtual {v0}, Lo6/i;->g()Z

    move-result v0

    return v0
.end method

.method public h()Lo6/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/i;

    invoke-virtual {v0}, Lo6/i;->h()Lo6/m;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/i;

    invoke-virtual {v0}, Lo6/i;->j()Z

    move-result v0

    return v0
.end method

.method public k()Lo6/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/i;

    invoke-virtual {v0}, Lo6/i;->k()Lo6/h;

    move-result-object v0

    return-object v0
.end method
