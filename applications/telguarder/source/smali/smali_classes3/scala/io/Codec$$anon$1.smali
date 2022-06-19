.class public final Lscala/io/Codec$$anon$1;
.super Lscala/io/Codec;
.source "Codec.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/io/Codec$;->apply(Ljava/nio/charset/CharsetDecoder;)Lscala/io/Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final _decoder$1:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method public constructor <init>(Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetDecoder;)V
    .locals 0

    .line 96
    iput-object p2, p0, Lscala/io/Codec$$anon$1;->_decoder$1:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/io/Codec;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public decoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .line 96
    iget-object v0, p0, Lscala/io/Codec$$anon$1;->_decoder$1:Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method
