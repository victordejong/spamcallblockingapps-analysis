.class public Lw70$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw70;


# direct methods
.method public constructor <init>(Lw70;)V
    .locals 0

    iput-object p1, p0, Lw70$a;->a:Lw70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lw70$a;->a:Lw70;

    invoke-virtual {v0, p1}, Lw70;->d(Ljava/lang/Runnable;)V

    return-void
.end method
