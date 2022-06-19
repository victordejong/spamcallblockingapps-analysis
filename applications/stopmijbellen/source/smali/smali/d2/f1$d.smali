.class public Ld2/f1$d;
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


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 5

    .line 1
    iget-object v0, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "number"

    .line 2
    invoke-static {v0, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v0

    .line 3
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 4
    sget-object v2, Ld2/i3;->a:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance v2, Ld2/d4;

    invoke-direct {v2}, Ld2/d4;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 6
    invoke-static {}, Ld2/i3;->e()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v2, v4}, Ld2/d4;->b(Ljava/lang/String;)Ld2/d4;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "uuids"

    .line 8
    invoke-static {v1, v0, v2}, Ld2/e4;->g(Ld2/f4;Ljava/lang/String;Ld2/d4;)Z

    .line 9
    invoke-virtual {p1, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    return-void
.end method
