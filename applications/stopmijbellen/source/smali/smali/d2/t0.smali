.class public Ld2/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ld2/f4;


# direct methods
.method public constructor <init>(Ld2/f4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    iput-object p1, p0, Ld2/t0;->b:Ld2/f4;

    const-string v0, "m_type"

    .line 3
    invoke-virtual {p1, v0}, Ld2/f4;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld2/t0;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "JSON Error in ADCMessage constructor: "

    .line 4
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8
    invoke-static {v1, v1, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    :try_start_0
    iput-object p1, p0, Ld2/t0;->a:Ljava/lang/String;

    .line 11
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    iput-object p1, p0, Ld2/t0;->b:Ld2/f4;

    const-string v0, "m_target"

    .line 12
    invoke-virtual {p1, v0, p2}, Ld2/f4;->b(Ljava/lang/String;I)Ld2/f4;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "JSON Error in ADCMessage constructor: "

    .line 13
    invoke-static {p2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 17
    invoke-static {v0, v0, p1, p2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILd2/f4;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    :try_start_0
    iput-object p1, p0, Ld2/t0;->a:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 20
    new-instance p3, Ld2/f4;

    invoke-direct {p3}, Ld2/f4;-><init>()V

    .line 21
    :cond_0
    iput-object p3, p0, Ld2/t0;->b:Ld2/f4;

    const-string p1, "m_target"

    .line 22
    invoke-virtual {p3, p1, p2}, Ld2/f4;->b(Ljava/lang/String;I)Ld2/f4;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "JSON Error in ADCMessage constructor: "

    .line 23
    invoke-static {p2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 24
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 27
    invoke-static {p3, p3, p1, p2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ld2/f4;)Ld2/t0;
    .locals 5

    const-string v0, "m_id"

    .line 1
    :try_start_0
    new-instance v1, Ld2/t0;

    const-string v2, "reply"

    iget-object v3, p0, Ld2/t0;->b:Ld2/f4;

    const-string v4, "m_origin"

    invoke-virtual {v3, v4}, Ld2/f4;->f(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3, p1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    .line 2
    iget-object p1, v1, Ld2/t0;->b:Ld2/f4;

    iget-object v2, p0, Ld2/t0;->b:Ld2/f4;

    invoke-virtual {v2, v0}, Ld2/f4;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ld2/f4;->b(Ljava/lang/String;I)Ld2/f4;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "JSON error in ADCMessage\'s createReply(): "

    .line 3
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2, v2, p1, v1}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 9
    new-instance p1, Ld2/t0;

    const-string v0, "JSONException"

    invoke-direct {p1, v0, v2}, Ld2/t0;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/t0;->a:Ljava/lang/String;

    iget-object v1, p0, Ld2/t0;->b:Ld2/f4;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    :cond_0
    const-string v2, "m_type"

    .line 3
    invoke-static {v1, v2, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->q()Ld2/u0;

    move-result-object v0

    invoke-virtual {v0, v1}, Ld2/u0;->f(Ld2/f4;)V

    return-void
.end method
