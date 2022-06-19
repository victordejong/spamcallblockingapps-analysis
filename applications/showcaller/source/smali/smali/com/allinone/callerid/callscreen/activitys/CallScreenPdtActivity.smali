.class public Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "CallScreenPdtActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/FrameLayout;

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/TextView;

.field private G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

.field private H:Z

.field private I:Landroid/widget/PopupWindow;

.field private J:Landroid/widget/RelativeLayout;

.field private K:Z

.field private L:Landroid/widget/RadioButton;

.field private M:Landroid/widget/RadioButton;

.field private N:Landroid/widget/RadioButton;

.field private O:Landroid/widget/RadioButton;

.field private P:Landroid/app/Dialog;

.field private Q:Landroid/widget/LinearLayout;

.field private R:Landroidx/appcompat/app/a;

.field private S:Landroidx/appcompat/app/a;

.field private T:Z

.field private U:Z

.field V:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private W:Landroid/widget/LinearLayout;

.field private X:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private Y:Landroid/widget/FrameLayout;

.field private Z:Landroid/widget/LinearLayout;

.field private a0:Z

.field private b0:Landroid/widget/ProgressBar;

.field private c0:Landroid/widget/TextView;

.field private d0:Landroid/widget/FrameLayout;

.field private e0:Landroid/widget/FrameLayout;

.field private f0:Z

.field private g0:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;

.field private h0:Z

.field private i0:Z

.field private j0:Ljava/lang/String;

.field private k0:J

.field private l0:J

.field private m0:Landroid/widget/ImageView;

.field private n0:I

.field private o0:Z

.field private p0:Lc/d/a/i;

.field private q0:Lc/d/a/i;

.field private final u:Ljava/lang/String;

.field private v:Landroid/graphics/Typeface;

.field private w:Landroid/graphics/Typeface;

.field private x:Ljava/lang/Boolean;

.field private y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "CallScreenPdtActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->u:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->T:Z

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->U:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->V:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$h;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->p0:Lc/d/a/i;

    .line 7
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->q0:Lc/d/a/i;

    return-void
.end method

.method private A0()V
    .locals 11

    const v0, 0x7f04011b

    const v1, 0x7f06003a

    .line 1
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->n0:I

    const v0, 0x7f09034b

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    const v0, 0x7f0902b7

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->z:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->z:Landroid/widget/ImageView;

    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const v0, 0x7f09031f

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f090304

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->m0:Landroid/widget/ImageView;

    const v0, 0x7f090611

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f0906cb

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->C:Landroid/widget/TextView;

    const v0, 0x7f090211

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->D:Landroid/widget/FrameLayout;

    const v0, 0x7f0902f2

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->E:Landroid/widget/ImageView;

    const v0, 0x7f09031d

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0902f8

    .line 13
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0906b7

    .line 14
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->F:Landroid/widget/TextView;

    const v2, 0x7f09074f

    .line 15
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090212

    .line 16
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f090750

    .line 17
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0904e2

    .line 18
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->J:Landroid/widget/RelativeLayout;

    .line 19
    iget-boolean v6, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->K:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    .line 20
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 21
    invoke-static {v6}, Lcom/allinone/callerid/d/f/f;->v(Z)V

    :cond_1
    const v5, 0x7f090382

    .line 22
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->W:Landroid/widget/LinearLayout;

    const v5, 0x7f09038d

    .line 23
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v5, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->X:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f090213

    .line 24
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Y:Landroid/widget/FrameLayout;

    const v5, 0x7f090751

    .line 25
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0903ac

    .line 26
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Z:Landroid/widget/LinearLayout;

    const v6, 0x7f0906f2

    .line 27
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    .line 29
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "Emily"

    .line 30
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v7, 0x7f0906f1

    .line 31
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0904c3

    .line 32
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    const v9, 0x7f090461

    .line 33
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iput-object v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0:Landroid/widget/ProgressBar;

    const v9, 0x7f09070b

    .line 34
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->c0:Landroid/widget/TextView;

    const v9, 0x7f09021a

    .line 35
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->d0:Landroid/widget/FrameLayout;

    const v9, 0x7f090219

    .line 36
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0:Landroid/widget/FrameLayout;

    .line 37
    iget-object v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0:Landroid/widget/ProgressBar;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 38
    iget-object v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v9, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v9, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private B0()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->N0(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {p0, v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->H0(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v2, 0x11

    .line 7
    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 8
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_mobile_net_toast"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {p0, v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->H0(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->M0(Landroid/content/Context;)V

    .line 12
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$i;)V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->g0:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;

    .line 13
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->g0:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic C0(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsreport(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10029d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$s;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$s;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    const-string v0, "report"

    invoke-static {p1, v0, p2}, Lcom/allinone/callerid/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/d/e/a$b;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$t;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$t;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-static {p1, p2}, Lcom/allinone/callerid/d/e/a;->c(Ljava/lang/String;Lcom/allinone/callerid/d/e/a$b;)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "callscreen_report"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic F0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static G0(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v1, 0x15

    const/high16 v2, 0x4000000

    if-lt v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v0, -0x80000000

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x400

    .line 6
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method

.method private H0(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcn/jzvd/Jzvd;->L()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p0;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getHdvideo_url()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getSdvideo_url()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->j0:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Lcom/allinone/callerid/main/EZCallApplication;->d(Landroid/content/Context;)Lcom/danikula/videocache/f;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->j0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/danikula/videocache/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "callscreen"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxyUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    new-instance v0, Lcn/jzvd/t;

    invoke-direct {v0, p1}, Lcn/jzvd/t;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v0, Lcn/jzvd/t;->e:Z

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    const-class v2, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    invoke-virtual {v1, v0, p1, v2}, Lcn/jzvd/JzvdStd;->setUp(Lcn/jzvd/t;ILjava/lang/Class;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;->U()V

    .line 10
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->h0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private I0(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/c;->v(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getJpgimg_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->s(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    iget-object v1, v1, Lcn/jzvd/JzvdStd;->j0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    .line 2
    invoke-static {}, Lcn/jzvd/Jzvd;->L()V

    .line 3
    new-instance v0, Lcn/jzvd/t;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/jzvd/t;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lcn/jzvd/t;->e:Z

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    const-class v2, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    invoke-virtual {v1, v0, p1, v2}, Lcn/jzvd/JzvdStd;->setUp(Lcn/jzvd/t;ILjava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;->U()V

    .line 7
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->h0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private K0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->P:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v0, :cond_3

    .line 4
    iget-boolean v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->T:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdiy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUseVideoAudioRing(Z)V

    .line 6
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_set"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 7
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->U:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$k;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$k;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/d/e/e/d;->a(Lcom/allinone/callerid/callscreen/bean/HomeInfo;Lcom/allinone/callerid/d/e/e/c;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->V:Ljava/util/ArrayList;

    new-instance v2, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$l;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$l;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/d/e/e/a;->b(Lcom/allinone/callerid/callscreen/bean/HomeInfo;Ljava/util/List;Lcom/allinone/callerid/d/e/e/a$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private L0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_set_ringtone"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdiy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->U:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getAudio_path()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$m;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$m;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/d/e/g/b;->b(Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/d/e/g/a;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getAudio_path()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->V:Ljava/util/ArrayList;

    new-instance v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$n;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$n;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/d/e/g/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/allinone/callerid/d/e/g/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private M0(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroidx/appcompat/app/a$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a$a;->q(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100381

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/a$a;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10035a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$f;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/a$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->d(Z)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->S:Landroidx/appcompat/app/a;

    const/4 v0, -0x1

    .line 7
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->g(I)Landroid/widget/Button;

    move-result-object p1

    iget v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->n0:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private N0(Landroid/content/Context;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09079a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09060e

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090639

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09060d

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6
    iget-object v5, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$c;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$d;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$e;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v1, Landroidx/appcompat/app/a$a;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->d(Z)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->R:Landroidx/appcompat/app/a;

    .line 17
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_mobile_net_show"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private O0(Z)V
    .locals 4

    .line 1
    :try_start_0
    new-instance p1, Landroid/app/Dialog;

    const v0, 0x7f1100f0

    invoke-direct {p1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->P:Landroid/app/Dialog;

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00a0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090364

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f09047b

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->L:Landroid/widget/RadioButton;

    const v1, 0x7f09047a

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->M:Landroid/widget/RadioButton;

    const v1, 0x7f09047d

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->N:Landroid/widget/RadioButton;

    const v1, 0x7f09047c

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->O:Landroid/widget/RadioButton;

    const v1, 0x7f090210

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f09039c

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Q:Landroid/widget/LinearLayout;

    .line 10
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->L:Landroid/widget/RadioButton;

    new-instance v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$u;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$u;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 11
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->M:Landroid/widget/RadioButton;

    new-instance v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$v;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$v;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->N:Landroid/widget/RadioButton;

    new-instance v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$a;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->O:Landroid/widget/RadioButton;

    new-instance v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$b;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$b;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 14
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->L:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->M:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->N:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->O:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->L:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090638

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09073e

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09074f

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090752

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->P:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->P:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->P:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 32
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->P:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f1100f1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->P:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private P0(Ljava/lang/String;)V
    .locals 4

    const-string v0, "callscreen"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".aac"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/d/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/allinone/callerid/d/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lc/d/a/q;->d()Lc/d/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/d/a/q;->c(Ljava/lang/String;)Lc/d/a/a;

    move-result-object p1

    .line 7
    invoke-interface {p1, v1}, Lc/d/a/a;->h(Ljava/lang/String;)Lc/d/a/a;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    .line 8
    invoke-interface {p1, v0, v1}, Lc/d/a/a;->g(ILjava/lang/Object;)Lc/d/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->q0:Lc/d/a/i;

    .line 9
    invoke-interface {p1, v0}, Lc/d/a/a;->P(Lc/d/a/i;)Lc/d/a/a;

    move-result-object p1

    const/16 v0, 0x8

    .line 10
    invoke-interface {p1, v0}, Lc/d/a/a;->F(I)Lc/d/a/a;

    move-result-object p1

    const/16 v0, 0x3e8

    .line 11
    invoke-interface {p1, v0}, Lc/d/a/a;->N(I)Lc/d/a/a;

    move-result-object p1

    .line 12
    invoke-interface {p1, v0}, Lc/d/a/a;->I(I)Lc/d/a/a;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Lc/d/a/a;->start()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private Q0(Ljava/lang/String;)V
    .locals 4

    const-string v0, "callscreen"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->P:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/d/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/allinone/callerid/d/f/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->k0:J

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "callscreen_download"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lc/d/a/q;->d()Lc/d/a/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/d/a/q;->c(Ljava/lang/String;)Lc/d/a/a;

    move-result-object p1

    .line 11
    invoke-interface {p1, v1}, Lc/d/a/a;->h(Ljava/lang/String;)Lc/d/a/a;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    .line 12
    invoke-interface {p1, v0, v1}, Lc/d/a/a;->g(ILjava/lang/Object;)Lc/d/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->p0:Lc/d/a/i;

    .line 13
    invoke-interface {p1, v0}, Lc/d/a/a;->P(Lc/d/a/i;)Lc/d/a/a;

    move-result-object p1

    const/16 v0, 0x8

    .line 14
    invoke-interface {p1, v0}, Lc/d/a/a;->F(I)Lc/d/a/a;

    move-result-object p1

    const/16 v0, 0x3e8

    .line 15
    invoke-interface {p1, v0}, Lc/d/a/a;->N(I)Lc/d/a/a;

    move-result-object p1

    .line 16
    invoke-interface {p1, v0}, Lc/d/a/a;->I(I)Lc/d/a/a;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Lc/d/a/a;->start()I

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object p1

    const-string v0, "download"

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$g;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$g;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/d/e/a$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->A0()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->x0()V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->N:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroidx/appcompat/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->R:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->H0(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    return-void
.end method

.method static synthetic d0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroidx/appcompat/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->S:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method static synthetic e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->b0:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->y0()V

    return-void
.end method

.method static synthetic g0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->c0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->i0:Z

    return p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->i0:Z

    return p1
.end method

.method static synthetic j0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->l0:J

    return-wide v0
.end method

.method static synthetic k0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->l0:J

    return-wide p1
.end method

.method static synthetic l0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->k0:J

    return-wide v0
.end method

.method static synthetic m0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->K0()V

    return-void
.end method

.method static synthetic n0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->P0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->L0()V

    return-void
.end method

.method static synthetic p0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->B0()V

    return-void
.end method

.method static synthetic q0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->o0:Z

    return p1
.end method

.method static synthetic r0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->U:Z

    return p1
.end method

.method static synthetic s0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->M:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic t0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->L:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic u0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->T:Z

    return p0
.end method

.method static synthetic v0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->T:Z

    return p1
.end method

.method static synthetic w0(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->O:Landroid/widget/RadioButton;

    return-object p0
.end method

.method private x0()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->z:Landroid/widget/ImageView;

    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "homeinfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v0, :cond_6

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "callscreen"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "homeInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->B:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getLike_count()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIslike()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->E:Landroid/widget/ImageView;

    const v1, 0x7f080297

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->E:Landroid/widget/ImageView;

    const v1, 0x7f080298

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, ""

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->f0:Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->f0:Z

    .line 17
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->f0:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {p0, v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I0(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    goto :goto_2

    .line 19
    :cond_5
    invoke-static {p0}, Lcom/bumptech/glide/c;->v(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/i;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/e;

    invoke-direct {v1}, Lcom/bumptech/glide/request/e;-><init>()V

    .line 20
    invoke-virtual {v1}, Lcom/bumptech/glide/request/a;->c()Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/e;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->x(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/i;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    .line 21
    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getJpgimg_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->s(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    iget-object v1, v1, Lcn/jzvd/JzvdStd;->j0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    .line 22
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->B0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method private y0()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$o;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$o;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private z0()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c011d

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090644

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901d1

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 5
    iget-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I:Landroid/widget/PopupWindow;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I:Landroid/widget/PopupWindow;

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I:Landroid/widget/PopupWindow;

    const v1, 0x7f110305

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I:Landroid/widget/PopupWindow;

    const v1, 0x7f110304

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 16
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public synthetic E0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->C0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x231d

    if-ne p1, v0, :cond_2

    const/16 v0, 0x26aa

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "selected_contacts"

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->V:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->V:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->L:Landroid/widget/RadioButton;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/16 p3, 0x3ca

    if-ne p1, p3, :cond_5

    const/16 p1, 0x3d4

    if-ne p2, p1, :cond_5

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isDownloaded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->K0()V

    .line 10
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->T:Z

    if-eqz p1, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->L0()V

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "callscreen_set_default_ringtone"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->j0:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Q0(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcn/jzvd/Jzvd;->b()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080062

    const-string v2, "callscreen_preview"

    const v3, 0x7f08029b

    const v4, 0x7f010001

    const/high16 v5, 0x7f010000

    const-string v6, "callscreen_click_set"

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->K:Z

    if-nez p1, :cond_a

    .line 3
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->a0:Z

    if-nez p1, :cond_0

    .line 4
    iput-boolean v7, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->a0:Z

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->X:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->W:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->d0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14
    :cond_0
    iput-boolean v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->a0:Z

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->X:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->W:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->d0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 23
    :sswitch_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->P:Landroid/app/Dialog;

    if-eqz p1, :cond_a

    .line 24
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 25
    :sswitch_2
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->h0:Z

    if-eqz p1, :cond_a

    .line 26
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->H:Z

    if-eqz p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    invoke-virtual {p1}, Lcn/jzvd/Jzvd;->d()V

    .line 28
    iput-boolean v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->H:Z

    .line 29
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f08029d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    invoke-virtual {p1}, Lcn/jzvd/Jzvd;->s()V

    .line 31
    iput-boolean v7, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->H:Z

    .line 32
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f08029a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_silent"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34
    :sswitch_3
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    .line 36
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 37
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0, v5, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 41
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_share"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 43
    :sswitch_4
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->a0:Z

    if-nez p1, :cond_2

    .line 44
    iput-boolean v7, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->a0:Z

    .line 45
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->X:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->W:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->d0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 52
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 54
    :cond_2
    iput-boolean v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->a0:Z

    .line 55
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->X:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->W:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->D:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->d0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->e0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 63
    :sswitch_5
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I:Landroid/widget/PopupWindow;

    if-nez v0, :cond_3

    .line 64
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->z0()V

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 67
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I:Landroid/widget/PopupWindow;

    aget v2, v0, v9

    aget v0, v0, v7

    .line 68
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 69
    invoke-virtual {v1, p1, v9, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 70
    :sswitch_6
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIslike()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 71
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1, v9}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIslike(Z)V

    .line 72
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getLike_count()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setLike_count(I)V

    .line 73
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getLike_count()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->E:Landroid/widget/ImageView;

    const v0, 0x7f080298

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getLike_count()I

    move-result v0

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$p;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$p;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-static {p1, v0, v9, v1}, Lcom/allinone/callerid/d/e/a;->b(Ljava/lang/String;IZLcom/allinone/callerid/d/e/a$b;)V

    goto/16 :goto_0

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getLike_count()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setLike_count(I)V

    .line 77
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getLike_count()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1, v7}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIslike(Z)V

    .line 79
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->E:Landroid/widget/ImageView;

    const v0, 0x7f080297

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$q;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$q;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    const-string v1, "like"

    invoke-static {p1, v1, v0}, Lcom/allinone/callerid/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/d/e/a$b;)V

    .line 81
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getLike_count()I

    move-result v0

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$r;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$r;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-static {p1, v0, v7, v1}, Lcom/allinone/callerid/d/e/a;->b(Ljava/lang/String;IZLcom/allinone/callerid/d/e/a$b;)V

    .line 82
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_like"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :sswitch_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 84
    invoke-virtual {p0, v5, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 85
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->o0:Z

    if-eqz p1, :cond_a

    .line 86
    invoke-static {}, Lcom/allinone/callerid/util/gg/e;->d()Lcom/allinone/callerid/util/gg/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/allinone/callerid/util/gg/e;->f(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 87
    :sswitch_8
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->k()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->O0(Z)V

    .line 88
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :sswitch_9
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->J:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    iput-boolean v9, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->K:Z

    .line 91
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->k()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->O0(Z)V

    .line 92
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :sswitch_a
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->k()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->O0(Z)V

    .line 94
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    :sswitch_b
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Q:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    .line 96
    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 98
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz p1, :cond_a

    .line 99
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isDownloaded()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 100
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->K0()V

    .line 101
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->T:Z

    if-eqz p1, :cond_6

    .line 102
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->L0()V

    goto/16 :goto_0

    .line 103
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "callscreen_set_default_ringtone"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_7
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->j0:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->Q0(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_8
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 106
    const-class v0, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v0, 0x3ca

    .line 107
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    invoke-virtual {p0, v5, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 109
    :sswitch_c
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->I:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_9

    .line 110
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 111
    :cond_9
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsreport()Z

    move-result p1

    if-nez p1, :cond_a

    .line 112
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10029e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10029c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100358

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/allinone/callerid/callscreen/activitys/b;->d:Lcom/allinone/callerid/callscreen/activitys/b;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_a
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901d1 -> :sswitch_c
        0x7f090210 -> :sswitch_b
        0x7f090211 -> :sswitch_a
        0x7f090212 -> :sswitch_9
        0x7f090213 -> :sswitch_8
        0x7f0902b7 -> :sswitch_7
        0x7f0902f2 -> :sswitch_6
        0x7f0902f8 -> :sswitch_5
        0x7f090304 -> :sswitch_4
        0x7f09031d -> :sswitch_3
        0x7f09031f -> :sswitch_2
        0x7f090364 -> :sswitch_1
        0x7f0904c3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->G0(Landroid/app/Activity;)V

    const p1, 0x7f0c002d

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->x:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->v:Landroid/graphics/Typeface;

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->w:Landroid/graphics/Typeface;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$i;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$i;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    invoke-static {}, Lcn/jzvd/Jzvd;->L()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->g0:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$w;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->K:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->K:Z

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->J:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity;->i0:Z

    if-eqz p1, :cond_1

    return p2

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return p2

    .line 7
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    .line 2
    :try_start_0
    invoke-static {}, Lcn/jzvd/Jzvd;->t()V
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

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    :try_start_0
    invoke-static {}, Lcn/jzvd/Jzvd;->u()V
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
