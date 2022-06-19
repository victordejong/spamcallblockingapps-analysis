.class public Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "CallScreenDiyPdtActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/FrameLayout;

.field private C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

.field private D:Z

.field private E:Landroid/widget/RelativeLayout;

.field private F:Z

.field private G:Landroid/widget/RadioButton;

.field private H:Landroid/widget/RadioButton;

.field private I:Landroid/widget/RadioButton;

.field private J:Landroid/widget/RadioButton;

.field private K:Landroid/app/Dialog;

.field private L:Landroid/widget/LinearLayout;

.field private M:Z

.field private N:Z

.field private O:Landroidx/appcompat/app/a;

.field P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private R:Landroid/widget/FrameLayout;

.field private S:Landroid/widget/LinearLayout;

.field private T:Z

.field private U:Landroid/widget/FrameLayout;

.field private V:Landroid/widget/FrameLayout;

.field private W:Z

.field private X:Z

.field private Y:Landroid/widget/FrameLayout;

.field private Z:Lcom/google/android/gms/ads/nativead/a;

.field private a0:Lcom/google/android/gms/ads/d;

.field private b0:Landroid/widget/ImageView;

.field private c0:Z

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

    const-string v0, "CallScreenDiyPdtActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->u:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->M:Z

    .line 4
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->N:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->P:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->o0()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->n0()V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;Lcom/google/android/gms/ads/nativead/a;)Lcom/google/android/gms/ads/nativead/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Z:Lcom/google/android/gms/ads/nativead/a;

    return-object p1
.end method

.method static synthetic a0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Y:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Lcom/google/android/gms/ads/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->a0:Lcom/google/android/gms/ads/d;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;Lcom/google/android/gms/ads/d;)Lcom/google/android/gms/ads/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->a0:Lcom/google/android/gms/ads/d;

    return-object p1
.end method

.method static synthetic d0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->c0:Z

    return p1
.end method

.method static synthetic e0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic f0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->N:Z

    return p1
.end method

.method static synthetic g0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->H:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->G:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    return-object p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->M:Z

    return p1
.end method

.method static synthetic k0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->J:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic l0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->I:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic m0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroidx/appcompat/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->O:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method private n0()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->z:Landroid/widget/ImageView;

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

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v0, :cond_4

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "callscreen"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "homeInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->W:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->W:Z

    .line 11
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->W:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {p0, v0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->r0(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private o0()V
    .locals 8

    const v0, 0x7f09034b

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    const v0, 0x7f0902b7

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->z:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->z:Landroid/widget/ImageView;

    const v1, 0x7f08015b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const v0, 0x7f09031f

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f090304

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->b0:Landroid/widget/ImageView;

    const v0, 0x7f090211

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->B:Landroid/widget/FrameLayout;

    const v0, 0x7f09074f

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090212

    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f090750

    .line 10
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0904e2

    .line 11
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->E:Landroid/widget/RelativeLayout;

    .line 12
    iget-boolean v4, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->F:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    invoke-static {v4}, Lcom/allinone/callerid/d/f/f;->v(Z)V

    :cond_1
    const v3, 0x7f09038d

    .line 15
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Q:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f090213

    .line 16
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->R:Landroid/widget/FrameLayout;

    const v3, 0x7f090751

    .line 17
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0903ac

    .line 18
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->S:Landroid/widget/LinearLayout;

    const v4, 0x7f0906f2

    .line 19
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    .line 21
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Emily"

    .line 22
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v5, 0x7f0906f1

    .line 23
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0904c3

    .line 24
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v7, 0x7f09021a

    .line 25
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->U:Landroid/widget/FrameLayout;

    const v7, 0x7f090219

    .line 26
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->V:Landroid/widget/FrameLayout;

    .line 27
    iget-object v7, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v7, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->A:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v7, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->b0:Landroid/widget/ImageView;

    invoke-virtual {v7, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v7, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v7, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {v6, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->w:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private p0()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V

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

.method public static q0(Landroid/app/Activity;)V
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

.method private r0(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/c;->v(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->s(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

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
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    const-class v2, Lcom/allinone/callerid/callscreen/CustomMedia/JZMediaExo;

    invoke-virtual {v1, v0, p1, v2}, Lcn/jzvd/JzvdStd;->setUp(Lcn/jzvd/t;ILjava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/view/MyJzvdStd;->U()V

    .line 7
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->X:Z
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

.method private s0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->K:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v0, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->p0()V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "callscreen_diy_set"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsdiy(Z)V

    .line 7
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->M:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdiy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUseVideoAudioRing(Z)V

    .line 9
    :cond_1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->N:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$j;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$j;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/d/e/e/d;->a(Lcom/allinone/callerid/callscreen/bean/HomeInfo;Lcom/allinone/callerid/d/e/e/c;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->P:Ljava/util/ArrayList;

    new-instance v2, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$k;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$k;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/d/e/e/a;->b(Lcom/allinone/callerid/callscreen/bean/HomeInfo;Ljava/util/List;Lcom/allinone/callerid/d/e/e/a$a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private t0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdiy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->N:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$b;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private u0(Z)V
    .locals 4

    .line 1
    :try_start_0
    new-instance p1, Landroid/app/Dialog;

    const v0, 0x7f1100f0

    invoke-direct {p1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->K:Landroid/app/Dialog;

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

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->G:Landroid/widget/RadioButton;

    const v1, 0x7f09047a

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->H:Landroid/widget/RadioButton;

    const v1, 0x7f09047d

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->I:Landroid/widget/RadioButton;

    const v1, 0x7f09047c

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->J:Landroid/widget/RadioButton;

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

    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->L:Landroid/widget/LinearLayout;

    const v2, 0x7f09065e

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 11
    iget-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdefault()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12
    iget-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getContacts_diy_counts()I

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    iget-object v3, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getContacts_diy_counts()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->G:Landroid/widget/RadioButton;

    new-instance v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$d;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$d;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->H:Landroid/widget/RadioButton;

    new-instance v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$e;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$e;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 17
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->I:Landroid/widget/RadioButton;

    new-instance v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$f;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$f;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 18
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->J:Landroid/widget/RadioButton;

    new-instance v3, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$g;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$g;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 19
    iget-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->G:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->H:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->I:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->J:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->G:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090638

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09073e

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f09074f

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090752

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->K:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->K:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->K:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 37
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->K:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f1100f1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->K:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private v0(Landroid/content/Context;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09079a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090650

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090364

    .line 4
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0901f1

    .line 5
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Y:Landroid/widget/FrameLayout;

    .line 6
    iget-object v5, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object v1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$h;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$h;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v1, Landroidx/appcompat/app/a$a;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->d(Z)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->O:Landroidx/appcompat/app/a;

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Z:Lcom/google/android/gms/ads/nativead/a;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0003

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Z:Lcom/google/android/gms/ads/nativead/a;

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/gg/d;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 17
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    const-string v1, "ad has,show ad"

    .line 18
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Y:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Y:Landroid/widget/FrameLayout;

    .line 23
    :cond_1
    iput-object v2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Z:Lcom/google/android/gms/ads/nativead/a;

    goto :goto_0

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->a0:Lcom/google/android/gms/ads/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/d;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 25
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->p0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
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

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->P:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->P:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->G:Landroid/widget/RadioButton;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/16 p3, 0x3ca

    if-ne p1, p3, :cond_3

    const/16 p1, 0x3d4

    if-ne p2, p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isDownloaded()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->s0()V

    .line 10
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->M:Z

    if-eqz p1, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->t0()V

    :cond_3
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
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f010001

    const/high16 v1, 0x7f010000

    const v2, 0x7f080062

    const v3, 0x7f08029b

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->F:Z

    if-nez p1, :cond_6

    .line 3
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->T:Z

    if-nez p1, :cond_0

    .line 4
    iput-boolean v4, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->T:Z

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Q:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->S:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->U:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->V:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->b0:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 12
    :cond_0
    iput-boolean v6, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->T:Z

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Q:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->S:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->U:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->V:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->b0:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 20
    :sswitch_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->K:Landroid/app/Dialog;

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_1

    .line 22
    :sswitch_2
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->X:Z

    if-eqz p1, :cond_6

    .line 23
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->D:Z

    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    invoke-virtual {p1}, Lcn/jzvd/Jzvd;->d()V

    .line 25
    iput-boolean v6, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->D:Z

    .line 26
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f08029d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->y:Lcom/allinone/callerid/callscreen/view/MyJzvdStd;

    invoke-virtual {p1}, Lcn/jzvd/Jzvd;->s()V

    .line 28
    iput-boolean v4, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->D:Z

    .line 29
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->A:Landroid/widget/ImageView;

    const v0, 0x7f08029a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 30
    :sswitch_3
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->T:Z

    if-nez p1, :cond_2

    .line 31
    iput-boolean v4, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->T:Z

    .line 32
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Q:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->S:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->U:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->V:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->b0:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 39
    :cond_2
    iput-boolean v6, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->T:Z

    .line 40
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->Q:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->R:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->S:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->U:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->V:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->b0:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 47
    :sswitch_4
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->c0:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x378

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_3
    const/16 p1, 0x309

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 50
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 52
    :sswitch_5
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->k()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->u0(Z)V

    goto :goto_1

    .line 53
    :sswitch_6
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->E:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    iput-boolean v6, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->F:Z

    .line 55
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->k()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->u0(Z)V

    goto :goto_1

    .line 56
    :sswitch_7
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->k()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->u0(Z)V

    goto :goto_1

    .line 57
    :sswitch_8
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->L:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 58
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/j1/a;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 60
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->C:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    if-eqz p1, :cond_6

    .line 61
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isDownloaded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 62
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->s0()V

    .line 63
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->M:Z

    if-eqz p1, :cond_6

    .line 64
    invoke-direct {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->t0()V

    goto :goto_1

    .line 65
    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 66
    const-class v2, Lcom/allinone/callerid/callscreen/activitys/OpenPerActivity;

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v2, 0x3ca

    .line 67
    invoke-virtual {p0, p1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090210 -> :sswitch_8
        0x7f090211 -> :sswitch_7
        0x7f090212 -> :sswitch_6
        0x7f090213 -> :sswitch_5
        0x7f0902b7 -> :sswitch_4
        0x7f090304 -> :sswitch_3
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
    invoke-static {p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->q0(Landroid/app/Activity;)V

    const p1, 0x7f0c002e

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    invoke-static {p0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->x:Ljava/lang/Boolean;

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

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->v:Landroid/graphics/Typeface;

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->w:Landroid/graphics/Typeface;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$c;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$c;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->F:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->F:Z

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->E:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->c0:Z

    const p2, 0x7f010001

    const/high16 v0, 0x7f010000

    if-eqz p1, :cond_1

    const/16 p1, 0x378

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x309

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 11
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
