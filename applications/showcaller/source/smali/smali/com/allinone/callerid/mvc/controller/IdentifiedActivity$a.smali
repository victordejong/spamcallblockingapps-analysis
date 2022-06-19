.class Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$a;
.super Ljava/lang/Object;
.source "IdentifiedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$a;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$a;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    const v1, 0x7f09079a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$a;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    const v2, 0x7f090252

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$a;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f08015b

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :cond_0
    new-instance v2, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$a$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity$a;->d:Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;->X(Lcom/allinone/callerid/mvc/controller/IdentifiedActivity;)V

    return-void
.end method
