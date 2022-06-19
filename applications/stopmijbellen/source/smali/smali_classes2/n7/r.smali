.class public final synthetic Ln7/r;
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

    iput-object p1, p0, Ln7/r;->a:Ln7/s;

    iput p2, p0, Ln7/r;->b:I

    iput-object p3, p0, Ln7/r;->c:Ln7/g$a;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lm7/c;
    .locals 8

    iget-object v0, p0, Ln7/r;->a:Ln7/s;

    iget v1, p0, Ln7/r;->b:I

    iget-object v2, p0, Ln7/r;->c:Ln7/g$a;

    check-cast p1, Ljava/net/InetAddress;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v3, Lm7/g;

    invoke-direct {v3}, Lm7/g;-><init>()V

    .line 2
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "%s:%s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3
    iget-object v2, v2, Ln7/g$e;->b:Ln7/h;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attempting connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ln7/h;->e(Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Ln7/s;->d:Ln7/a;

    .line 5
    iget-object v0, v0, Ln7/a;->d:Lk7/h;

    .line 6
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance p1, Ly2/p;

    invoke-direct {p1, v3}, Ly2/p;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, p1}, Lk7/h;->c(Ljava/net/InetSocketAddress;Ll7/b;)Lm7/a;

    return-object v3
.end method
