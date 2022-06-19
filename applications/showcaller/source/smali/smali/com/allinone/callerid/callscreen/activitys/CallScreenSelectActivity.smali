.class public Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "CallScreenSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$i;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/FrameLayout;

.field private B:Landroid/widget/ImageView;

.field private C:Lcom/allinone/callerid/customview/BaseEditText;

.field private D:Lcom/allinone/callerid/customview/SideBar;

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/allinone/callerid/d/a/a;

.field private G:Landroid/widget/ListView;

.field private H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$i;

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:Landroid/widget/ImageView;

.field private N:Z

.field private O:Landroid/text/TextWatcher;

.field private P:Ljava/lang/Runnable;

.field private final u:Ljava/lang/String;

.field private v:Landroid/graphics/Typeface;

.field private w:Landroid/widget/FrameLayout;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/os/Handler;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "CallScreenSelectActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->u:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->x:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->y:Landroid/os/Handler;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->H:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$i;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$i;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->J:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$i;

    .line 7
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$d;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$d;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->P:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->v:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic Y(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->u0()V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Lcom/allinone/callerid/d/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->F:Lcom/allinone/callerid/d/a/a;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->t0()V

    return-void
.end method

.method static synthetic b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->v0()V

    return-void
.end method

.method static synthetic c0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->J:Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$i;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Lcom/allinone/callerid/customview/BaseEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->C:Lcom/allinone/callerid/customview/BaseEditText;

    return-object p0
.end method

.method static synthetic e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->B:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->H:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->H:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic h0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->w0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->G:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->s0()V

    return-void
.end method

.method static synthetic k0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->x:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic l0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->w:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic m0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->x0()V

    return-void
.end method

.method static synthetic n0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->I:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic o0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->I:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic p0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->z:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic q0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->A:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic r0(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->E:Ljava/util/ArrayList;

    return-object p0
.end method

.method private s0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private t0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->B:Landroid/widget/ImageView;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$f;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$g;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->O:Landroid/text/TextWatcher;

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->C:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->D:Lcom/allinone/callerid/customview/SideBar;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$h;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$h;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/SideBar;->setOnTouchingLetterChangedListener(Lcom/allinone/callerid/customview/SideBar$a;)V

    return-void
.end method

.method private u0()V
    .locals 4

    const v0, 0x7f0902b7

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08015b

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const v1, 0x7f09079a

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090316

    .line 5
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->M:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0904f0

    .line 7
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->z:Landroid/widget/RelativeLayout;

    const v2, 0x7f0906d8

    .line 8
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f09020d

    .line 9
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->A:Landroid/widget/FrameLayout;

    const v2, 0x7f0902ac

    .line 10
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->B:Landroid/widget/ImageView;

    const v2, 0x7f090195

    .line 11
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/BaseEditText;

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->C:Lcom/allinone/callerid/customview/BaseEditText;

    const v2, 0x7f090565

    .line 12
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/customview/SideBar;

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->D:Lcom/allinone/callerid/customview/SideBar;

    const v2, 0x7f090133

    .line 13
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 14
    iget-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->D:Lcom/allinone/callerid/customview/SideBar;

    invoke-virtual {v3, v2}, Lcom/allinone/callerid/customview/SideBar;->setTextView(Landroid/widget/TextView;)V

    const v2, 0x7f09043a

    .line 15
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->G:Landroid/widget/ListView;

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->E:Ljava/util/ArrayList;

    .line 17
    new-instance v2, Lcom/allinone/callerid/d/a/a;

    iget-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->E:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/allinone/callerid/d/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->F:Lcom/allinone/callerid/d/a/a;

    .line 18
    iget-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->G:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->F:Lcom/allinone/callerid/d/a/a;

    new-instance v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$b;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$b;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/d/a/a;->c(Lcom/allinone/callerid/d/a/a$b;)V

    const v2, 0x7f090218

    .line 20
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->w:Landroid/widget/FrameLayout;

    const v2, 0x7f090757

    .line 21
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 22
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->w:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$c;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private v0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->L:Z

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->K:Ljava/lang/String;

    new-instance v2, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$e;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$e;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/d/e/b;->a(ZLjava/lang/String;Lcom/allinone/callerid/d/e/b$a;)V

    return-void
.end method

.method private w0(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "^([0-9]|[/+]).*"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    const-string v1, "\\-|\\s"

    .line 3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    .line 5
    invoke-virtual {v5}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v5}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 8
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    .line 10
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortKey:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortToken:Lcom/allinone/callerid/customview/SortToken;

    iget-object v4, v4, Lcom/allinone/callerid/customview/SortToken;->d:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->sortToken:Lcom/allinone/callerid/customview/SortToken;

    iget-object v4, v4, Lcom/allinone/callerid/customview/SortToken;->e:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private x0()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->x:Ljava/util/ArrayList;

    const-string v3, "selected_contacts"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x26aa

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902b7

    if-eq p1, v0, :cond_5

    const v0, 0x7f090316

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->N:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->N:Z

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->I:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsselect(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->N:Z

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->I:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1, p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsselect(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->x:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->I:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->F:Lcom/allinone/callerid/d/a/a;

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_5
    const/16 p1, 0x26aa

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0031

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "theme_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->K:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_default"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->L:Z

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->C:Lcom/allinone/callerid/customview/BaseEditText;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->O:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->O:Landroid/text/TextWatcher;

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;->C:Lcom/allinone/callerid/customview/BaseEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/16 p1, 0x26aa

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
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
