.class Lcom/unknownphone/callblocker/d/d$1;
.super Ljava/lang/Object;
.source "NetworkHelper.java"

# interfaces
.implements Lretrofit2/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/d/d;->a(Ljava/util/Map;Lcom/unknownphone/callblocker/d/d$b;)Lretrofit2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/d",
        "<",
        "Lokhttp3/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/d/d$b;

.field final synthetic b:Lcom/unknownphone/callblocker/d/d;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/d/d;Lcom/unknownphone/callblocker/d/d$b;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/unknownphone/callblocker/d/d$1;->b:Lcom/unknownphone/callblocker/d/d;

    iput-object p2, p0, Lcom/unknownphone/callblocker/d/d$1;->a:Lcom/unknownphone/callblocker/d/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lretrofit2/b;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/b",
            "<",
            "Lokhttp3/ad;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-interface {p1}, Lretrofit2/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/d/d$1;->a:Lcom/unknownphone/callblocker/d/d$b;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/unknownphone/callblocker/d/d$1;->a:Lcom/unknownphone/callblocker/d/d$b;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/d/d$b;->a(ILjava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lretrofit2/b;Lretrofit2/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/b",
            "<",
            "Lokhttp3/ad;",
            ">;",
            "Lretrofit2/l",
            "<",
            "Lokhttp3/ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-virtual {p2}, Lretrofit2/l;->c()Lokhttp3/ad;

    move-result-object v3

    .line 76
    invoke-virtual {p2}, Lretrofit2/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ad;

    .line 77
    invoke-virtual {p2}, Lretrofit2/l;->a()I

    move-result v4

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/unknownphone/callblocker/d/d$1;->a:Lcom/unknownphone/callblocker/d/d$b;

    if-eqz v2, :cond_0

    .line 80
    if-eqz v3, :cond_3

    .line 81
    iget-object v1, p0, Lcom/unknownphone/callblocker/d/d$1;->a:Lcom/unknownphone/callblocker/d/d$b;

    invoke-virtual {v3}, Lokhttp3/ad;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v1, v4, v2, v5}, Lcom/unknownphone/callblocker/d/d$b;->a(ILjava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 92
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lokhttp3/ad;->close()V

    .line 93
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/ad;->close()V

    .line 94
    :cond_2
    return-void

    .line 83
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/unknownphone/callblocker/d/d$1;->a:Lcom/unknownphone/callblocker/d/d$b;

    if-nez v0, :cond_4

    const/4 v2, 0x0

    :goto_1
    if-nez v0, :cond_5

    :goto_2
    invoke-interface {v5, v4, v2, v1}, Lcom/unknownphone/callblocker/d/d$b;->a(ILjava/lang/String;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 88
    :goto_3
    :try_start_2
    iget-object v2, p0, Lcom/unknownphone/callblocker/d/d$1;->a:Lcom/unknownphone/callblocker/d/d$b;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-interface {v2, v4, v1, v5}, Lcom/unknownphone/callblocker/d/d$b;->a(ILjava/lang/String;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 89
    :catch_1
    move-exception v1

    goto :goto_0

    .line 83
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/ad;->d()Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 86
    :catch_2
    move-exception v1

    goto :goto_3
.end method
