.class public Lscala/sys/process/ProcessBuilderImpl$DaemonBuilder;
.super Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;
.source "ProcessBuilderImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DaemonBuilder"
.end annotation


# instance fields
.field private final underlying:Lscala/sys/process/ProcessBuilder;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Lscala/sys/process/ProcessBuilder;)V
    .locals 0

    .line 22
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$DaemonBuilder;->underlying:Lscala/sys/process/ProcessBuilder;

    invoke-direct {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;)V

    return-void
.end method


# virtual methods
.method public final run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;
    .locals 1

    .line 23
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$DaemonBuilder;->underlying:Lscala/sys/process/ProcessBuilder;

    invoke-virtual {p1}, Lscala/sys/process/ProcessIO;->daemonized()Lscala/sys/process/ProcessIO;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/sys/process/ProcessBuilder;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$DaemonBuilder$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 22
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$DaemonBuilder;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method
