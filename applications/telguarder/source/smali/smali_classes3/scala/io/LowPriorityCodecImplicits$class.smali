.class public abstract Lscala/io/LowPriorityCodecImplicits$class;
.super Ljava/lang/Object;
.source "Codec.scala"


# direct methods
.method public static $init$(Lscala/io/Codec$;)V
    .locals 0

    return-void
.end method

.method public static fallbackSystemCodec(Lscala/io/Codec$;)Lscala/io/Codec;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lscala/io/Codec$;->defaultCharsetCodec()Lscala/io/Codec;

    move-result-object p0

    return-object p0
.end method
