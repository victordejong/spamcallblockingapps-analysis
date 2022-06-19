.class public abstract Lscala/sys/process/ProcessImpl$BasicProcess;
.super Ljava/lang/Object;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/sys/process/Process;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BasicProcess"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/sys/process/Process$;


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;)V
    .locals 0

    .line 82
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$BasicProcess;->$outer:Lscala/sys/process/Process$;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic scala$sys$process$ProcessImpl$BasicProcess$$$outer()Lscala/sys/process/Process$;
    .locals 1

    .line 82
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$BasicProcess;->$outer:Lscala/sys/process/Process$;

    return-object v0
.end method

.method public abstract start()V
.end method
