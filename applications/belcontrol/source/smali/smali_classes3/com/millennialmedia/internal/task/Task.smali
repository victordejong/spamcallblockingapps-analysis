.class public abstract Lcom/millennialmedia/internal/task/Task;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/internal/task/Task;->execute(J)V

    return-void
.end method

.method public abstract execute(J)V
.end method
