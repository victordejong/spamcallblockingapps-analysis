.class public final Lcom/flurry/sdk/jp$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lo<",
        "Lcom/flurry/sdk/jp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/flurry/sdk/jp$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/jp$a$1;-><init>(Lcom/flurry/sdk/jp$a;Ljava/io/InputStream;)V

    new-instance p1, Lcom/flurry/sdk/jp;

    invoke-direct {p1}, Lcom/flurry/sdk/jp;-><init>()V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/flurry/sdk/jp;->a(Lcom/flurry/sdk/jp;Z)Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/jp;->a(Lcom/flurry/sdk/jp;J)J

    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v2, Lcom/flurry/sdk/jl;

    invoke-direct {v2, v1}, Lcom/flurry/sdk/jl;-><init>([B)V

    invoke-static {p1}, Lcom/flurry/sdk/jp;->a(Lcom/flurry/sdk/jp;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Serialization not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
