.class public interface abstract Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lidroid/xutils/http/client/multipart/content/ContentDescriptor;


# virtual methods
.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract setCallBackInfo(Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;)V
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method
