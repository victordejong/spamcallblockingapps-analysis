.class Lcom/explorestack/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BuilderParentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;->this$0:Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/GeneratedMessageV3$1;)V
    .locals 0

    .line 821
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method


# virtual methods
.method public markDirty()V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder$BuilderParentImpl;->this$0:Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-void
.end method
