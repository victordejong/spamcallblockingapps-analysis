.class Landroidx/room/g$a;
.super Landroidx/room/c$a;
.source "MultiInstanceInvalidationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/room/g;


# direct methods
.method constructor <init>(Landroidx/room/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/g$a;->d:Landroidx/room/g;

    invoke-direct {p0}, Landroidx/room/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public C1([Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/g$a;->d:Landroidx/room/g;

    iget-object v0, v0, Landroidx/room/g;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/g$a$a;

    invoke-direct {v1, p0, p1}, Landroidx/room/g$a$a;-><init>(Landroidx/room/g$a;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
