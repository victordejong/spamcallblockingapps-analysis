.class Lcom/allinone/callerid/g/b$a$a;
.super Ljava/lang/Object;
.source "EZBlockFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/b$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/b$a$a;->d:Lcom/allinone/callerid/g/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/b$a$a;->d:Lcom/allinone/callerid/g/b$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/allinone/callerid/g/b;->b2(Lcom/allinone/callerid/g/b;I)I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/b$a$a;->d:Lcom/allinone/callerid/g/b$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    invoke-static {v0}, Lcom/allinone/callerid/g/b;->n2(Lcom/allinone/callerid/g/b;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/b$a$a;->d:Lcom/allinone/callerid/g/b$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    invoke-static {v0}, Lcom/allinone/callerid/g/b;->d2(Lcom/allinone/callerid/g/b;)Lcom/allinone/callerid/customview/CirclePercentView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/g/b$a$a;->d:Lcom/allinone/callerid/g/b$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    invoke-static {v0}, Lcom/allinone/callerid/g/b;->p2(Lcom/allinone/callerid/g/b;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/g/b$a$a;->d:Lcom/allinone/callerid/g/b$a;

    iget-object v2, v2, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    invoke-static {v2}, Lcom/allinone/callerid/g/b;->o2(Lcom/allinone/callerid/g/b;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/i;->f(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->P0(J)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/g/b$a$a;->d:Lcom/allinone/callerid/g/b$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/b$a;->d:Lcom/allinone/callerid/g/b;

    invoke-static {v0}, Lcom/allinone/callerid/g/b;->m2(Lcom/allinone/callerid/g/b;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/g/b;->q2(Lcom/allinone/callerid/g/b;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
