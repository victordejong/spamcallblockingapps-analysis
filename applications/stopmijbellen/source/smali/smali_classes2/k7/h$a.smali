.class public Lk7/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/h;->c(Ljava/net/InetSocketAddress;Ll7/b;)Lm7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm7/d<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll7/b;

.field public final synthetic b:Lm7/g;

.field public final synthetic c:Ljava/net/InetSocketAddress;

.field public final synthetic d:Lk7/h;


# direct methods
.method public constructor <init>(Lk7/h;Ll7/b;Lm7/g;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/h$a;->d:Lk7/h;

    iput-object p2, p0, Lk7/h$a;->a:Ll7/b;

    iput-object p3, p0, Lk7/h$a;->b:Lm7/g;

    iput-object p4, p0, Lk7/h$a;->c:Ljava/net/InetSocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Ljava/net/InetAddress;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lk7/h$a;->a:Ll7/b;

    invoke-interface {p2, p1, v0}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    .line 3
    iget-object p2, p0, Lk7/h$a;->b:Lm7/g;

    .line 4
    invoke-virtual {p2, p1, v0, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lk7/h$a;->b:Lm7/g;

    iget-object v1, p0, Lk7/h$a;->d:Lk7/h;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lk7/h$a;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {v2, p2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object p2, p0, Lk7/h$a;->a:Ll7/b;

    invoke-virtual {v1, v2, p2}, Lk7/h;->b(Ljava/net/InetSocketAddress;Ll7/b;)Lm7/a;

    move-result-object p2

    check-cast p2, Lk7/h$e;

    .line 6
    invoke-virtual {p1, p2, v0}, Lm7/g;->m(Lm7/c;Lm7/g$b;)Lm7/c;

    :goto_0
    return-void
.end method
