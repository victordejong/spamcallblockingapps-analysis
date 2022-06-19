.class public Ld2/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/u0;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ld2/u0;


# direct methods
.method public constructor <init>(Ld2/u0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/u0$a;->b:Ld2/u0;

    iput-object p2, p0, Ld2/u0$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->s()Ld2/l;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ld2/l;->d:Ld2/f4;

    .line 3
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    const-string v2, "os_name"

    const-string v3, "android"

    .line 4
    invoke-static {v0, v2, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ld2/f1;->b()Ld2/o2;

    move-result-object v3

    .line 7
    iget-object v3, v3, Ld2/o2;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "filepath"

    .line 9
    invoke-static {v1, v3, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "info"

    .line 10
    invoke-static {v1, v2, v0}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    const-string v0, "m_origin"

    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v0, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 12
    iget-object v0, p0, Ld2/u0$a;->b:Ld2/u0;

    .line 13
    iget v3, v0, Ld2/u0;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Ld2/u0;->e:I

    const-string v0, "m_id"

    .line 14
    invoke-static {v1, v0, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v0, "m_type"

    const-string v3, "Controller.create"

    .line 15
    invoke-static {v1, v0, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    new-instance v0, Ld2/t0;

    invoke-direct {v0, v1}, Ld2/t0;-><init>(Ld2/f4;)V

    .line 17
    :try_start_0
    new-instance v1, Ld2/x3;

    iget-object v3, p0, Ld2/u0$a;->a:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Ld2/x3;-><init>(Landroid/content/Context;IZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-virtual {v1, v4, v0}, Ld2/x3;->m(ZLd2/t0;)V

    return-void

    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": during WebView initialization."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Disabling AdColony."

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->p()Ld2/h0;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v2, v2, v0, v2}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 27
    invoke-static {}, Ld2/b;->i()Z

    return-void
.end method
