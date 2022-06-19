.class public Lne1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne1$b;
    }
.end annotation


# instance fields
.field public a:Lne1$b;

.field public b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lne1$b;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lne1;->a:Lne1$b;

    iput-object p2, p0, Lne1;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lne1;)Lne1$b;
    .locals 0

    iget-object p0, p0, Lne1;->a:Lne1$b;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lne1;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lne1$a;

    invoke-direct {v1, p0, p1}, Lne1$a;-><init>(Lne1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
