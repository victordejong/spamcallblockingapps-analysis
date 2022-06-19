.class public final synthetic Lcom/google/android/exoplayer2/scheduler/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/exoplayer2/scheduler/b$d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/scheduler/b$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/scheduler/a;->d:Lcom/google/android/exoplayer2/scheduler/b$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/scheduler/a;->d:Lcom/google/android/exoplayer2/scheduler/b$d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/scheduler/b$d;->b()V

    return-void
.end method
