.class public final Lsk0$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk0;->w(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-wide p1, p0, Lsk0$d;->a:J

    iput-object p3, p0, Lsk0$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lsk0$d;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lsk0;->h()Lal0;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lal0;

    iget-wide v2, p0, Lsk0$d;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lal0;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lsk0;->i(Lal0;)Lal0;

    iget-object v0, p0, Lsk0$d;->b:Ljava/lang/String;

    invoke-static {}, Lsk0;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsk0$d;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lbl0;->c(Ljava/lang/String;Lcl0;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lsk0;->h()Lal0;

    move-result-object v0

    invoke-virtual {v0}, Lal0;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lsk0$d;->a:J

    invoke-static {}, Lsk0;->h()Lal0;

    move-result-object v0

    invoke-virtual {v0}, Lal0;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Lsk0;->k()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lsk0$d;->b:Ljava/lang/String;

    invoke-static {}, Lsk0;->h()Lal0;

    move-result-object v2

    invoke-static {}, Lsk0;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lbl0;->e(Ljava/lang/String;Lal0;Ljava/lang/String;)V

    iget-object v0, p0, Lsk0$d;->b:Ljava/lang/String;

    invoke-static {}, Lsk0;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsk0$d;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lbl0;->c(Ljava/lang/String;Lcl0;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lal0;

    iget-wide v2, p0, Lsk0$d;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lal0;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v0}, Lsk0;->i(Lal0;)Lal0;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    invoke-static {}, Lsk0;->h()Lal0;

    move-result-object v0

    invoke-virtual {v0}, Lal0;->i()V

    :cond_2
    :goto_0
    invoke-static {}, Lsk0;->h()Lal0;

    move-result-object v0

    iget-wide v1, p0, Lsk0$d;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lal0;->j(Ljava/lang/Long;)V

    invoke-static {}, Lsk0;->h()Lal0;

    move-result-object v0

    invoke-virtual {v0}, Lal0;->k()V

    return-void
.end method
