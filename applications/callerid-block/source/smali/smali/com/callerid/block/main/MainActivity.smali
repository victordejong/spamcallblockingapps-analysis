.class public Lcom/callerid/block/main/MainActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/main/MainActivity$r;,
        Lcom/callerid/block/main/MainActivity$q;,
        Lcom/callerid/block/main/MainActivity$v;,
        Lcom/callerid/block/main/MainActivity$t;,
        Lcom/callerid/block/main/MainActivity$u;,
        Lcom/callerid/block/main/MainActivity$s;
    }
.end annotation


# instance fields
.field private A:Lcom/callerid/block/main/MainActivity$v;

.field private B:Landroid/widget/ProgressBar;

.field private C:Lcom/rey/material/app/Dialog;

.field private D:Z

.field private E:Ljava/util/Timer;

.field private F:Ljava/util/TimerTask;

.field private G:Lcom/rey/material/widget/ImageButton;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Landroid/widget/FrameLayout;

.field private L:Landroid/widget/ImageView;

.field private M:Landroid/widget/TextView;

.field private N:Lcom/callerid/block/main/MainActivity$s;

.field private O:Lcom/callerid/block/customview/LImageButton;

.field private P:Landroid/view/View;

.field private Q:Landroidx/drawerlayout/widget/DrawerLayout;

.field private R:Landroid/widget/FrameLayout;

.field private S:Lcom/rey/material/app/Dialog;

.field private T:Landroid/content/Intent;

.field private U:Lcom/callerid/block/inapputil/GoogleBillingUtil;

.field private V:Landroid/widget/FrameLayout;

.field private W:Lcom/callerid/block/main/MainActivity$q;

.field private X:Lcom/callerid/block/main/MainActivity$r;

.field private Y:Z

.field private Z:Z

.field a0:Landroid/graphics/Typeface;

.field b0:Landroid/graphics/Typeface;

.field private c0:Lcom/google/android/gms/ads/d;

.field private d0:Lcom/google/android/gms/ads/nativead/a;

.field private e0:Landroid/widget/ImageView;

.field private f0:Landroid/os/Handler;

.field private g0:Ljava/lang/Runnable;

.field private h0:Landroid/widget/ImageView;

.field private i0:J

.field private j0:I

.field private k0:Lcom/callerid/block/e/a;

.field private l0:Landroid/view/View$OnClickListener;

.field private s:Z

.field private t:Lcom/callerid/block/customview/CustomViewPager;

.field private u:Lcom/rey/material/widget/LTabIndicator;

.field public v:I

.field public w:I

.field private x:Ljava/lang/String;

.field y:Lcom/callerid/block/bean/GameInfosVersionModel;

.field z:Lcom/rey/material/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/callerid/block/main/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/main/MainActivity;->s:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->x:Ljava/lang/String;

    new-instance v0, Lcom/callerid/block/main/MainActivity$v;

    invoke-direct {v0, p0}, Lcom/callerid/block/main/MainActivity$v;-><init>(Lcom/callerid/block/main/MainActivity;)V

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->A:Lcom/callerid/block/main/MainActivity$v;

    new-instance v0, Lcom/callerid/block/main/MainActivity$s;

    invoke-direct {v0, p0}, Lcom/callerid/block/main/MainActivity$s;-><init>(Lcom/callerid/block/main/MainActivity;)V

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->N:Lcom/callerid/block/main/MainActivity$s;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->f0:Landroid/os/Handler;

    new-instance v0, Lcom/callerid/block/main/MainActivity$n;

    invoke-direct {v0, p0}, Lcom/callerid/block/main/MainActivity$n;-><init>(Lcom/callerid/block/main/MainActivity;)V

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->g0:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/callerid/block/main/MainActivity;->j0:I

    new-instance v0, Lcom/callerid/block/main/MainActivity$b;

    invoke-direct {v0, p0}, Lcom/callerid/block/main/MainActivity$b;-><init>(Lcom/callerid/block/main/MainActivity;)V

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->l0:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic A0(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->n1()V

    return-void
.end method

.method static synthetic B0(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->b1()V

    return-void
.end method

.method static synthetic C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->t:Lcom/callerid/block/customview/CustomViewPager;

    return-object p0
.end method

.method static synthetic D0(Lcom/callerid/block/main/MainActivity;)Lcom/rey/material/widget/LTabIndicator;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->u:Lcom/rey/material/widget/LTabIndicator;

    return-object p0
.end method

.method static synthetic E0(Lcom/callerid/block/main/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/main/MainActivity;->s1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic F0(Lcom/callerid/block/main/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/main/MainActivity;->D:Z

    return p0
.end method

.method static synthetic G0(Lcom/callerid/block/main/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/main/MainActivity;->D:Z

    return p1
.end method

.method static synthetic H0(Lcom/callerid/block/main/MainActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->h0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic I0(Lcom/callerid/block/main/MainActivity;)Lcom/google/android/gms/ads/d;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->c0:Lcom/google/android/gms/ads/d;

    return-object p0
.end method

.method static synthetic J0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/e/a;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->k0:Lcom/callerid/block/e/a;

    return-object p0
.end method

.method static synthetic K0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/inapputil/GoogleBillingUtil;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->U:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    return-object p0
.end method

.method static synthetic L0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/main/MainActivity$s;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->N:Lcom/callerid/block/main/MainActivity$s;

    return-object p0
.end method

.method static synthetic M0(Lcom/callerid/block/main/MainActivity;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->T:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic N0(Lcom/callerid/block/main/MainActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->T:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic O0(Lcom/callerid/block/main/MainActivity;Lcom/google/android/gms/ads/nativead/a;)Lcom/google/android/gms/ads/nativead/a;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->d0:Lcom/google/android/gms/ads/nativead/a;

    return-object p1
.end method

.method static synthetic P0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/main/MainActivity$v;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->A:Lcom/callerid/block/main/MainActivity$v;

    return-object p0
.end method

.method private Q()V
    .locals 4

    const v0, 0x7f090329

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090222

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090323

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090321

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ad

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09012b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0904b7

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callerid/block/main/MainActivity;->h0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09015e

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/callerid/block/main/MainActivity;->K:Landroid/widget/FrameLayout;

    const v1, 0x7f0901fd

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callerid/block/main/MainActivity;->L:Landroid/widget/ImageView;

    const v1, 0x7f090480

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callerid/block/main/MainActivity;->M:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity;->b0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->K:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/callerid/block/util/n0;->B1()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->L:Landroid/widget/ImageView;

    const v2, 0x7f0800f0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10004f

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->L:Landroid/widget/ImageView;

    const v2, 0x7f080103

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000a0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->R(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    new-instance v0, Lcom/callerid/block/main/MainActivity$o;

    invoke-direct {v0, p0}, Lcom/callerid/block/main/MainActivity$o;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    const v0, 0x7f090156

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->R:Landroid/widget/FrameLayout;

    const v0, 0x7f09045d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->a0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a6

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900a7

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/callerid/block/util/t0;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity;->a0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->a0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09043b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->b0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09045e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->b0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09045c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->b0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090458

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->b0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0903bb

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->b0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090399

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->b0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic Q0(Lcom/callerid/block/main/MainActivity;)Lcom/rey/material/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->S:Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method private R(Landroid/content/Context;)V
    .locals 9

    const-string v0, "com.callerid.block_notfication_N"

    invoke-static {}, Lcom/callerid/block/util/t0;->U()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/callerid/block/main/MainActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "blockenable"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {p1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroidx/core/app/i$e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p1, v5}, Landroidx/core/app/i$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1000bc

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/i$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1000bd

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/i$e;->i(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    invoke-virtual {v3, v2}, Landroidx/core/app/i$e;->h(Landroid/app/PendingIntent;)Landroidx/core/app/i$e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/core/app/i$e;->x(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroidx/core/app/i$e;->A(J)Landroidx/core/app/i$e;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroidx/core/app/i$e;->r(Z)Landroidx/core/app/i$e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f08015b

    invoke-static {v5, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/app/i$e;->n(Landroid/graphics/Bitmap;)Landroidx/core/app/i$e;

    invoke-virtual {v3, v4}, Landroidx/core/app/i$e;->e(Z)Landroidx/core/app/i$e;

    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    new-instance v5, Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v5, v0, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {v3, v0}, Landroidx/core/app/i$e;->f(Ljava/lang/String;)Landroidx/core/app/i$e;

    :cond_0
    const/16 v0, 0x10

    if-lt v4, v0, :cond_1

    invoke-virtual {v3, v2}, Landroidx/core/app/i$e;->s(I)Landroidx/core/app/i$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    const/16 v0, 0x15

    if-lt v4, v0, :cond_2

    const v0, 0x7f08012f

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v3, v0}, Landroidx/core/app/i$e;->u(I)Landroidx/core/app/i$e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06005a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroidx/core/app/i$e;->g(I)Landroidx/core/app/i$e;

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_2
    const p1, 0x7f080130

    invoke-virtual {v3, p1}, Landroidx/core/app/i$e;->u(I)Landroidx/core/app/i$e;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_3

    const/4 p1, 0x2

    invoke-virtual {v3}, Landroidx/core/app/i$e;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method

.method static synthetic R0(Lcom/callerid/block/main/MainActivity;Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->S:Lcom/rey/material/app/Dialog;

    return-object p1
.end method

.method static synthetic S(Lcom/callerid/block/main/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S0(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->h1()V

    return-void
.end method

.method static synthetic T(Lcom/callerid/block/main/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic T0(Lcom/callerid/block/main/MainActivity;)Lcom/rey/material/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->C:Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method static synthetic U(Lcom/callerid/block/main/MainActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->B:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic U0(Lcom/callerid/block/main/MainActivity;Lcom/rey/material/app/Dialog;)Lcom/rey/material/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->C:Lcom/rey/material/app/Dialog;

    return-object p1
.end method

.method static synthetic V(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/main/MainActivity$r;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->X:Lcom/callerid/block/main/MainActivity$r;

    return-object p0
.end method

.method static synthetic V0(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->m1()V

    return-void
.end method

.method static synthetic W(Lcom/callerid/block/main/MainActivity;Lcom/callerid/block/main/MainActivity$r;)Lcom/callerid/block/main/MainActivity$r;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->X:Lcom/callerid/block/main/MainActivity$r;

    return-object p1
.end method

.method static synthetic W0(Lcom/callerid/block/main/MainActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->g0:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic X(Lcom/callerid/block/main/MainActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->B:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic X0(Lcom/callerid/block/main/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->f0:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic Y(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->r1()V

    return-void
.end method

.method static synthetic Y0(Lcom/callerid/block/main/MainActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->e0:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic Z(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->o1()V

    return-void
.end method

.method static synthetic Z0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/main/MainActivity$q;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->W:Lcom/callerid/block/main/MainActivity$q;

    return-object p0
.end method

.method static synthetic a0(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->j1()V

    return-void
.end method

.method static synthetic a1(Lcom/callerid/block/main/MainActivity;Lcom/callerid/block/main/MainActivity$q;)Lcom/callerid/block/main/MainActivity$q;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->W:Lcom/callerid/block/main/MainActivity$q;

    return-object p1
.end method

.method static synthetic b0(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->Q()V

    return-void
.end method

.method private b1()V
    .locals 6

    const v0, 0x7f010014

    :try_start_0
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0xa28

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    new-instance v1, Lcom/callerid/block/util/b0;

    const-wide v2, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/callerid/block/util/b0;-><init>(DD)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->V:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/callerid/block/main/MainActivity$h;

    invoke-direct {v1, p0}, Lcom/callerid/block/main/MainActivity$h;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic c0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/LImageButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->O:Lcom/callerid/block/customview/LImageButton;

    return-object p0
.end method

.method private c1()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/i0;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callerid/block/util/n0;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/callerid/block/util/n0;->b1(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/main/MainActivity;->I:Z

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    const-string v1, "ignore_battery_optimizations"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "battery_optimize_show"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d0(Lcom/callerid/block/main/MainActivity;Lcom/callerid/block/customview/LImageButton;)Lcom/callerid/block/customview/LImageButton;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->O:Lcom/callerid/block/customview/LImageButton;

    return-object p1
.end method

.method private d1(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/callerid/block/util/n0;->W()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/callerid/block/util/n0;->i1(Z)V

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->t1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callerid/block/main/MainActivity;->u1(Landroid/content/Context;)V

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->c1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic e0(Lcom/callerid/block/main/MainActivity;)Lcom/rey/material/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->G:Lcom/rey/material/widget/ImageButton;

    return-object p0
.end method

.method static synthetic f0(Lcom/callerid/block/main/MainActivity;Lcom/rey/material/widget/ImageButton;)Lcom/rey/material/widget/ImageButton;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->G:Lcom/rey/material/widget/ImageButton;

    return-object p1
.end method

.method static synthetic g0(Lcom/callerid/block/main/MainActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->P:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h0(Lcom/callerid/block/main/MainActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->P:Landroid/view/View;

    return-object p1
.end method

.method private h1()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic i0(Lcom/callerid/block/main/MainActivity;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->Q:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p0
.end method

.method private i1()V
    .locals 4

    new-instance v0, Lcom/callerid/block/e/a;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->d0:Lcom/google/android/gms/ads/nativead/a;

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity;->l0:Landroid/view/View$OnClickListener;

    const v3, 0x7f1100e8

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/callerid/block/e/a;-><init>(Landroid/content/Context;ILcom/google/android/gms/ads/nativead/a;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->k0:Lcom/callerid/block/e/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->k0:Lcom/callerid/block/e/a;

    new-instance v1, Lcom/callerid/block/main/MainActivity$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/main/MainActivity$a;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/callerid/block/e/a;->a(Lcom/callerid/block/e/a$a;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->k0:Lcom/callerid/block/e/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->k0:Lcom/callerid/block/e/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic j0(Lcom/callerid/block/main/MainActivity;Landroidx/drawerlayout/widget/DrawerLayout;)Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->Q:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object p1
.end method

.method private j1()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "free_ad_plan_month"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "free_ad_plan"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->H([Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->p()Lcom/callerid/block/inapputil/GoogleBillingUtil;

    move-result-object v0

    new-instance v2, Lcom/callerid/block/main/MainActivity$t;

    invoke-direct {v2, p0, v1}, Lcom/callerid/block/main/MainActivity$t;-><init>(Lcom/callerid/block/main/MainActivity;Lcom/callerid/block/main/MainActivity$g;)V

    invoke-virtual {v0, p0, v2}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->k(Landroid/app/Activity;Lcom/callerid/block/inapputil/c;)Lcom/callerid/block/inapputil/GoogleBillingUtil;

    invoke-virtual {v0, p0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->l(Landroid/app/Activity;)Lcom/callerid/block/inapputil/GoogleBillingUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->U:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    return-void
.end method

.method static synthetic k0(Lcom/callerid/block/main/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/main/MainActivity;->Y:Z

    return p0
.end method

.method private k1()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/main/MainActivity$k;

    invoke-direct {v1, p0}, Lcom/callerid/block/main/MainActivity$k;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic l0(Lcom/callerid/block/main/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/main/MainActivity;->Y:Z

    return p1
.end method

.method static synthetic m0(Lcom/callerid/block/main/MainActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->V:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private m1()V
    .locals 4

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->a0:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/callerid/block/util/r0;->a()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->b0:Landroid/graphics/Typeface;

    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    const v0, 0x7f09038a

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    const v0, 0x7f090378

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->b0:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090249

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/customview/CustomViewPager;

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->t:Lcom/callerid/block/customview/CustomViewPager;

    const v0, 0x7f090248

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/LTabIndicator;

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->u:Lcom/rey/material/widget/LTabIndicator;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04011d

    const v3, 0x7f060073

    invoke-static {v1, v2, v3}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/rey/material/widget/LTabIndicator;->p:I

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->u:Lcom/rey/material/widget/LTabIndicator;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040141

    const v3, 0x7f060086

    invoke-static {v1, v2, v3}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/rey/material/widget/LTabIndicator;->o:I

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->u:Lcom/rey/material/widget/LTabIndicator;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/LTabIndicator;->setIndicatorColor(I)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->u:Lcom/rey/material/widget/LTabIndicator;

    const/16 v1, 0x10

    iput v1, v0, Lcom/rey/material/widget/LTabIndicator;->z:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/rey/material/widget/LTabIndicator;->q:I

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->t:Lcom/callerid/block/customview/CustomViewPager;

    new-instance v1, Lcom/callerid/block/main/MainActivity$g;

    invoke-direct {v1, p0}, Lcom/callerid/block/main/MainActivity$g;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    return-void
.end method

.method static synthetic n0(Lcom/callerid/block/main/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/main/MainActivity;->Z:Z

    return p0
.end method

.method private n1()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/x0/a;->f()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "tony"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->F:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->E:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/callerid/block/main/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/callerid/block/main/MainActivity;->H:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/main/MainActivity;->H:Z

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "main_overlay_per_noti_enabled"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "overlay_per_dialog_enable"

    goto :goto_0

    :goto_1
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "\u5f00\u542f\u4e86"

    :goto_2
    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "\u672a\u5f00\u542f"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method

.method static synthetic o0(Lcom/callerid/block/main/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/main/MainActivity;->Z:Z

    return p1
.end method

.method private o1()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/s$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/s$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/s$a;->b(Z)Lcom/google/android/gms/ads/s$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/s$a;->a()Lcom/google/android/gms/ads/s;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/nativead/b$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/nativead/b$a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/nativead/b$a;->g(Lcom/google/android/gms/ads/s;)Lcom/google/android/gms/ads/nativead/b$a;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/b$a;->a()Lcom/google/android/gms/ads/nativead/b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/d$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ca-app-pub-5825926894918682/7351239199"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/callerid/block/main/MainActivity$j;

    invoke-direct {v2, p0}, Lcom/callerid/block/main/MainActivity$j;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    new-instance v2, Lcom/callerid/block/main/MainActivity$i;

    invoke-direct {v2, p0}, Lcom/callerid/block/main/MainActivity$i;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/d$a;->g(Lcom/google/android/gms/ads/nativead/b;)Lcom/google/android/gms/ads/d$a;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/main/MainActivity;->c0:Lcom/google/android/gms/ads/d;

    new-instance v1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/e$a;-><init>()V

    const-class v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/e$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/e$a;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d;->a(Lcom/google/android/gms/ads/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic p0(Lcom/callerid/block/main/MainActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->V:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private p1()V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/main/MainActivity$f;

    invoke-direct {v1, p0}, Lcom/callerid/block/main/MainActivity$f;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic q0(Lcom/callerid/block/main/MainActivity;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->E:Ljava/util/Timer;

    return-object p0
.end method

.method private q1()V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/main/MainActivity$c;

    invoke-direct {v1, p0}, Lcom/callerid/block/main/MainActivity$c;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic r0(Lcom/callerid/block/main/MainActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->E:Ljava/util/Timer;

    return-object p1
.end method

.method private r1()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/callerid/block/c/a;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->N:Lcom/callerid/block/main/MainActivity$s;

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/c/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic s0(Lcom/callerid/block/main/MainActivity;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/main/MainActivity;->d1(Landroid/app/Activity;)V

    return-void
.end method

.method private s1(Ljava/lang/String;)V
    .locals 8

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->V(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callerid/block/util/t0;->A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/callerid/block/main/MainActivity$u;

    const-string v4, "android"

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/callerid/block/main/MainActivity$u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/callerid/block/k/a/e;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic t0(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->p1()V

    return-void
.end method

.method private t1()V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100070

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10016a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callerid/block/main/MainActivity$m;

    invoke-direct {v2, p0}, Lcom/callerid/block/main/MainActivity$m;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callerid/block/main/MainActivity$l;

    invoke-direct {v2, p0}, Lcom/callerid/block/main/MainActivity$l;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/callerid/block/util/t0;->c:Z

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "overlay_per_dialog_show"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic u0(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->v1()V

    return-void
.end method

.method private u1(Landroid/content/Context;)V
    .locals 9

    const-string v0, "com.callerid.block_notfication_N"

    const-string v1, "CallerID"

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/t0;->U()Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/callerid/block/main/MainActivity;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "main_overlay_per_notifi"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x8000000

    invoke-static {p1, v6, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v5, Landroidx/core/app/i$e;

    invoke-direct {v5, p1, v1}, Landroidx/core/app/i$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100080

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/core/app/i$e;->i(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100071

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/core/app/i$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    invoke-virtual {v5, v4}, Landroidx/core/app/i$e;->h(Landroid/app/PendingIntent;)Landroidx/core/app/i$e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroidx/core/app/i$e;->A(J)Landroidx/core/app/i$e;

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroidx/core/app/i$e;->e(Z)Landroidx/core/app/i$e;

    invoke-virtual {v5, v6}, Landroidx/core/app/i$e;->r(Z)Landroidx/core/app/i$e;

    const/16 v6, 0x1a

    if-lt v2, v6, :cond_0

    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v6, 0x3

    invoke-direct {v2, v0, v1, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v3, :cond_0

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {v5, v0}, Landroidx/core/app/i$e;->f(Ljava/lang/String;)Landroidx/core/app/i$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const v0, 0x7f08012f

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5, v0}, Landroidx/core/app/i$e;->u(I)Landroidx/core/app/i$e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06005a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroidx/core/app/i$e;->g(I)Landroidx/core/app/i$e;

    const p1, 0x314c2

    invoke-virtual {v5}, Landroidx/core/app/i$e;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "main_overlay_per_noti_show"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic v0(Lcom/callerid/block/main/MainActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/main/MainActivity;->u1(Landroid/content/Context;)V

    return-void
.end method

.method private v1()V
    .locals 3

    new-instance v0, Lcom/callerid/block/main/MainActivity$15;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/main/MainActivity$15;-><init>(Lcom/callerid/block/main/MainActivity;I)V

    const v1, 0x7f0c0064

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->f(I)Lcom/rey/material/app/Dialog$Builder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-static {v0}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->v()Landroidx/fragment/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/j;->i()Landroidx/fragment/app/p;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    invoke-virtual {v1}, Landroidx/fragment/app/p;->h()I

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "share_dialog"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w0(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->c1()V

    return-void
.end method

.method static synthetic x0(Lcom/callerid/block/main/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/main/MainActivity;->J:Z

    return p1
.end method

.method static synthetic y0(Lcom/callerid/block/main/MainActivity;)Ljava/util/TimerTask;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/main/MainActivity;->F:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic z0(Lcom/callerid/block/main/MainActivity;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->F:Ljava/util/TimerTask;

    return-object p1
.end method


# virtual methods
.method public e1(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/callerid/block/main/MainActivity$17;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1, p1}, Lcom/callerid/block/main/MainActivity$17;-><init>(Lcom/callerid/block/main/MainActivity;ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/SimpleDialog$Builder;->p(Ljava/lang/CharSequence;)Lcom/rey/material/app/SimpleDialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1001f5

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100144

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100097

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog$Builder;->o(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/SimpleDialog$Builder;->q(Landroid/graphics/Typeface;)Lcom/rey/material/app/SimpleDialog$Builder;

    invoke-static {v0}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->v()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/j;->i()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/fragment/app/p;->h()I

    return-void
.end method

.method public f1(Z)V
    .locals 3

    new-instance v0, Lcom/callerid/block/main/MainActivity$19;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1, p1}, Lcom/callerid/block/main/MainActivity$19;-><init>(Lcom/callerid/block/main/MainActivity;IZ)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/SimpleDialog$Builder;->p(Ljava/lang/CharSequence;)Lcom/rey/material/app/SimpleDialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->o(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1001e3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/SimpleDialog$Builder;->q(Landroid/graphics/Typeface;)Lcom/rey/material/app/SimpleDialog$Builder;

    :try_start_0
    invoke-static {v0}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->v()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/j;->i()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/fragment/app/p;->h()I

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "forced_update_dialog_show"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public g1()V
    .locals 3

    new-instance v0, Lcom/callerid/block/main/MainActivity$18;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/main/MainActivity$18;-><init>(Lcom/callerid/block/main/MainActivity;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/SimpleDialog$Builder;->p(Ljava/lang/CharSequence;)Lcom/rey/material/app/SimpleDialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->o(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/SimpleDialog$Builder;->q(Landroid/graphics/Typeface;)Lcom/rey/material/app/SimpleDialog$Builder;

    :try_start_0
    invoke-static {v0}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->v()Landroidx/fragment/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/j;->i()Landroidx/fragment/app/p;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    invoke-virtual {v1}, Landroidx/fragment/app/p;->h()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public homeInputOnClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public iconClickListener(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900a7

    if-ne p1, v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/callerid/block/main/MainActivity;->i0:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/callerid/block/main/MainActivity;->i0:J

    const-wide/16 v0, 0x258

    const/4 p1, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    iget v0, p0, Lcom/callerid/block/main/MainActivity;->j0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/callerid/block/main/MainActivity;->j0:I

    const/4 v2, 0x4

    if-ne v2, v0, :cond_2

    iget-boolean v0, p0, Lcom/callerid/block/main/MainActivity;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean p1, p0, Lcom/callerid/block/main/MainActivity;->s:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->R:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/callerid/block/main/MainActivity;->s:Z

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/callerid/block/main/MainActivity;->j0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public l1()V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/j;->e()Lcom/callerid/block/util/j;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v1

    iput-object v1, v0, Lcom/callerid/block/util/j;->a:Lcom/callerid/block/bean/EZCountryCode;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f010001

    const/high16 v4, 0x7f010000

    const v5, 0x800003

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    iput-boolean v2, p0, Lcom/callerid/block/main/MainActivity;->Z:Z

    goto/16 :goto_0

    :sswitch_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "share"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v0, 0x7f10007d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->Q:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :sswitch_2
    iput-boolean v2, p0, Lcom/callerid/block/main/MainActivity;->Y:Z

    goto :goto_0

    :sswitch_3
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->V:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->V:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->n(Landroid/content/Context;)I

    move-result p1

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    add-int/2addr p1, v2

    invoke-static {v0, p1}, Lcom/callerid/block/util/n0;->x0(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->i1()V

    goto/16 :goto_2

    :sswitch_4
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "rate"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callerid/block/util/t0;->f0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->Q:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    goto/16 :goto_2

    :sswitch_5
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :sswitch_6
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "enter_click_cehua_button"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const-string p1, "testenter"

    const-string v0, "\u4fa7\u6ed1\u70b9\u51fb\u6b21\u6570"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->Q:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800005

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->C(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->Q:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->Q:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->C(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->Q:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->J(I)V

    goto :goto_2

    :sswitch_7
    invoke-static {}, Lcom/callerid/block/util/n0;->B1()I

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v2}, Lcom/callerid/block/util/n0;->G1(I)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/callerid/block/util/n0;->G1(I)V

    :goto_1
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->K:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/callerid/block/main/MainActivity$p;

    invoke-direct {v0, p0}, Lcom/callerid/block/main/MainActivity$p;-><init>(Lcom/callerid/block/main/MainActivity;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :sswitch_8
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->Q:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/start/LogActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    :sswitch_9
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->h0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/start/GgGuideActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/callerid/block/main/MainActivity;->D:Z

    if-eqz v0, :cond_3

    const-string v0, "isbug"

    const-string v1, "maigou"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "cehua_ad_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->B:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity;->Q:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)V

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->q1()V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900ad -> :sswitch_a
        0x7f09012b -> :sswitch_9
        0x7f090156 -> :sswitch_8
        0x7f09015e -> :sswitch_7
        0x7f09017c -> :sswitch_6
        0x7f09018f -> :sswitch_5
        0x7f090222 -> :sswitch_4
        0x7f0902e8 -> :sswitch_3
        0x7f090321 -> :sswitch_2
        0x7f090323 -> :sswitch_1
        0x7f090329 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/callerid/block/util/n0;->h0()Z

    move-result v0

    if-eqz v0, :cond_4

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    const-string v1, "tony"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "Night mode is active, we\'re using dark theme"

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v2}, Lcom/callerid/block/util/n0;->G1(I)V

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "Night mode is not active, we\'re using the light theme"

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/callerid/block/util/n0;->G1(I)V

    :goto_0
    sput-boolean v2, Lcom/callerid/block/util/t0;->a:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/main/EZCallApplication;->e()V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/start/StartActivityTest;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    const-string v0, "MainActivity\u5f00\u59cb"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const p1, 0x7f0c002b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->a0:Landroid/graphics/Typeface;

    invoke-static {}, Lcom/callerid/block/util/r0;->a()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->b0:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->k1()V

    invoke-static {}, Lcom/callerid/block/util/d0;->f()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->A:Lcom/callerid/block/main/MainActivity$v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->W:Lcom/callerid/block/main/MainActivity$q;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->W:Lcom/callerid/block/main/MainActivity$q;

    invoke-virtual {v0, v1}, Ld/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->U:Lcom/callerid/block/inapputil/GoogleBillingUtil;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/callerid/block/inapputil/GoogleBillingUtil;->w(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->B:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->h1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "open_subscription"

    const-string v1, "open_offline"

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_6

    :try_start_0
    const-string v2, "main_overlay_per_notifi"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/callerid/block/main/MainActivity;->H:Z

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity;->F:Ljava/util/TimerTask;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    new-instance v5, Lcom/callerid/block/main/MainActivity$d;

    invoke-direct {v5, p0}, Lcom/callerid/block/main/MainActivity$d;-><init>(Lcom/callerid/block/main/MainActivity;)V

    iput-object v5, p0, Lcom/callerid/block/main/MainActivity;->F:Ljava/util/TimerTask;

    iget-object v4, p0, Lcom/callerid/block/main/MainActivity;->E:Ljava/util/Timer;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1f4

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v2

    const-string v4, "main_overlay_per_noti_click"

    invoke-virtual {v2, v4}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/callerid/block/main/MainActivity;->T:Landroid/content/Intent;

    const-string v2, "notifi"

    const-string v4, "onNewIntent"

    invoke-static {v2, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/callerid/block/main/MainActivity$e;

    invoke-direct {v4, p0}, Lcom/callerid/block/main/MainActivity$e;-><init>(Lcom/callerid/block/main/MainActivity;)V

    const-wide/16 v5, 0x320

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v2, "offline_notifi"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "fcm"

    if-eqz v2, :cond_3

    :try_start_1
    sget-boolean v2, Lcom/callerid/block/util/w;->a:Z

    if-eqz v2, :cond_2

    invoke-static {v4, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/callerid/block/main/MainActivity;->t:Lcom/callerid/block/customview/CustomViewPager;

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_3
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_4

    invoke-static {v4, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/start/GgGuideActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/callerid/block/main/MainActivity;->D:Z

    if-eqz v0, :cond_5

    const-string v0, "isbug"

    const-string v1, "maigou"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/callerid/block/main/MainActivity;->H:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/main/MainActivity;->H:Z

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity;->F:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 8

    const-string v0, "[0-9]+"

    const-string v1, ""

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v2

    const-string v3, "in_main"

    invoke-virtual {v2, v3}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/n0;->S(Landroid/content/Context;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    const-string v4, "clipboard"

    invoke-virtual {v2, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, " "

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "text\uff1a"

    const-string v5, "searchCopy"

    if-eqz v2, :cond_0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/n0;->R(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/callerid/block/main/MainActivity;->e1(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/callerid/block/util/n0;->d1(Landroid/content/Context;Z)V

    :cond_0
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/callerid/block/main/MainActivity;->e1(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/callerid/block/util/n0;->d1(Landroid/content/Context;Z)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->c(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/n0;->c(Landroid/content/Context;)J

    move-result-wide v6

    cmp-long v2, v0, v6

    if-lez v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callerid/block/main/MainActivity;->R(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/callerid/block/util/n0;->m0(Landroid/content/Context;J)V

    :cond_3
    iget-boolean v0, p0, Lcom/callerid/block/main/MainActivity;->D:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/n0;->e0(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-lez v2, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callerid/block/start/GgGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v4, 0x240c8400

    add-long/2addr v1, v4

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/n0;->r1(Landroid/content/Context;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/n0;->B(Landroid/content/Context;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    cmp-long v2, v0, v4

    if-lez v2, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/callerid/block/util/n0;->j1(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "seven_day_later_sub_show"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "two_day_later_sub_show"

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "first_enter_app"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/util/n0;->D0(Landroid/content/Context;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v2, :cond_7

    const v4, 0x314c2

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_7
    iget-boolean v2, p0, Lcom/callerid/block/main/MainActivity;->J:Z

    if-eqz v2, :cond_8

    iput-boolean v3, p0, Lcom/callerid/block/main/MainActivity;->J:Z

    invoke-static {}, Lcom/callerid/block/util/x0/a;->f()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/callerid/block/main/MainActivity;->u1(Landroid/content/Context;)V

    :cond_8
    sget-boolean v2, Lcom/callerid/block/util/t0;->c:Z

    if-eqz v2, :cond_9

    sput-boolean v3, Lcom/callerid/block/util/t0;->c:Z

    invoke-direct {p0}, Lcom/callerid/block/main/MainActivity;->c1()V

    :cond_9
    iget-boolean v2, p0, Lcom/callerid/block/main/MainActivity;->I:Z

    if-eqz v2, :cond_d

    if-lt v0, v1, :cond_c

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_a

    const-string v1, "tony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasIgnored:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v0, :cond_b

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "battery_optimize_ok"

    :goto_3
    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "battery_optimize_no"

    goto :goto_3

    :cond_c
    :goto_4
    iput-boolean v3, p0, Lcom/callerid/block/main/MainActivity;->I:Z

    :cond_d
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_e

    const-string v0, "wbb"

    const-string v1, "MainActivity\u7ed3\u675f"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_5
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
