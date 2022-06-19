.class public final Lcom/explorestack/protobuf/DiscardUnknownFieldsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final wrap(Lcom/explorestack/protobuf/Parser;)Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/explorestack/protobuf/Message;",
            ">(",
            "Lcom/explorestack/protobuf/Parser<",
            "TT;>;)",
            "Lcom/explorestack/protobuf/Parser<",
            "TT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/explorestack/protobuf/DiscardUnknownFieldsParser$1;

    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/DiscardUnknownFieldsParser$1;-><init>(Lcom/explorestack/protobuf/Parser;)V

    return-object v0
.end method
