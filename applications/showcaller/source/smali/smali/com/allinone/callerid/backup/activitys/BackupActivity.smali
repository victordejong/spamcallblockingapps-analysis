.class public Lcom/allinone/callerid/backup/activitys/BackupActivity;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "BackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/FrameLayout;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/FrameLayout;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/FrameLayout;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/FrameLayout;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/graphics/Typeface;

.field private R:Landroid/graphics/Typeface;

.field private S:Landroid/app/AlertDialog;

.field private T:Landroid/app/AlertDialog;

.field private U:Landroid/app/AlertDialog;

.field private V:Landroid/widget/PopupWindow;

.field private W:Landroid/app/AlertDialog;

.field private X:Lcom/google/api/services/drive/Drive;

.field private Y:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private Z:Z

.field private a0:Z

.field private b0:Ljava/text/SimpleDateFormat;

.field private c0:Landroid/app/AlertDialog;

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "BackupActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->u:Ljava/lang/String;

    return-void
.end method

.method private A0()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0120

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09074e

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090210

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 6
    iget-object v3, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    const v1, 0x7f110305

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    const v1, 0x7f110304

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 17
    :goto_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private B0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->R:Landroid/graphics/Typeface;

    const v0, 0x7f09079c

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f0902f8

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->w:Landroid/widget/ImageView;

    const v0, 0x7f0902b8

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->x:Landroid/widget/ImageView;

    const v0, 0x7f090613

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f09059d

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->z:Landroid/widget/Switch;

    const v0, 0x7f090614

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->A:Landroid/widget/TextView;

    const v0, 0x7f0906b5

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f0901c9

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->C:Landroid/widget/FrameLayout;

    const v0, 0x7f090687

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->D:Landroid/widget/TextView;

    const v0, 0x7f090386

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->E:Landroid/widget/LinearLayout;

    const v0, 0x7f09068b

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->F:Landroid/widget/TextView;

    const v0, 0x7f09068c

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->G:Landroid/widget/TextView;

    const v0, 0x7f0901c5

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->H:Landroid/widget/FrameLayout;

    const v0, 0x7f0905f9

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->I:Landroid/widget/TextView;

    const v0, 0x7f0905f8

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->J:Landroid/widget/TextView;

    const v0, 0x7f0901ee

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->K:Landroid/widget/FrameLayout;

    const v0, 0x7f090689

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->L:Landroid/widget/TextView;

    const v0, 0x7f090688

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->M:Landroid/widget/TextView;

    const v0, 0x7f0901ca

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->N:Landroid/widget/FrameLayout;

    const v0, 0x7f0906d2

    .line 22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->P:Landroid/widget/TextView;

    const v0, 0x7f0906d1

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->O:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->D:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->G:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->L:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->M:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->H:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->K:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->N:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->z:Landroid/widget/Switch;

    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$j;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private C0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/a;->c(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/a;->c(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Y:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGoogleAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Y:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->l0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backup"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->x0()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Z:Z

    .line 7
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->E0()V

    :goto_0
    return-void
.end method

.method private E0()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "backup"

    const-string v1, "Requesting sign-in"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "https://www.googleapis.com/auth/drive.file"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->e(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$a;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/c;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->u()Lcom/google/android/gms/tasks/g;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->s()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private F0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Y:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100272

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "https://www.googleapis.com/auth/drive.file"

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->d(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Y:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->P()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->c(Landroid/accounts/Account;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    .line 6
    new-instance v1, Lcom/google/api/services/drive/Drive$Builder;

    .line 7
    invoke-static {}, Lc/c/b/a/a/a/b/a;->a()Lcom/google/api/client/http/w;

    move-result-object v2

    new-instance v3, Lcom/google/api/client/json/i/a;

    invoke-direct {v3}, Lcom/google/api/client/json/i/a;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/c;Lcom/google/api/client/http/s;)V

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100066

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->X:Lcom/google/api/services/drive/Drive;

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$q;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$q;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private G0()V
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0155

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09079a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090650

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901f2

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f09069d

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090222

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v6, 0x7f0907a4

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 8
    iget-object v7, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->R:Landroid/graphics/Typeface;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 12
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$k;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$k;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$l;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$l;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->U:Landroid/app/AlertDialog;

    .line 17
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private H0(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0156

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09079a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090660

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901d6

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f09063b

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->R:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    new-instance p1, Lcom/allinone/callerid/backup/activitys/BackupActivity$m;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$m;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->c0:Landroid/app/AlertDialog;

    .line 14
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private I0()V
    .locals 13

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0157

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09079a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901f8

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f0906d3

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090200

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f0906fb

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0901de

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const v7, 0x7f090662

    .line 8
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090228

    .line 9
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    const v9, 0x7f0907b4

    .line 10
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0901f3

    .line 11
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    const v11, 0x7f0906c7

    .line 12
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 13
    iget-object v12, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->R:Landroid/graphics/Typeface;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$e;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$f;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$g;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$g;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$h;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$h;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$i;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$i;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->T:Landroid/app/AlertDialog;

    .line 27
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private K0()V
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0158

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09079a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090229

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f0907b5

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09022a

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f0907b6

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 7
    iget-object v6, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->R:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$c;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$d;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->S:Landroid/app/AlertDialog;

    .line 15
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private L0()V
    .locals 13

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0159

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0906b5

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090650

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090209

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f090724

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09021d

    .line 6
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    const v6, 0x7f090763

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0902ca

    .line 8
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 9
    invoke-static {}, Lcom/allinone/callerid/c/b/c;->e()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_0

    .line 10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f1001ba

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->b0:Ljava/text/SimpleDateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v8, 0x8

    .line 11
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v8, 0x0

    .line 14
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100216

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    iget-object v8, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Q:Landroid/graphics/Typeface;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 20
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$r;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$r;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$a;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$b;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->W:Landroid/app/AlertDialog;

    .line 26
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->C:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->E:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->J:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->c0:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/backup/activitys/BackupActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Y:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p1
.end method

.method static synthetic c0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->x0()V

    return-void
.end method

.method static synthetic d0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->a0:Z

    return p0
.end method

.method static synthetic e0(Lcom/allinone/callerid/backup/activitys/BackupActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->a0:Z

    return p1
.end method

.method static synthetic f0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->F0()V

    return-void
.end method

.method static synthetic g0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Lcom/google/api/services/drive/Drive;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->X:Lcom/google/api/services/drive/Drive;

    return-object p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->b0:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->B:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->W:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->H:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic l0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->O:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->S:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->M:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic o0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->T:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic p0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->K:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic q0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->N:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic r0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Z:Z

    return p0
.end method

.method static synthetic s0(Lcom/allinone/callerid/backup/activitys/BackupActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Z:Z

    return p1
.end method

.method static synthetic t0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->E0()V

    return-void
.end method

.method static synthetic u0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->G0()V

    return-void
.end method

.method static synthetic v0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->U:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic w0(Lcom/allinone/callerid/backup/activitys/BackupActivity;)Landroid/widget/Switch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->z:Landroid/widget/Switch;

    return-object p0
.end method

.method private x0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Y:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "https://www.googleapis.com/auth/drive.file"

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->d(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Y:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->P()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->c(Landroid/accounts/Account;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    .line 6
    new-instance v1, Lcom/google/api/services/drive/Drive$Builder;

    .line 7
    invoke-static {}, Lc/c/b/a/a/a/b/a;->a()Lcom/google/api/client/http/w;

    move-result-object v2

    new-instance v3, Lcom/google/api/client/json/i/a;

    invoke-direct {v3}, Lcom/google/api/client/json/i/a;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/c;Lcom/google/api/client/http/s;)V

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100066

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->X:Lcom/google/api/services/drive/Drive;

    .line 10
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/backup/activitys/BackupActivity$p;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$p;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private y0(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/a;->d(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$o;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/g;->f(Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/backup/activitys/BackupActivity$n;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity$n;-><init>(Lcom/allinone/callerid/backup/activitys/BackupActivity;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/g;->d(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method private z0()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/allinone/callerid/c/b/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->z:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->C:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->H:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->K:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->N:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->z:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->C:Landroid/widget/FrameLayout;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->H:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->K:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->N:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 16
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/allinone/callerid/util/h1;->y()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "dd/MM/yy HH:mm a"

    invoke-direct {v0, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->b0:Ljava/text/SimpleDateFormat;

    .line 17
    invoke-static {}, Lcom/allinone/callerid/c/b/c;->e()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->B:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1001ba

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->b0:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/c/b/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 22
    iget-object v1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->J:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1000c8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/c/b/c;->c()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto :goto_2

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1001e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100370

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100119

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100251

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100212

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :goto_2
    invoke-static {}, Lcom/allinone/callerid/c/b/c;->d()I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_8

    goto :goto_3

    .line 31
    :cond_8
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->O:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100373

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 32
    :cond_9
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->O:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100372

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backup"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->x0()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->E0()V

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    if-eqz p3, :cond_4

    .line 5
    invoke-direct {p0, p3}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->y0(Landroid/content/Intent;)V

    .line 6
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->A0()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    const/16 v3, 0x33

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    .line 8
    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    const/16 v3, 0x35

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/allinone/callerid/util/j;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    .line 11
    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    .line 12
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_1

    .line 14
    :sswitch_2
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->L0()V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->V:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_1

    .line 17
    :sswitch_3
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->I0()V

    goto/16 :goto_1

    .line 18
    :sswitch_4
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->K0()V

    goto/16 :goto_1

    .line 19
    :sswitch_5
    invoke-static {}, Lcom/allinone/callerid/c/b/c;->d()I

    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/e;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1000bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 23
    :cond_2
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->C0()V

    goto :goto_0

    .line 24
    :cond_3
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->C0()V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100226

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100225

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 27
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "backup_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :sswitch_6
    invoke-static {}, Lcom/allinone/callerid/c/b/c;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, ""

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 30
    invoke-direct {p0, p1}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->H0(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/allinone/callerid/backup/activitys/BackupActivity;->Z:Z

    .line 32
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->E0()V

    :cond_7
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0901c5 -> :sswitch_6
        0x7f0901c9 -> :sswitch_5
        0x7f0901ca -> :sswitch_4
        0x7f0901ee -> :sswitch_3
        0x7f090210 -> :sswitch_2
        0x7f0902b7 -> :sswitch_1
        0x7f0902f8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

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

    :cond_0
    const p1, 0x7f0902b7

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f08015b

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    :cond_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->B0()V

    .line 11
    invoke-direct {p0}, Lcom/allinone/callerid/backup/activitys/BackupActivity;->z0()V

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
