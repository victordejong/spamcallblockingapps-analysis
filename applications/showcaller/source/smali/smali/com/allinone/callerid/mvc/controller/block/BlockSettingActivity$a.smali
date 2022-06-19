.class Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;
.super Ljava/lang/Object;
.source "BlockSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/graphics/Typeface;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->d:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f04011b

    const v2, 0x7f06003a

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;I)I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f090617

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v2, 0x7f090252

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f08015b

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :cond_0
    new-instance v2, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f090619

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f09061a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f090622

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f09061e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f0904c9

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->b0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f0904cc

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->f0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->g0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f090509

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->h0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f0903a8

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->i0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f090231

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v2, 0x7f090232

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 19
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v3, 0x7f0907a9

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 20
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    iget-object v3, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f0902ea

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 25
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f0905b0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->k0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->j0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f0907aa

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->m0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->l0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f0905a6

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->o0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f0905af

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->q0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->p0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f0905b1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->a0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    const v1, 0x7f0905b3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->d0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->n0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$b;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->Z(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$c;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->c0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)Landroid/widget/Switch;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a$d;-><init>(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->r0()V

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->t0()V

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->u0()V

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity$a;->e:Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;->e0(Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;)V

    return-void
.end method
