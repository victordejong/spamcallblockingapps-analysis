.class public Ld2/f1$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1;->g(Ld2/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f1$k;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/f1$k;->a:Ld2/f1;

    .line 2
    iget-object v0, v0, Ld2/f1;->m:Ld2/j3;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ld2/t;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Ld2/j3;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ld2/j3$b;

    .line 6
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const/4 v2, 0x0

    .line 7
    invoke-direct {v1, p1, v2}, Ld2/j3$b;-><init>(Ld2/f4;Ld2/j3$a;)V

    iput-object v1, v0, Ld2/j3;->d:Ld2/j3$b;

    .line 8
    iget-object p1, v0, Ld2/j3;->c:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 9
    invoke-static {p1}, Ld2/i3;->v(Ljava/lang/Runnable;)Z

    .line 10
    iget-object p1, v0, Ld2/j3;->c:Ljava/lang/Runnable;

    invoke-static {p1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, v0, Ld2/j3;->b:Ljava/lang/Runnable;

    invoke-static {p1}, Ld2/i3;->v(Ljava/lang/Runnable;)Z

    .line 12
    iget-object p1, v0, Ld2/j3;->b:Ljava/lang/Runnable;

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 13
    iget-wide v0, v0, Ld2/f1;->U:J

    .line 14
    invoke-static {p1, v0, v1}, Ld2/i3;->k(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
