.class public interface abstract Lcom/explorestack/protobuf/ListValueOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getValues(I)Lcom/explorestack/protobuf/Value;
.end method

.method public abstract getValuesCount()I
.end method

.method public abstract getValuesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Value;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValuesOrBuilder(I)Lcom/explorestack/protobuf/ValueOrBuilder;
.end method

.method public abstract getValuesOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/ValueOrBuilder;",
            ">;"
        }
    .end annotation
.end method
