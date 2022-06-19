.class public interface abstract Lorg/xutils/http/app/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"

# interfaces
.implements Lorg/xutils/http/app/RequestInterceptListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseDataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xutils/http/app/RequestInterceptListener;"
    }
.end annotation


# virtual methods
.method public abstract parse(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;TResponseDataType;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
