.class public Lcom/callerid/block/start/SettingActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/start/SettingActivity$i;,
        Lcom/callerid/block/start/SettingActivity$h;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lcom/rey/material/widget/Switch;

.field private C:Landroid/widget/LinearLayout;

.field private D:Lcom/rey/material/widget/Switch;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/ImageView;

.field private H:Ljava/util/Timer;

.field private I:Ljava/util/TimerTask;

.field private J:Z

.field private s:Landroid/widget/TextView;

.field private t:Ljava/util/List;

.field private u:Lcom/rey/material/app/Dialog;

.field private v:Landroid/widget/ListView;

.field private w:Landroid/widget/TextView;

.field x:Landroid/graphics/Typeface;

.field private y:Landroid/widget/FrameLayout;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic Q(Lcom/callerid/block/start/SettingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/start/SettingActivity;->J:Z

    return p1
.end method

.method static synthetic R(Lcom/callerid/block/start/SettingActivity;)Ljava/util/TimerTask;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SettingActivity;->I:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic S(Lcom/callerid/block/start/SettingActivity;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity;->I:Ljava/util/TimerTask;

    return-object p1
.end method

.method static synthetic T(Lcom/callerid/block/start/SettingActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SettingActivity;->v:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic U(Lcom/callerid/block/start/SettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/start/SettingActivity;->g0()V

    return-void
.end method

.method static synthetic V(Lcom/callerid/block/start/SettingActivity;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SettingActivity;->H:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic W(Lcom/callerid/block/start/SettingActivity;)Lcom/rey/material/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SettingActivity;->D:Lcom/rey/material/widget/Switch;

    return-object p0
.end method

.method static synthetic X(Lcom/callerid/block/start/SettingActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SettingActivity;->y:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic Y(Lcom/callerid/block/start/SettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SettingActivity;->s:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Z(Lcom/callerid/block/start/SettingActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SettingActivity;->t:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a0(Lcom/callerid/block/start/SettingActivity;)Lcom/rey/material/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/start/SettingActivity;->u:Lcom/rey/material/app/Dialog;

    return-object p0
.end method

.method private b0()V
    .locals 3

    new-instance v0, Lcom/callerid/block/start/SettingActivity$8;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/start/SettingActivity$8;-><init>(Lcom/callerid/block/start/SettingActivity;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/SimpleDialog$Builder;->p(Ljava/lang/CharSequence;)Lcom/rey/material/app/SimpleDialog$Builder;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/SimpleDialog$Builder;->q(Landroid/graphics/Typeface;)Lcom/rey/material/app/SimpleDialog$Builder;

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

    return-void
.end method

.method private d0()V
    .locals 3

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/main/EZCallApplication;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_13
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_14
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_15
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_16
    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_17
    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_18
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_19
    const-string v1, "am"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "Ti\u1ebfng Vi\u1ec7t"

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u0627\u0631\u062f\u0648"

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "T\u00fcrk"

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u0e20\u0e32\u0e29\u0e32\u0e44\u0e17\u0e22"

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u09ac\u0c24\u0c46\u0c32\u0c41\u0c17\u0c41"

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u0ba4\u0bae\u0bbf\u0bb4\u0bcd"

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439 \u044f\u0437\u044b\u043a"

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "Portugu\u00eas"

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u0a2a\u0a70\u0a1c\u0a3e\u0a2c\u0a40"

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "Melayu"

    goto :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u092e\u0930\u093e\u0920\u0940"

    goto :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u0d2e\u0d32\u0d2f\u0d3e\u0d33\u0d02"

    goto :goto_1

    :pswitch_c
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u0c95\u0ca8\u0ccd\u0ca8\u0ca1"

    goto :goto_1

    :pswitch_d
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u05e2\u05b4\u05d1\u05b0\u05e8\u05b4\u05d9\u05ea"

    goto :goto_1

    :pswitch_e
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "lingua italiana"

    goto :goto_1

    :pswitch_f
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "Indonesia"

    goto :goto_1

    :pswitch_10
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u0939\u093f\u0928\u094d\u0926\u0940"

    goto :goto_1

    :pswitch_11
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u0a97\u0ac1\u0a9c\u0ab0\u0abe\u0aa4\u0ac0"

    goto :goto_1

    :pswitch_12
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "Fran\u00e7ais"

    goto :goto_1

    :pswitch_13
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "Espa\u00f1ol"

    goto :goto_1

    :pswitch_14
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "English"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_15
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "Deutsch"

    goto :goto_1

    :pswitch_16
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u010de\u0161tina"

    goto :goto_1

    :pswitch_17
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u09ac\u09be\u0982\u09b2\u09be \u09ad\u09be\u09b7\u09be"

    goto :goto_1

    :pswitch_18
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    goto :goto_1

    :pswitch_19
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u12a0\u121b\u122d\u129b"

    goto :goto_1

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc2c -> :sswitch_19
        0xc31 -> :sswitch_18
        0xc4c -> :sswitch_17
        0xc70 -> :sswitch_16
        0xc81 -> :sswitch_15
        0xca9 -> :sswitch_14
        0xcae -> :sswitch_13
        0xccc -> :sswitch_12
        0xcee -> :sswitch_11
        0xd01 -> :sswitch_10
        0xd25 -> :sswitch_f
        0xd2b -> :sswitch_e
        0xd2e -> :sswitch_d
        0xd63 -> :sswitch_c
        0xd9f -> :sswitch_b
        0xda5 -> :sswitch_a
        0xda6 -> :sswitch_9
        0xdf1 -> :sswitch_8
        0xe04 -> :sswitch_7
        0xe43 -> :sswitch_6
        0xe6d -> :sswitch_5
        0xe71 -> :sswitch_4
        0xe74 -> :sswitch_3
        0xe7e -> :sswitch_2
        0xe9d -> :sswitch_1
        0xeb3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e0()V
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f09048c

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0903cd

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0903db

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090398

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0903ce

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/callerid/block/start/SettingActivity;->s:Landroid/widget/TextView;

    const v5, 0x7f0903cb

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0903ca

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0903b7

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0903b8

    invoke-virtual {v0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090427

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f090428

    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0903ec

    invoke-virtual {v0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v11, 0x7f09046a

    invoke-virtual {v0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v11, 0x7f090469

    invoke-virtual {v0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/callerid/block/util/n0;->p(Landroid/content/Context;)J

    move-result-wide v11

    const-string v13, " "

    const v14, 0x7f1000f4

    const-wide/16 v15, 0x0

    cmp-long v17, v11, v15

    if-nez v17, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/callerid/block/util/e;->e(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v16, v9

    goto :goto_0

    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/callerid/block/util/e;->e(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v9, 0x7f090434

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/rey/material/widget/TextView;

    const v11, 0x7f090322

    invoke-virtual {v0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/rey/material/widget/ImageButton;

    const v12, 0x7f090187

    invoke-virtual {v0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/rey/material/widget/ImageButton;

    const v13, 0x7f090184

    invoke-virtual {v0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/rey/material/widget/ImageButton;

    const v14, 0x7f0900a1

    invoke-virtual {v0, v14}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/rey/material/widget/ImageButton;

    const v15, 0x7f09018e

    invoke-virtual {v0, v15}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/rey/material/widget/ImageButton;

    move-object/from16 v17, v10

    const v10, 0x7f090189

    invoke-virtual {v0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/rey/material/widget/ImageButton;

    move-object/from16 v18, v7

    const v7, 0x7f090190

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    move-object/from16 v19, v8

    const v8, 0x7f090408

    invoke-virtual {v0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v20, v8

    const v8, 0x7f0903d7

    invoke-virtual {v0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v7, 0x7f09015e

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, v0, Lcom/callerid/block/start/SettingActivity;->y:Landroid/widget/FrameLayout;

    const v7, 0x7f090480

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/callerid/block/start/SettingActivity;->z:Landroid/widget/TextView;

    const v7, 0x7f090481

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/callerid/block/start/SettingActivity;->A:Landroid/widget/TextView;

    const v7, 0x7f090361

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/rey/material/widget/Switch;

    iput-object v7, v0, Lcom/callerid/block/start/SettingActivity;->B:Lcom/rey/material/widget/Switch;

    invoke-static {}, Lcom/callerid/block/util/n0;->h0()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/callerid/block/start/SettingActivity;->B:Lcom/rey/material/widget/Switch;

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lcom/callerid/block/start/SettingActivity;->B:Lcom/rey/material/widget/Switch;

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7, v8}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    iget-object v7, v0, Lcom/callerid/block/start/SettingActivity;->B:Lcom/rey/material/widget/Switch;

    new-instance v8, Lcom/callerid/block/start/SettingActivity$c;

    invoke-direct {v8, v0}, Lcom/callerid/block/start/SettingActivity$c;-><init>(Lcom/callerid/block/start/SettingActivity;)V

    invoke-virtual {v7, v8}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    invoke-virtual {v12, v0}, Lcom/rey/material/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v13, v0}, Lcom/rey/material/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14, v0}, Lcom/rey/material/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v0}, Lcom/rey/material/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, v0}, Lcom/rey/material/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v0, Lcom/callerid/block/start/SettingActivity;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/callerid/block/start/SettingActivity$d;

    invoke-direct {v7, v0}, Lcom/callerid/block/start/SettingActivity$d;-><init>(Lcom/callerid/block/start/SettingActivity;)V

    invoke-virtual {v11, v7}, Lcom/rey/material/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static/range {p0 .. p0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v0, Lcom/callerid/block/start/SettingActivity;->s:Landroid/widget/TextView;

    invoke-static/range {p0 .. p0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    iget-object v7, v0, Lcom/callerid/block/start/SettingActivity;->s:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f1001e0

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f090355

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/rey/material/widget/Switch;

    invoke-static/range {p0 .. p0}, Lcom/callerid/block/util/n0;->R(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7, v8}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    new-instance v8, Lcom/callerid/block/start/SettingActivity$e;

    invoke-direct {v8, v0}, Lcom/callerid/block/start/SettingActivity$e;-><init>(Lcom/callerid/block/start/SettingActivity;)V

    invoke-virtual {v7, v8}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    const v7, 0x7f09035d

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/rey/material/widget/Switch;

    invoke-static/range {p0 .. p0}, Lcom/callerid/block/util/n0;->l(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v7, v8}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    new-instance v8, Lcom/callerid/block/start/SettingActivity$f;

    invoke-direct {v8, v0}, Lcom/callerid/block/start/SettingActivity$f;-><init>(Lcom/callerid/block/start/SettingActivity;)V

    invoke-virtual {v7, v8}, Lcom/rey/material/widget/Switch;->setOnCheckedChangeListener(Lcom/rey/material/widget/Switch$b;)V

    iget-object v7, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->s:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    move-object/from16 v8, v19

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    move-object/from16 v7, v18

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    move-object/from16 v9, v16

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    move-object/from16 v10, v17

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    move-object/from16 v8, v20

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->w:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->z:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, v0, Lcom/callerid/block/start/SettingActivity;->A:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private f0()V
    .locals 2

    const v0, 0x7f0902fa

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callerid/block/start/SettingActivity;->C:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/callerid/block/util/u0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->C:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f090363

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rey/material/widget/Switch;

    iput-object v0, p0, Lcom/callerid/block/start/SettingActivity;->D:Lcom/rey/material/widget/Switch;

    const v0, 0x7f0904b1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/SettingActivity;->E:Landroid/widget/TextView;

    const v0, 0x7f0904b0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/start/SettingActivity;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0901d0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/start/SettingActivity;->G:Landroid/widget/ImageView;

    new-instance v1, Lcom/callerid/block/start/SettingActivity$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/SettingActivity$b;-><init>(Lcom/callerid/block/start/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->D:Lcom/rey/material/widget/Switch;

    invoke-static {}, Lcom/callerid/block/util/n0;->i0()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->C:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private g0()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/x0/a;->h(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "wbb"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->I:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f00\u542f\u4e86\u901a\u77e5\u7ba1\u7406"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->D:Lcom/rey/material/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    invoke-static {v1}, Lcom/callerid/block/util/n0;->w1(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->l1(Z)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "whatsapp_identify_open"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "\u672a\u5f00\u542f\u901a\u77e5\u7ba1\u7406"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public c0()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/callerid/block/util/j;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public h0()V
    .locals 5

    new-instance v0, Lcom/rey/material/app/Dialog;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1}, Lcom/rey/material/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/callerid/block/start/SettingActivity;->u:Lcom/rey/material/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->u:Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->u:Lcom/rey/material/app/Dialog;

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->u:Lcom/rey/material/app/Dialog;

    const v1, 0x7f1001bd

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->u:Lcom/rey/material/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->u:Lcom/rey/material/app/Dialog;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->u:Lcom/rey/material/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog;->x(I)Lcom/rey/material/app/Dialog;

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->u:Lcom/rey/material/app/Dialog;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/callerid/block/start/SettingActivity;->v:Landroid/widget/ListView;

    new-instance v0, Lcom/callerid/block/start/SettingActivity$i;

    invoke-direct {v0, p0, p0}, Lcom/callerid/block/start/SettingActivity$i;-><init>(Lcom/callerid/block/start/SettingActivity;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/callerid/block/start/SettingActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->v:Landroid/widget/ListView;

    new-instance v1, Lcom/callerid/block/start/SettingActivity$g;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/SettingActivity$g;-><init>(Lcom/callerid/block/start/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/callerid/block/start/SettingActivity;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/callerid/block/start/SettingActivity;->v:Landroid/widget/ListView;

    invoke-static {v2}, Lcom/callerid/block/util/g;->b(Landroid/widget/ListView;)V

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v2, v1, :cond_1

    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/callerid/block/start/SettingActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e7

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/x0/a;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p2, "delete_request_default_dialer_enabled"

    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "android.app.role.DIALER"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f010001

    const/high16 v2, 0x7f010000

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    :try_start_0
    const-string p1, "https://www.ayamote.com/privacy.html "

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto :goto_0

    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/callerid/block/mvc/controller/SwitchLanguageActivity;

    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_6

    :sswitch_2
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "mailto:KarlaeCarole@gmail.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    const-string v3, "Caller ID-Feedback"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :sswitch_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/x0/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const/16 v1, 0x1d

    const/16 v2, 0x3e7

    if-lt p1, v1, :cond_4

    :try_start_2
    const-class p1, Landroid/app/role/RoleManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v3, "default_dialer"

    if-eqz v1, :cond_2

    :try_start_3
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "This app is the default dialer app"

    invoke-static {v3, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/callerid/block/start/SettingActivity;->b0()V

    goto :goto_2

    :cond_2
    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "This app isn\'t the default dialer app"

    invoke-static {v3, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    :goto_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "delete_request_default_dialer"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception p1

    invoke-direct {p0}, Lcom/callerid/block/start/SettingActivity;->b0()V

    goto :goto_0

    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/callerid/block/start/SettingActivity;->b0()V

    goto :goto_7

    :sswitch_4
    const-string p1, "testyahu"

    const-string v0, "\u70b9\u51fb\u5173\u4e8e"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/start/AboutActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_5

    :sswitch_5
    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity;->B:Lcom/rey/material/widget/Switch;

    invoke-virtual {p1}, Lcom/rey/material/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_4

    :cond_7
    const/4 p1, 0x1

    :goto_4
    invoke-static {p1}, Lcom/callerid/block/util/n0;->u1(Z)V

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->B:Lcom/rey/material/widget/Switch;

    invoke-virtual {v0, p1}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    goto :goto_7

    :sswitch_6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/start/CallerActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_6
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_8
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900a1 -> :sswitch_6
        0x7f09015e -> :sswitch_5
        0x7f090184 -> :sswitch_4
        0x7f090187 -> :sswitch_3
        0x7f090189 -> :sswitch_2
        0x7f090190 -> :sswitch_1
        0x7f090434 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity;->x:Landroid/graphics/Typeface;

    const p1, 0x7f0c0035

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/callerid/block/start/SettingActivity;->c0()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity;->t:Ljava/util/List;

    const p1, 0x7f09021e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v0, Lcom/callerid/block/start/SettingActivity$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/SettingActivity$a;-><init>(Lcom/callerid/block/start/SettingActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity;->H:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/callerid/block/start/SettingActivity;->e0()V

    invoke-direct {p0}, Lcom/callerid/block/start/SettingActivity;->d0()V

    invoke-direct {p0}, Lcom/callerid/block/start/SettingActivity;->f0()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget-boolean p1, Lcom/callerid/block/util/t0;->a:Z

    const p2, 0x7f010001

    const/high16 v0, 0x7f010000

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    sput-boolean p1, Lcom/callerid/block/util/t0;->a:Z

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/callerid/block/main/MainActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :try_start_0
    iget-boolean v0, p0, Lcom/callerid/block/start/SettingActivity;->J:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/start/SettingActivity;->J:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/x0/a;->h(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "wbb"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->I:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "onRestart\u5f00\u542f\u4e86\u901a\u77e5\u7ba1\u7406"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->D:Lcom/rey/material/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    invoke-static {v1}, Lcom/callerid/block/util/n0;->w1(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity;->I:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "onRestart\u672a\u5f00\u542f\u901a\u77e5\u7ba1\u7406"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    return-void
.end method
