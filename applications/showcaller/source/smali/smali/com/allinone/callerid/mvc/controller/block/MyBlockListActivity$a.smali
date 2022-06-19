.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const v1, 0x7f0901b4

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->O0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Lcom/github/clans/fab/FloatingActionButton;)Lcom/github/clans/fab/FloatingActionButton;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelTextType(Landroid/graphics/Typeface;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->N0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const v1, 0x7f090616

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->R0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const v1, 0x7f090362

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->T0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const v1, 0x7f090252

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->a0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->b0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Z(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const v1, 0x7f09035a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->h0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->g0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$b;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->S0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a$c;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const v1, 0x7f0904ee

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->k0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const v1, 0x7f090615

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->l0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Q0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->P0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    new-instance v1, Lcom/allinone/callerid/util/m;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/allinone/callerid/util/m;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->n0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Lcom/allinone/callerid/util/m;)Lcom/allinone/callerid/util/m;

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    const v1, 0x7f09043a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->q0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v2, v3}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;-><init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->E0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->s0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->p0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->B0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$q;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->t0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    return-void
.end method
