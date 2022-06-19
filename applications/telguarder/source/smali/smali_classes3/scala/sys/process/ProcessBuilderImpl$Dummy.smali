.class public Lscala/sys/process/ProcessBuilderImpl$Dummy;
.super Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;
.source "ProcessBuilderImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Dummy"
.end annotation


# instance fields
.field private final exitValue:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final toString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilder$;Ljava/lang/String;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/ProcessBuilder$;",
            "Ljava/lang/String;",
            "Lscala/Function0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$Dummy;->toString:Ljava/lang/String;

    iput-object p3, p0, Lscala/sys/process/ProcessBuilderImpl$Dummy;->exitValue:Lscala/Function0;

    invoke-direct {p0, p1}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;-><init>(Lscala/sys/process/ProcessBuilder$;)V

    return-void
.end method


# virtual methods
.method public canPipeTo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;
    .locals 2

    .line 27
    new-instance p1, Lscala/sys/process/ProcessImpl$DummyProcess;

    sget-object v0, Lscala/sys/process/Process$;->MODULE$:Lscala/sys/process/Process$;

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$Dummy;->exitValue:Lscala/Function0;

    invoke-direct {p1, v0, v1}, Lscala/sys/process/ProcessImpl$DummyProcess;-><init>(Lscala/sys/process/Process$;Lscala/Function0;)V

    return-object p1
.end method

.method public synthetic scala$sys$process$ProcessBuilderImpl$Dummy$$$outer()Lscala/sys/process/ProcessBuilder$;
    .locals 1

    .line 26
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$Dummy;->$outer:Lscala/sys/process/ProcessBuilder$;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$Dummy;->toString:Ljava/lang/String;

    return-object v0
.end method
