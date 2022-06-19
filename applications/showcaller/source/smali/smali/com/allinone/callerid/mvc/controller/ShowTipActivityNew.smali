.class public Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "ShowTipActivityNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/view/animation/Animation;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/RelativeLayout;

.field private E:Landroid/widget/RelativeLayout;

.field private F:Landroid/widget/RelativeLayout;

.field private G:I

.field private H:Landroid/view/animation/Animation;

.field private I:Landroid/view/animation/Animation;

.field private J:Landroid/view/animation/Animation;

.field private K:Landroid/widget/RelativeLayout;

.field private L:Landroid/widget/CheckBox;

.field private M:Landroid/widget/ImageView;

.field private N:Landroid/view/animation/Animation;

.field private O:Landroid/view/animation/Animation;

.field private P:Landroid/view/animation/Animation;

.field private Q:Landroid/view/animation/Animation;

.field private R:Landroid/view/animation/Animation;

.field private S:Landroid/view/animation/Animation;

.field private T:Landroid/view/animation/Animation;

.field private U:Landroid/view/animation/Animation;

.field private V:Landroid/view/animation/Animation;

.field private W:Landroid/view/animation/Animation;

.field private X:Landroid/view/animation/Animation;

.field private Y:Landroid/view/animation/Animation;

.field private Z:Landroid/widget/RelativeLayout;

.field private a0:Landroid/widget/RelativeLayout;

.field private b0:Landroid/os/Handler;

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "ShowTipActivityNew"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->u:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->G:I

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->b0:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->Z:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private B0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01004c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->a0:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private C()V
    .locals 4

    const v0, 0x7f0902c4

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->v:Landroid/widget/ImageView;

    const v0, 0x7f0902c2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->w:Landroid/widget/ImageView;

    const v0, 0x7f0902e6

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->M:Landroid/widget/ImageView;

    const v0, 0x7f0904f9

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->a0:Landroid/widget/RelativeLayout;

    .line 5
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->B0()V

    const v0, 0x7f09050f

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->D:Landroid/widget/RelativeLayout;

    const v0, 0x7f090510

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->E:Landroid/widget/RelativeLayout;

    const v0, 0x7f090511

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->F:Landroid/widget/RelativeLayout;

    const v0, 0x7f09023b

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->Z:Landroid/widget/RelativeLayout;

    const v0, 0x7f0902fa

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->y:Landroid/widget/ImageView;

    const v0, 0x7f0901f9

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->z:Landroid/widget/FrameLayout;

    const v0, 0x7f090236

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->A:Landroid/widget/LinearLayout;

    const v0, 0x7f0907a6

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0906d4

    .line 14
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->x:Landroid/widget/TextView;

    const v1, 0x7f090699

    .line 15
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->C:Landroid/widget/TextView;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1234 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->x:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->C:Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906f2

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0906f1

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0901e6

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->K:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900cb

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->L:Landroid/widget/CheckBox;

    .line 24
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->L:Landroid/widget/CheckBox;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$m;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$m;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f010015

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$n;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$n;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 29
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const v2, 0x7f01001c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->B:Landroid/view/animation/Animation;

    .line 30
    new-instance v2, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$o;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 31
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const v2, 0x7f01000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->R:Landroid/view/animation/Animation;

    .line 32
    new-instance v3, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$p;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$p;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 33
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->U:Landroid/view/animation/Animation;

    .line 34
    new-instance v3, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$q;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$q;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 35
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->Y:Landroid/view/animation/Animation;

    .line 36
    new-instance v3, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$r;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$r;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 37
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->S:Landroid/view/animation/Animation;

    .line 38
    new-instance v2, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$s;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$s;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 39
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const v2, 0x7f01000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->T:Landroid/view/animation/Animation;

    .line 40
    new-instance v2, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$t;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$t;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 41
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const v2, 0x7f010020

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->X:Landroid/view/animation/Animation;

    .line 42
    new-instance v2, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$a;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$a;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const v2, 0x7f01001d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->H:Landroid/view/animation/Animation;

    .line 44
    new-instance v3, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$b;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$b;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 45
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->v:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f01001e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->I:Landroid/view/animation/Animation;

    .line 47
    new-instance v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 48
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f010011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->V:Landroid/view/animation/Animation;

    .line 49
    new-instance v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$d;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 50
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f010012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->W:Landroid/view/animation/Animation;

    .line 51
    new-instance v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$e;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 52
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->J:Landroid/view/animation/Animation;

    .line 53
    new-instance v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 54
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f010023

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->N:Landroid/view/animation/Animation;

    .line 55
    new-instance v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$g;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$g;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 56
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f01000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->O:Landroid/view/animation/Animation;

    .line 57
    new-instance v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$h;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$h;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 58
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f010024

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->P:Landroid/view/animation/Animation;

    .line 59
    new-instance v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$i;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$i;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 60
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v1, 0x7f01000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->Q:Landroid/view/animation/Animation;

    .line 61
    new-instance v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private C0()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->b0:Landroid/os/Handler;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$l;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$l;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "fake_call_per_tip"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->C()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->D:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->v:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->T:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->I:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->R:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->X:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->S:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->G:I

    return p1
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->N:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->M:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->A:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->U:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->Y:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->V:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->O:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->P:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->Q:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic q0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->W:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic r0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic s0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic t0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->K:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic u0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->B:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic v0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic w0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->b0:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic x0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->E:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic y0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->z:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic z0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->F:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901f9

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->G:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "fake_call_next1"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->z:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->H:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "fake_call_next2"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->z:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->J:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "fake_call_got_it"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_3

    .line 9
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->L:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "checkPermission_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 12
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 15
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->C0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0062

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$k;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$k;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    iget p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->G:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "fake_call_close"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    return-void
.end method
