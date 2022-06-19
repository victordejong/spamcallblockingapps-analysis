.class public Ld2/j3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/j3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/j3;


# direct methods
.method public constructor <init>(Ld2/j3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/j3$a;->a:Ld2/j3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ld2/t0;

    const-string v1, "AdColony.heartbeat"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ld2/t0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ld2/t0;->b()V

    .line 2
    iget-object v0, p0, Ld2/j3$a;->a:Ld2/j3;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ld2/t;->f()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ld2/i3$c;

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    .line 6
    iget-wide v2, v2, Ld2/f1;->V:J

    .line 7
    invoke-direct {v1, v2, v3}, Ld2/i3$c;-><init>(J)V

    .line 8
    new-instance v2, Ld2/k3;

    invoke-direct {v2, v0, v1}, Ld2/k3;-><init>(Ld2/j3;Ld2/i3$c;)V

    iput-object v2, v0, Ld2/j3;->c:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {v1}, Ld2/i3$c;->b()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Ld2/i3;->k(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
