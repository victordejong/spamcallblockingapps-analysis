.class public interface abstract Lscala/sys/process/ProcessBuilder$FileBuilder;
.super Ljava/lang/Object;
.source "ProcessBuilder.scala"

# interfaces
.implements Lscala/sys/process/ProcessBuilder$Sink;
.implements Lscala/sys/process/ProcessBuilder$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileBuilder"
.end annotation


# virtual methods
.method public abstract $hash$less$less(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract $hash$less$less(Ljava/net/URL;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract $hash$less$less(Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
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

.method public abstract $hash$less$less(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
.end method
