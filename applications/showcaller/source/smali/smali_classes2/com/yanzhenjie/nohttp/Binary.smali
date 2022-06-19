.class public interface abstract Lcom/yanzhenjie/nohttp/Binary;
.super Ljava/lang/Object;
.source "Binary.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/able/Cancelable;


# virtual methods
.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getLength()J
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract onWriteBinary(Ljava/io/OutputStream;)V
.end method
