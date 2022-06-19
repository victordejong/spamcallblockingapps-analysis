.class public interface abstract Lscala/sys/process/ProcessBuilder$Source;
.super Ljava/lang/Object;
.source "ProcessBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Source"
.end annotation


# virtual methods
.method public abstract $hash$greater(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract $hash$greater(Lscala/Function0;)Lscala/sys/process/ProcessBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Ljava/io/OutputStream;",
            ">;)",
            "Lscala/sys/process/ProcessBuilder;"
        }
    .end annotation
.end method

.method public abstract $hash$greater(Lscala/sys/process/ProcessBuilder;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract $hash$greater$greater(Ljava/io/File;)Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract cat()Lscala/sys/process/ProcessBuilder;
.end method

.method public abstract toSource()Lscala/sys/process/ProcessBuilder;
.end method
