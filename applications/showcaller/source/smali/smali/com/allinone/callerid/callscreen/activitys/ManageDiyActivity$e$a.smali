.class Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;
.super Ljava/lang/Object;
.source "ManageDiyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->k0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;Z)Z

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->Z(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x7f08015a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->a0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->c0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->h0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    iget-object v2, v2, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10020e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->g0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->Y(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Lcom/allinone/callerid/d/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/d/a/c;->H(Z)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.allinone.callerid.REFRESH_HOME_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e$a;->d:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    iget-object v0, v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;->e:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;

    invoke-static {v0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->d0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V

    return-void
.end method
