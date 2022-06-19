.class public Ld2/f1$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1$n;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f1$n;


# direct methods
.method public constructor <init>(Ld2/f1$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f1$n$a;->a:Ld2/f1$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->a()Ld2/g2;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Ld2/g2;->f:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ld2/f1$n$a;->a:Ld2/f1$n;

    iget-object v0, v0, Ld2/f1$n;->a:Ld2/f1;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ld2/g1;

    invoke-direct {v2, v0}, Ld2/g1;-><init>(Ld2/f1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
