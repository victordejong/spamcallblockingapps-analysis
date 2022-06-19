.class public Ld2/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/k2;


# direct methods
.method public constructor <init>(Ld2/k2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/j2;->a:Ld2/k2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/j2;->a:Ld2/k2;

    .line 2
    iget-object v0, v0, Ld2/k2;->d:Ld2/g2;

    .line 3
    iget-boolean v0, v0, Ld2/g2;->j:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->q()Ld2/u0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/u0;->j()V

    .line 5
    iget-object v0, p0, Ld2/j2;->a:Ld2/k2;

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Ld2/k2;->c:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method
