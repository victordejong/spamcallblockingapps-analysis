.class public abstract Lcom/google/protobuf/i$c;
.super Lcom/google/protobuf/i;
.source "SourceFile"

# interfaces
.implements Lx6/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/i$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/i<",
        "TMessageType;TBuilderType;>;",
        "Lx6/p;"
    }
.end annotation


# instance fields
.field public extensions:Lcom/google/protobuf/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/h<",
            "Lcom/google/protobuf/i$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/i;-><init>()V

    .line 2
    sget-object v0, Lcom/google/protobuf/h;->d:Lcom/google/protobuf/h;

    .line 3
    iput-object v0, p0, Lcom/google/protobuf/i$c;->extensions:Lcom/google/protobuf/h;

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Lcom/google/protobuf/u;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i;->t()Lcom/google/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/protobuf/u$a;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/i$e;->e:Lcom/google/protobuf/i$e;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/protobuf/i;->r(Lcom/google/protobuf/i$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/google/protobuf/i$a;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 5
    iget-object v1, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    invoke-virtual {v0, v1, p0}, Lcom/google/protobuf/i$a;->p(Lcom/google/protobuf/i;Lcom/google/protobuf/i;)V

    return-object v0
.end method
