.class public Lscala/sys/process/ProcessBuilderImpl$URLInput;
.super Lscala/sys/process/ProcessBuilderImpl$IStreamBuilder;
.source "ProcessBuilderImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "URLInput"
.end annotation


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Ljava/net/URL;)V
    .locals 1

    .line 31
    new-instance v0, Lscala/sys/process/ProcessBuilderImpl$URLInput$$anonfun$$lessinit$greater$1;

    invoke-direct {v0, p1, p2}, Lscala/sys/process/ProcessBuilderImpl$URLInput$$anonfun$$lessinit$greater$1;-><init>(Lscala/sys/process/ProcessBuilder$;Ljava/net/URL;)V

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lscala/sys/process/ProcessBuilderImpl$IStreamBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;Lscala/Function0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic scala$sys$process$ProcessBuilderImpl$URLInput$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 31
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$URLInput;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method
