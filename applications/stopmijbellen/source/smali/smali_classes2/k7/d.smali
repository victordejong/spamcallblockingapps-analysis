.class public final Lk7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# instance fields
.field public final synthetic a:Lk7/c$g;


# direct methods
.method public constructor <init>(Lk7/c$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/d;->a:Lk7/c$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Lk7/d;->a:Lk7/c$g;

    check-cast v1, Ln7/m;

    .line 2
    iget-object v1, v1, Ln7/m;->a:Ll7/b;

    invoke-interface {v1, p1, v0}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lk7/d;->a:Lk7/c$g;

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "socket closed during handshake"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ln7/m;

    .line 4
    iget-object p1, p1, Ln7/m;->a:Ll7/b;

    invoke-interface {p1, v1, v0}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    :goto_0
    return-void
.end method
