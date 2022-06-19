.class public final Lu2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr2/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lu2/i;

.field public final b:Ljava/lang/String;

.field public final c:Lr2/b;

.field public final d:Lr2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/e<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field public final e:Lu2/l;


# direct methods
.method public constructor <init>(Lu2/i;Ljava/lang/String;Lr2/b;Lr2/e;Lu2/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/i;",
            "Ljava/lang/String;",
            "Lr2/b;",
            "Lr2/e<",
            "TT;[B>;",
            "Lu2/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu2/k;->a:Lu2/i;

    .line 3
    iput-object p2, p0, Lu2/k;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lu2/k;->c:Lr2/b;

    .line 5
    iput-object p4, p0, Lu2/k;->d:Lr2/e;

    .line 6
    iput-object p5, p0, Lu2/k;->e:Lu2/l;

    return-void
.end method


# virtual methods
.method public a(Lr2/c;Lr2/h;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/c<",
            "TT;>;",
            "Lr2/h;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu2/k;->e:Lu2/l;

    .line 2
    iget-object v1, p0, Lu2/k;->a:Lu2/i;

    const-string v2, "Null transportContext"

    .line 3
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Null event"

    .line 4
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lu2/k;->b:Ljava/lang/String;

    const-string v3, "Null transportName"

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Lu2/k;->d:Lr2/e;

    const-string v4, "Null transformer"

    .line 8
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v4, p0, Lu2/k;->c:Lr2/b;

    const-string v5, "Null encoding"

    .line 10
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    check-cast v0, Lu2/m;

    .line 12
    iget-object v5, v0, Lu2/m;->c:Lx2/e;

    .line 13
    invoke-virtual {p1}, Lr2/c;->c()Lr2/d;

    move-result-object v6

    .line 14
    invoke-static {}, Lu2/i;->a()Lu2/i$a;

    move-result-object v7

    .line 15
    invoke-virtual {v1}, Lu2/i;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lu2/i$a;->b(Ljava/lang/String;)Lu2/i$a;

    .line 16
    invoke-virtual {v7, v6}, Lu2/i$a;->c(Lr2/d;)Lu2/i$a;

    .line 17
    invoke-virtual {v1}, Lu2/i;->c()[B

    move-result-object v1

    check-cast v7, Lu2/b$b;

    .line 18
    iput-object v1, v7, Lu2/b$b;->b:[B

    .line 19
    invoke-virtual {v7}, Lu2/b$b;->a()Lu2/i;

    move-result-object v1

    .line 20
    new-instance v6, Lu2/a$b;

    invoke-direct {v6}, Lu2/a$b;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 21
    iput-object v7, v6, Lu2/a$b;->f:Ljava/util/Map;

    .line 22
    iget-object v7, v0, Lu2/m;->a:Lb3/a;

    .line 23
    invoke-interface {v7}, Lb3/a;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lu2/a$b;->e(J)Lu2/f$a;

    iget-object v0, v0, Lu2/m;->b:Lb3/a;

    .line 24
    invoke-interface {v0}, Lb3/a;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lu2/a$b;->g(J)Lu2/f$a;

    .line 25
    invoke-virtual {v6, v2}, Lu2/a$b;->f(Ljava/lang/String;)Lu2/f$a;

    new-instance v0, Lu2/e;

    .line 26
    invoke-virtual {p1}, Lr2/c;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lr2/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 27
    invoke-direct {v0, v4, v2}, Lu2/e;-><init>(Lr2/b;[B)V

    invoke-virtual {v6, v0}, Lu2/a$b;->d(Lu2/e;)Lu2/f$a;

    .line 28
    invoke-virtual {p1}, Lr2/c;->a()Ljava/lang/Integer;

    move-result-object p1

    .line 29
    iput-object p1, v6, Lu2/a$b;->b:Ljava/lang/Integer;

    .line 30
    invoke-virtual {v6}, Lu2/a$b;->b()Lu2/f;

    move-result-object p1

    .line 31
    invoke-interface {v5, v1, p1, p2}, Lx2/e;->a(Lu2/i;Lu2/f;Lr2/h;)V

    return-void
.end method
