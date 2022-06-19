.class public Lk7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lm7/g;

.field public final synthetic c:Lk7/h;


# direct methods
.method public constructor <init>(Lk7/h;Ljava/lang/String;Lm7/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/i;->c:Lk7/h;

    iput-object p2, p0, Lk7/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lk7/i;->b:Lm7/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lk7/i;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 2
    sget-object v3, Lk7/h;->g:Ljava/util/Comparator;

    .line 3
    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    if-eqz v2, :cond_0

    .line 4
    array-length v3, v2

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lk7/i;->c:Lk7/h;

    new-instance v4, Lk7/i$a;

    invoke-direct {v4, p0, v2}, Lk7/i$a;-><init>(Lk7/i;[Ljava/net/InetAddress;)V

    .line 6
    invoke-virtual {v3, v4, v0, v1}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Lcom/koushikdutta/async/HostnameResolutionException;

    const-string v3, "no addresses for host"

    invoke-direct {v2, v3}, Lcom/koushikdutta/async/HostnameResolutionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 8
    iget-object v3, p0, Lk7/i;->c:Lk7/h;

    new-instance v4, Lk7/i$b;

    invoke-direct {v4, p0, v2}, Lk7/i$b;-><init>(Lk7/i;Ljava/lang/Exception;)V

    .line 9
    invoke-virtual {v3, v4, v0, v1}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    :goto_0
    return-void
.end method
