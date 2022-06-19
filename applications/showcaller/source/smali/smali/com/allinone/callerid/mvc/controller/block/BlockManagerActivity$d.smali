.class Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;
.super Ljava/lang/Object;
.source "BlockManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    const v1, 0x7f04011b

    const v2, 0x7f06003a

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;I)I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->b0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    const v1, 0x7f090616

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->Z(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    const v1, 0x7f09035b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->l0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    const v1, 0x7f090365

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->n0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    const v1, 0x7f090252

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->k0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->m0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08015b

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->p0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity$d;->d:Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;->q0(Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;)V

    return-void
.end method
