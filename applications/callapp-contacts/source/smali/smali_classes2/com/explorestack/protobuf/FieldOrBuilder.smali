.class public interface abstract Lcom/explorestack/protobuf/FieldOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getCardinality()Lcom/explorestack/protobuf/Field$Cardinality;
.end method

.method public abstract getCardinalityValue()I
.end method

.method public abstract getDefaultValue()Ljava/lang/String;
.end method

.method public abstract getDefaultValueBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getJsonName()Ljava/lang/String;
.end method

.method public abstract getJsonNameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getKind()Lcom/explorestack/protobuf/Field$Kind;
.end method

.method public abstract getKindValue()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getNumber()I
.end method

.method public abstract getOneofIndex()I
.end method

.method public abstract getOptions(I)Lcom/explorestack/protobuf/Option;
.end method

.method public abstract getOptionsCount()I
.end method

.method public abstract getOptionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOptionsOrBuilder(I)Lcom/explorestack/protobuf/OptionOrBuilder;
.end method

.method public abstract getOptionsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPacked()Z
.end method

.method public abstract getTypeUrl()Ljava/lang/String;
.end method

.method public abstract getTypeUrlBytes()Lcom/explorestack/protobuf/ByteString;
.end method
