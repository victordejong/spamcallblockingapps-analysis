.class public Lscala/sys/process/ProcessImpl$DummyProcess;
.super Ljava/lang/Object;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/sys/process/Process;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DummyProcess"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/sys/process/Process$;

.field private final exitCode:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/Process$;",
            "Lscala/Function0<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 207
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$DummyProcess;->$outer:Lscala/sys/process/Process$;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-virtual {p1}, Lscala/sys/process/Process$;->Future()Lscala/sys/process/ProcessImpl$Future$;

    move-result-object p1

    invoke-virtual {p1, p2}, Lscala/sys/process/ProcessImpl$Future$;->apply(Lscala/Function0;)Lscala/Function0;

    move-result-object p1

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$DummyProcess;->exitCode:Lscala/Function0;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public exitValue()I
    .locals 1

    .line 209
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$DummyProcess;->exitCode:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply$mcI$sp()I

    move-result v0

    return v0
.end method

.method public synthetic scala$sys$process$ProcessImpl$DummyProcess$$$outer()Lscala/sys/process/Process$;
    .locals 1

    .line 207
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$DummyProcess;->$outer:Lscala/sys/process/Process$;

    return-object v0
.end method
