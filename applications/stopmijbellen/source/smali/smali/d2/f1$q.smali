.class public Ld2/f1$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1;->g(Ld2/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f1$q;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/f1$q;->a:Ld2/f1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ld2/t;->a:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v3, p1, Ld2/t0;->b:Ld2/f4;

    const-string v4, "id"

    .line 5
    iget-object v5, v3, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iget-object v3, v3, Ld2/f4;->a:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v3, :cond_1

    .line 7
    :try_start_2
    iget-object v3, v0, Ld2/f1;->a:Ld2/u0;

    invoke-virtual {v3}, Ld2/u0;->g()I

    move-result v3

    .line 8
    :cond_1
    invoke-virtual {v0, v3}, Ld2/f1;->h(I)Z

    .line 9
    iget-object v3, p1, Ld2/t0;->b:Ld2/f4;

    const-string v4, "is_display_module"

    .line 10
    invoke-static {v3, v4}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v3

    .line 11
    new-instance v4, Ld2/h1;

    invoke-direct {v4, v0, v1, v3, p1}, Ld2/h1;-><init>(Ld2/f1;Landroid/content/Context;ZLd2/t0;)V

    invoke-static {v4}, Ld2/i3;->s(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": during WebView initialization."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Disabling AdColony."

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v2, v2, p1, v2}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 21
    invoke-static {}, Ld2/b;->i()Z

    :goto_0
    return-void
.end method
