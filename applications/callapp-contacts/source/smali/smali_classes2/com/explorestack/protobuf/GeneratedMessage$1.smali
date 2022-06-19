.class Lcom/explorestack/protobuf/GeneratedMessage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/GeneratedMessage;->newBuilderForType(Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/explorestack/protobuf/GeneratedMessage;

.field final synthetic val$parent:Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/GeneratedMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$1;->this$0:Lcom/explorestack/protobuf/GeneratedMessage;

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessage$1;->val$parent:Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public markDirty()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$1;->val$parent:Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;

    invoke-interface {v0}, Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;->markDirty()V

    return-void
.end method
