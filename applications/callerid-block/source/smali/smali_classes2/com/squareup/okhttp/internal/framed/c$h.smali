.class public Lcom/squareup/okhttp/internal/framed/c$h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/Socket;

.field private c:Lcom/squareup/okhttp/internal/framed/i;

.field private d:Lcom/squareup/okhttp/Protocol;

.field private e:Lcom/squareup/okhttp/internal/framed/l;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/net/Socket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/squareup/okhttp/internal/framed/i;->a:Lcom/squareup/okhttp/internal/framed/i;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$h;->c:Lcom/squareup/okhttp/internal/framed/i;

    sget-object v0, Lcom/squareup/okhttp/Protocol;->d:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$h;->d:Lcom/squareup/okhttp/Protocol;

    sget-object v0, Lcom/squareup/okhttp/internal/framed/l;->a:Lcom/squareup/okhttp/internal/framed/l;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$h;->e:Lcom/squareup/okhttp/internal/framed/l;

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$h;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/framed/c$h;->f:Z

    iput-object p3, p0, Lcom/squareup/okhttp/internal/framed/c$h;->b:Ljava/net/Socket;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/framed/c$h;)Lcom/squareup/okhttp/Protocol;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/c$h;->d:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/framed/c$h;)Lcom/squareup/okhttp/internal/framed/l;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/c$h;->e:Lcom/squareup/okhttp/internal/framed/l;

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/framed/c$h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/c$h;->f:Z

    return p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/framed/c$h;)Lcom/squareup/okhttp/internal/framed/i;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/c$h;->c:Lcom/squareup/okhttp/internal/framed/i;

    return-object p0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/framed/c$h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/c$h;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/framed/c$h;)Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/c$h;->b:Ljava/net/Socket;

    return-object p0
.end method


# virtual methods
.method public g()Lcom/squareup/okhttp/internal/framed/c;
    .locals 2

    new-instance v0, Lcom/squareup/okhttp/internal/framed/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/framed/c;-><init>(Lcom/squareup/okhttp/internal/framed/c$h;Lcom/squareup/okhttp/internal/framed/c$a;)V

    return-object v0
.end method

.method public h(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/framed/c$h;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$h;->d:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method
