.class Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/RepeatedFieldBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageOrBuilderExternalList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/explorestack/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/explorestack/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/explorestack/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/util/AbstractList<",
        "TIType;>;",
        "Ljava/util/List<",
        "TIType;>;"
    }
.end annotation


# instance fields
.field builder:Lcom/explorestack/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/RepeatedFieldBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;)V"
        }
    .end annotation

    .line 649
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 650
    iput-object p1, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilder;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/explorestack/protobuf/MessageOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 641
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->get(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method

.method incrementModCount()V
    .locals 1

    .line 664
    iget v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->modCount:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->builder:Lcom/explorestack/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    return v0
.end method
