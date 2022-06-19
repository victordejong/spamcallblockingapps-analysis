.class public abstract Lcom/google/protobuf/i$a;
.super Lcom/google/protobuf/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/i<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/i$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/a$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public b:Lcom/google/protobuf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/a$a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/i$a;->a:Lcom/google/protobuf/i;

    .line 3
    sget-object v0, Lcom/google/protobuf/i$e;->d:Lcom/google/protobuf/i$e;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/protobuf/i;->r(Lcom/google/protobuf/i$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/protobuf/i;

    iput-object p1, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/protobuf/i$a;->c:Z

    return-void
.end method


# virtual methods
.method public c()Lcom/google/protobuf/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/i$a;->a:Lcom/google/protobuf/i;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/i$a;->a:Lcom/google/protobuf/i;

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/i;->w()Lcom/google/protobuf/i$a;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/i$a;->m()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/i$a;->o(Lcom/google/protobuf/i;)Lcom/google/protobuf/i$a;

    return-object v0
.end method

.method public final l()Lcom/google/protobuf/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i$a;->m()Lcom/google/protobuf/i;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/i;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0}, Lcom/google/protobuf/UninitializedMessageException;-><init>()V

    .line 4
    throw v0
.end method

.method public m()Lcom/google/protobuf/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/i$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lx6/u;->c:Lx6/u;

    .line 5
    invoke-virtual {v1, v0}, Lx6/u;->b(Ljava/lang/Object;)Lx6/w;

    move-result-object v1

    invoke-interface {v1, v0}, Lx6/w;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/protobuf/i$a;->c:Z

    .line 7
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    return-object v0
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/i$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    sget-object v1, Lcom/google/protobuf/i$e;->d:Lcom/google/protobuf/i$e;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/protobuf/i;->r(Lcom/google/protobuf/i$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/protobuf/i;

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    .line 6
    sget-object v2, Lx6/u;->c:Lx6/u;

    .line 7
    invoke-virtual {v2, v0}, Lx6/u;->b(Ljava/lang/Object;)Lx6/w;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lx6/w;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/protobuf/i$a;->c:Z

    :cond_0
    return-void
.end method

.method public o(Lcom/google/protobuf/i;)Lcom/google/protobuf/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i$a;->n()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/i$a;->p(Lcom/google/protobuf/i;Lcom/google/protobuf/i;)V

    return-object p0
.end method

.method public final p(Lcom/google/protobuf/i;Lcom/google/protobuf/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lx6/u;->c:Lx6/u;

    .line 2
    invoke-virtual {v0, p1}, Lx6/u;->b(Ljava/lang/Object;)Lx6/w;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lx6/w;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
