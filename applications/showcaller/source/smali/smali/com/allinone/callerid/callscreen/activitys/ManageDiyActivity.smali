.class public Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "ManageDiyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/FrameLayout;

.field private D:Landroid/widget/TextView;

.field private E:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private I:Z

.field private J:Landroid/view/ViewStub;

.field private final u:Ljava/lang/String;

.field private v:Landroidx/recyclerview/widget/RecyclerView;

.field private w:Lcom/allinone/callerid/d/a/c;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "ManageDiyActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->u:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->G:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Lcom/allinone/callerid/d/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->w:Lcom/allinone/callerid/d/a/c;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->y:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->B:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->z:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->A:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->m0()V

    return-void
.end method

.method static synthetic e0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/view/ViewStub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->J:Landroid/view/ViewStub;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->o0()V

    return-void
.end method

.method static synthetic g0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->G:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->I:Z

    return p1
.end method

.method static synthetic j0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->l0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic k0(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->H:Z

    return p1
.end method

.method private l0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;

    invoke-direct {v1, p0, p1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$e;-><init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private m0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private n0()V
    .locals 4

    const v0, 0x7f09079a

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f0907f1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->J:Landroid/view/ViewStub;

    const v0, 0x7f090316

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->z:Landroid/widget/ImageView;

    const v0, 0x7f0902cf

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f0902d9

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->B:Landroid/widget/ImageView;

    const v0, 0x7f0901c8

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->C:Landroid/widget/FrameLayout;

    const v0, 0x7f090603

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->D:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902b7

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->y:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->y:Landroid/widget/ImageView;

    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0904af

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    new-instance v0, Lcom/allinone/callerid/customview/MyGridLayoutManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/allinone/callerid/customview/MyGridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->z2(I)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/MyGridLayoutManager;->f3(Z)V

    .line 23
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 24
    new-instance v0, Lcom/allinone/callerid/d/a/c;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/d/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->w:Lcom/allinone/callerid/d/a/c;

    .line 25
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->w:Lcom/allinone/callerid/d/a/c;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$b;-><init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/d/a/c;->I(Lcom/allinone/callerid/d/a/c$b;)V

    .line 27
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;-><init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$a;)V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->E:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->E:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.allinone.callerid.REFRESH_HOME_DATA"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private o0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->J:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0906d8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100224

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->J:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "0/"

    const v1, 0x7f010001

    const/high16 v2, 0x7f010000

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    .line 2
    :sswitch_0
    :try_start_0
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->I:Z

    if-eqz p1, :cond_1

    .line 3
    iput-boolean v5, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->I:Z

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {v1, v5}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsselect(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->x:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->G:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 9
    :cond_1
    iput-boolean v4, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->I:Z

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 11
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v5, p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {p1, v4}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsselect(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->x:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->G:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->G:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    :goto_2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->w:Lcom/allinone/callerid/d/a/c;

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 19
    :sswitch_1
    iput-boolean v4, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->H:Z

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->x:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->y:Landroid/widget/ImageView;

    const v0, 0x7f08027f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->w:Lcom/allinone/callerid/d/a/c;

    if-eqz p1, :cond_4

    .line 26
    invoke-virtual {p1, v4}, Lcom/allinone/callerid/d/a/c;->H(Z)V

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->w:Lcom/allinone/callerid/d/a/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    goto/16 :goto_3

    .line 28
    :sswitch_2
    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->G:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 29
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$d;-><init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$c;-><init>(Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 35
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 36
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 38
    :sswitch_3
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->H:Z

    if-eqz p1, :cond_3

    .line 39
    iput-boolean v5, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->H:Z

    .line 40
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->y:Landroid/widget/ImageView;

    const v0, 0x7f08015a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->G:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->w:Lcom/allinone/callerid/d/a/c;

    invoke-virtual {p1, v5}, Lcom/allinone/callerid/d/a/c;->H(Z)V

    .line 47
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->w:Lcom/allinone/callerid/d/a/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    goto :goto_3

    .line 48
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 49
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_3

    .line 50
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/allinone/callerid/callscreen/activitys/SelectVideoActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 52
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_4
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901c8 -> :sswitch_4
        0x7f0902b7 -> :sswitch_3
        0x7f0902cf -> :sswitch_2
        0x7f0902d9 -> :sswitch_1
        0x7f090316 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0043

    .line 2
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
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->n0()V

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->m0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->E:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity;->E:Lcom/allinone/callerid/callscreen/activitys/ManageDiyActivity$f;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    .line 3
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
