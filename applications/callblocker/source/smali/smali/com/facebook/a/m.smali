.class public Lcom/facebook/a/m;
.super Ljava/lang/Object;
.source "InternalAppEventsLogger.java"


# instance fields
.field private a:Lcom/facebook/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/facebook/a/h;

    invoke-direct {v0, p1, v1, v1}, Lcom/facebook/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a;)V

    iput-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/facebook/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/a;)V

    iput-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/a;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/facebook/a/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/a;)V

    iput-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    .line 60
    return-void
.end method

.method public static a()Lcom/facebook/a/g$a;
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/facebook/a/h;->a()Lcom/facebook/a/g$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {p0}, Lcom/facebook/a/p;->a(Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method static c()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/facebook/a/h;->g()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/facebook/a/h;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    invoke-virtual {v0, p1, v1, v1}, Lcom/facebook/a/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 106
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/a/h;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 72
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/a/h;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 112
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/a/h;->a(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 100
    :cond_0
    return-void
.end method

.method public a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/h;->a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 83
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    invoke-virtual {v0}, Lcom/facebook/a/h;->b()V

    .line 126
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/facebook/a/m;->a:Lcom/facebook/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/facebook/a/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 118
    :cond_0
    return-void
.end method
