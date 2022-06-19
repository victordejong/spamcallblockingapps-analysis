.class public final synthetic Ln7/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/i;


# instance fields
.field public final synthetic a:Ln7/s;

.field public final synthetic b:I

.field public final synthetic c:Ln7/g$a;


# direct methods
.method public synthetic constructor <init>(Ln7/s;ILn7/g$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/q;->a:Ln7/s;

    iput p2, p0, Ln7/q;->b:I

    iput-object p3, p0, Ln7/q;->c:Ln7/g$a;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lm7/c;
    .locals 4

    iget-object v0, p0, Ln7/q;->a:Ln7/s;

    iget v1, p0, Ln7/q;->b:I

    iget-object v2, p0, Ln7/q;->c:Ln7/g$a;

    check-cast p1, [Ljava/net/InetAddress;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v3, Ln7/r;

    invoke-direct {v3, v0, v1, v2}, Ln7/r;-><init>(Ln7/s;ILn7/g$a;)V

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Lm7/g;

    invoke-direct {v0}, Lm7/g;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v3, v0, v1}, Lm7/e;->a(Ljava/util/Iterator;Lm7/i;Lm7/g;Ljava/lang/Exception;)V

    return-object v0
.end method
