.class public final synthetic Ly2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly2/q;->a:I

    iput-object p1, p0, Ly2/q;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Ly2/q;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ly2/q;->b:Ljava/lang/Object;

    check-cast v0, Lk7/k;

    invoke-virtual {v0}, Lk7/k;->j()V

    return-void

    :pswitch_1
    iget-object v0, p0, Ly2/q;->b:Ljava/lang/Object;

    check-cast v0, Ly2/r;

    .line 1
    iget-object v1, v0, Ly2/r;->d:La3/a;

    new-instance v2, Ly2/p;

    invoke-direct {v2, v0}, Ly2/p;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, La3/a;->d(La3/a$a;)Ljava/lang/Object;

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Ly2/q;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    .line 3
    :try_start_0
    new-instance v1, Lh8/g;

    invoke-direct {v1}, Lh8/g;-><init>()V

    .line 4
    invoke-static {v0}, Lh8/q;->t(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "g^y$j"

    const/4 v4, 0x0

    .line 5
    invoke-static {v2, v3, v4}, Lf8/g;->q(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 6
    iput-object v2, v1, Lh8/g;->d:Ljava/lang/String;

    .line 7
    iput-object v0, v1, Lh8/g;->c:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, v1, Lh8/g;->e:Ljava/sql/Date;

    .line 9
    invoke-virtual {v1}, Lb9/a;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
