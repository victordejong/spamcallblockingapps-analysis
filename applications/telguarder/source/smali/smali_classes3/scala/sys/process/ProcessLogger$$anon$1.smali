.class public final Lscala/sys/process/ProcessLogger$$anon$1;
.super Ljava/lang/Object;
.source "ProcessLogger.scala"

# interfaces
.implements Lscala/sys/process/ProcessLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessLogger$;->apply(Lscala/Function1;Lscala/Function1;)Lscala/sys/process/ProcessLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final ferr$1:Lscala/Function1;

.field private final fout$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/Function1;Lscala/Function1;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lscala/sys/process/ProcessLogger$$anon$1;->fout$1:Lscala/Function1;

    iput-object p2, p0, Lscala/sys/process/ProcessLogger$$anon$1;->ferr$1:Lscala/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buffer(Lscala/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public err(Lscala/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lscala/sys/process/ProcessLogger$$anon$1;->ferr$1:Lscala/Function1;

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public out(Lscala/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lscala/sys/process/ProcessLogger$$anon$1;->fout$1:Lscala/Function1;

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
