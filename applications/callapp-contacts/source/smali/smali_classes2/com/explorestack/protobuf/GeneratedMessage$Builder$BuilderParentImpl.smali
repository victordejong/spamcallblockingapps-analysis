.class Lcom/explorestack/protobuf/GeneratedMessage$Builder$BuilderParentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessage$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BuilderParentImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/explorestack/protobuf/GeneratedMessage$Builder;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder$BuilderParentImpl;->this$0:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessage$Builder;Lcom/explorestack/protobuf/GeneratedMessage$1;)V
    .locals 0

    .line 673
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder$BuilderParentImpl;-><init>(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method


# virtual methods
.method public markDirty()V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder$BuilderParentImpl;->this$0:Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-void
.end method
