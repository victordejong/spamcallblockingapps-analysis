.class public interface abstract Lcom/pubmatic/sdk/common/base/POBResponseParsing;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pubmatic/sdk/common/base/POBAdDescriptor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract parse(Lorg/json/JSONObject;)V
.end method

.method public abstract setListener(Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pubmatic/sdk/common/base/POBResponseParsing$PMResponseParserListener<",
            "TT;>;)V"
        }
    .end annotation
.end method
