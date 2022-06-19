.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Y(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->c0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->Z(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f08027c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->u0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/List;)Ljava/util/List;

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f09029c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/customview/BaseEditText;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f0902c9

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->L0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->v:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->X(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f090563

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->w:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->b1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f090466

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->i1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f09052b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y:Landroid/widget/ListView;

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f09052a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->k1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f0905a9

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->D:Landroid/widget/LinearLayout;

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f0905a4

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->E:Landroid/widget/FrameLayout;

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f0905aa

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->F:Landroid/widget/TextView;

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f090748

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->m1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f0907f3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->o1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f0907f5

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->q1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f0907f2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->b0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f0907f6

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->e0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->X(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->X(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f0905a8

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->J:Landroid/widget/TextView;

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->J:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->X(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    const v1, 0x7f09043b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->g0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->h0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->l0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/util/List;Ljava/util/HashMap;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    new-instance v1, Lcom/allinone/callerid/b/b0/a;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-direct {v1, v2}, Lcom/allinone/callerid/b/b0/a;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->n0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Lcom/allinone/callerid/b/b0/a;)Lcom/allinone/callerid/b/b0/a;

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->j1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->m0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Lcom/allinone/callerid/b/b0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->m0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Lcom/allinone/callerid/b/b0/a;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/b/b0/a;->c(Lcom/allinone/callerid/b/b0/a$c;)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->r0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->r1()V

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    new-instance v1, Lcom/allinone/callerid/b/b0/b;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v3, v2, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->z:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/allinone/callerid/b/b0/b;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    iget-object v1, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->y:Landroid/widget/ListView;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->B:Lcom/allinone/callerid/b/b0/b;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->E1()V

    .line 36
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$a;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->t0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V

    return-void
.end method
