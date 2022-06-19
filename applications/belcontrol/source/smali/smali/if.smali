.class public abstract Lif;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lqe;)Lif;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lqe;",
            ":",
            "Lhf;",
            ">(TT;)",
            "Lif;"
        }
    .end annotation

    new-instance v0, Ljf;

    move-object v1, p0

    check-cast v1, Lhf;

    invoke-interface {v1}, Lhf;->getViewModelStore()Lgf;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljf;-><init>(Lqe;Lgf;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c(ILandroid/os/Bundle;Lif$a;)Llf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lif$a<",
            "TD;>;)",
            "Llf<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract d()V
.end method
