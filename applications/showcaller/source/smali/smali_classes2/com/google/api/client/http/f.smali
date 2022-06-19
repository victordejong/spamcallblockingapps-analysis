.class public Lcom/google/api/client/http/f;
.super Ljava/lang/Object;
.source "EmptyContent.java"

# interfaces
.implements Lcom/google/api/client/http/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLength()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
