.class public Ld2/f1$i;
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
    iput-object p1, p0, Ld2/f1$i;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/f1$i;->a:Ld2/f1;

    .line 2
    iget-boolean v0, v0, Ld2/f1;->S:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ld2/r1;->c()Ld2/r1;

    move-result-object v0

    new-instance v1, Ld2/f1$i$a;

    invoke-direct {v1, p0, p1}, Ld2/f1$i$a;-><init>(Ld2/f1$i;Ld2/t0;)V

    iget-object p1, p0, Ld2/f1$i;->a:Ld2/f1;

    .line 4
    iget-wide v2, p1, Ld2/f1;->R:J

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Ld2/r1;->b(Ld2/a;J)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ld2/r1;->c()Ld2/r1;

    move-result-object v0

    .line 7
    iget-object v0, v0, Ld2/r1;->c:Ld2/w1;

    .line 8
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ld2/w1;->a()Ld2/f4;

    move-result-object v0

    const-string v2, "odt"

    invoke-static {v1, v2, v0}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    .line 10
    :cond_1
    invoke-virtual {p1, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    :goto_0
    return-void
.end method
