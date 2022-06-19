.class Lcom/allinone/callerid/start/AnsweredActivity$d;
.super Ljava/lang/Object;
.source "AnsweredActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/AnsweredActivity;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/AnsweredActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/AnsweredActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$d;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/allinone/callerid/util/a1;->d0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$d;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/AnsweredActivity;->Z(Lcom/allinone/callerid/start/AnsweredActivity;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$d;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$d;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/AnsweredActivity;->a0(Lcom/allinone/callerid/start/AnsweredActivity;)I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity$d;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    const-class v1, Lcom/allinone/callerid/mvc/controller/recommend/RecommendActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity$d;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
