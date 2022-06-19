.class public interface abstract Lscala/sys/process/ProcessBuilder$Sink;
.super Ljava/lang/Object;
.source "ProcessBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sink"
.end annotation


# virtual methods
.method public abstract $hash$less(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract $hash$less(Ljava/net/URL;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract $hash$less(Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation
.end method

.method public abstract $hash$less(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract toSink()Lscala/sys/process/ProcessBuilder;
.end method
