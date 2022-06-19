.class public interface abstract Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponseOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/compiler/PluginProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CodeGeneratorResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getError()Ljava/lang/String;
.end method

.method public abstract getErrorBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getFile(I)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;
.end method

.method public abstract getFileCount()I
.end method

.method public abstract getFileList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFileOrBuilder(I)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$FileOrBuilder;
.end method

.method public abstract getFileOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$FileOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasError()Z
.end method
