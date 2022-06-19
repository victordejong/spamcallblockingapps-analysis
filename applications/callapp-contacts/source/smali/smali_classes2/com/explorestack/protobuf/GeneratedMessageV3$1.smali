.class Lcom/explorestack/protobuf/GeneratedMessageV3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/GeneratedMessageV3;->newBuilderForType(Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/explorestack/protobuf/GeneratedMessageV3;

.field final synthetic val$parent:Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$1;->this$0:Lcom/explorestack/protobuf/GeneratedMessageV3;

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$1;->val$parent:Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public markDirty()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$1;->val$parent:Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;

    invoke-interface {v0}, Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;->markDirty()V

    return-void
.end method
