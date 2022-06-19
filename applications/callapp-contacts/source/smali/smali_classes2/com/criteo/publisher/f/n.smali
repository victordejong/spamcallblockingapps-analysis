.class final Lcom/criteo/publisher/f/n;
.super Lcom/criteo/publisher/f/w;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/f/w;

.field private final b:Lcom/criteo/publisher/m0/g;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f/w;Lcom/criteo/publisher/m0/g;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/criteo/publisher/f/w;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/criteo/publisher/f/n;->a:Lcom/criteo/publisher/f/w;

    .line 36
    iput-object p2, p0, Lcom/criteo/publisher/f/n;->b:Lcom/criteo/publisher/m0/g;

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/criteo/publisher/f/s;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/criteo/publisher/f/n;->a:Lcom/criteo/publisher/f/w;

    invoke-virtual {v0}, Lcom/criteo/publisher/f/w;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;Lcom/criteo/publisher/f/u;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/criteo/publisher/f/n;->a:Lcom/criteo/publisher/f/w;

    invoke-virtual {v0, p1, p2}, Lcom/criteo/publisher/f/w;->a(Ljava/lang/String;Lcom/criteo/publisher/f/u;)V

    return-void
.end method

.method final a(Ljava/lang/String;Lcom/criteo/publisher/f/w$a;)V
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/criteo/publisher/f/n;->a:Lcom/criteo/publisher/f/w;

    invoke-virtual {v0}, Lcom/criteo/publisher/f/w;->b()I

    move-result v0

    const v1, 0xc000

    if-lt v0, v1, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/f/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/f/n;->a:Lcom/criteo/publisher/f/w;

    invoke-virtual {v0, p1, p2}, Lcom/criteo/publisher/f/w;->a(Ljava/lang/String;Lcom/criteo/publisher/f/w$a;)V

    return-void
.end method

.method final a(Ljava/lang/String;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/criteo/publisher/f/n;->a:Lcom/criteo/publisher/f/w;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/f/w;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final b()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/f/n;->a:Lcom/criteo/publisher/f/w;

    invoke-virtual {v0}, Lcom/criteo/publisher/f/w;->b()I

    move-result v0

    return v0
.end method
