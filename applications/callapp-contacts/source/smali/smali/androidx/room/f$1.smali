.class final Landroidx/room/f$1;
.super Landroidx/room/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/f;


# direct methods
.method constructor <init>(Landroidx/room/f;)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroidx/room/f$1;->a:Landroidx/room/f;

    invoke-direct {p0}, Landroidx/room/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 2

    .line 84
    iget-object v0, p0, Landroidx/room/f$1;->a:Landroidx/room/f;

    iget-object v0, v0, Landroidx/room/f;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/f$1$1;

    invoke-direct {v1, p0, p1}, Landroidx/room/f$1$1;-><init>(Landroidx/room/f$1;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
