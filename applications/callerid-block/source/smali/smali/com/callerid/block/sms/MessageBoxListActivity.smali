.class public Lcom/callerid/block/sms/MessageBoxListActivity;
.super Lcom/callerid/block/main/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;,
        Lcom/callerid/block/sms/MessageBoxListActivity$z;,
        Lcom/callerid/block/sms/MessageBoxListActivity$y;,
        Lcom/callerid/block/sms/MessageBoxListActivity$x;,
        Lcom/callerid/block/sms/MessageBoxListActivity$w;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private A0:Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;

.field private B:Ljava/lang/String;

.field private C:Landroid/widget/PopupWindow;

.field private D:Lcom/callerid/block/customview/LImageButton;

.field private E:Lcom/callerid/block/b/j;

.field private F:Lcom/callerid/block/sms/MessageBoxListActivity$z;

.field G:Landroid/graphics/Typeface;

.field H:Landroid/widget/TextView;

.field I:Landroid/widget/TextView;

.field J:Landroid/widget/TextView;

.field private K:Lcom/callerid/block/bean/SMSBean;

.field private L:Landroid/widget/LinearLayout;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/EditText;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/widget/ImageView;

.field private T:Ljava/io/File;

.field private U:Landroid/net/Uri;

.field private V:Landroid/net/Uri;

.field private W:Lcom/callerid/block/sms/g;

.field private X:Ljava/lang/String;

.field private Y:Landroid/content/ContentResolver;

.field private Z:Landroid/net/Uri;

.field private a0:I

.field private b0:Ljava/lang/String;

.field private c0:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

.field private d0:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

.field private e0:Landroid/widget/ImageView;

.field private f0:Landroid/widget/LinearLayout;

.field private g0:Landroid/widget/FrameLayout;

.field private h0:Landroid/widget/FrameLayout;

.field private i0:Landroid/widget/FrameLayout;

.field private j0:Landroid/widget/ImageView;

.field private k0:Landroid/widget/RelativeLayout;

.field private l0:I

.field private m0:I

.field private n0:I

.field private o0:Landroid/widget/ImageView;

.field private p0:I

.field private q0:I

.field private r0:I

.field private s:Landroid/widget/ListView;

.field private s0:I

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/bean/MessageBean;",
            ">;"
        }
    .end annotation
.end field

.field private t0:Landroid/widget/LinearLayout;

.field private u:Lcom/callerid/block/customview/LImageButton;

.field private u0:Landroid/widget/ImageView;

.field private v:Lcom/callerid/block/customview/LImageButton;

.field private v0:Landroid/widget/TextView;

.field private w:Ljava/lang/String;

.field private w0:Landroid/widget/ImageView;

.field private x:Landroid/widget/TextView;

.field public x0:Z

.field private y:Ljava/lang/String;

.field public y0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/bean/MessageBean;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/String;

.field private z0:Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/callerid/block/main/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/photo.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->T:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/crop_photo.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->x0:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y0:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic A0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic B0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/b/j;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->E:Lcom/callerid/block/b/j;

    return-object p0
.end method

.method static synthetic C0(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/bean/SMSBean;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    return-object p0
.end method

.method static synthetic D0(Lcom/callerid/block/sms/MessageBoxListActivity;Lcom/callerid/block/bean/SMSBean;)Lcom/callerid/block/bean/SMSBean;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    return-object p1
.end method

.method static synthetic E0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->B:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic G0(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/content/Context;Lcom/callerid/block/bean/SMSBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callerid/block/sms/MessageBoxListActivity;->L0(Landroid/content/Context;Lcom/callerid/block/bean/SMSBean;Ljava/lang/String;)V

    return-void
.end method

.method private H0()V
    .locals 2

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$w;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$w;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private J0()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callerid/block/bean/SMSBean;->getThread_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v0}, Lcom/callerid/block/bean/SMSBean;->getThread_id()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v1}, Lcom/callerid/block/bean/SMSBean;->getThread_id()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callerid/block/sms/MessageBoxListActivity$h;

    invoke-direct {v2, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$h;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-static {v0, v1, v2}, Lcom/callerid/block/mvc/model/sms/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/a;)V

    :cond_0
    return-void
.end method

.method private K0()V
    .locals 3

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$17;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/sms/MessageBoxListActivity$17;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a9

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

    const v2, 0x7f1000af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/SimpleDialog$Builder;->p(Ljava/lang/CharSequence;)Lcom/rey/material/app/SimpleDialog$Builder;

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

.method private L0(Landroid/content/Context;Lcom/callerid/block/bean/SMSBean;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private M0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/part/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {p1, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    throw p1

    :catch_1
    nop

    if-eqz v1, :cond_2

    goto :goto_1

    :catch_2
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static O0()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private P0()V
    .locals 2

    const v0, 0x7f090264

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->s:Landroid/widget/ListView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t:Ljava/util/ArrayList;

    new-instance v0, Lcom/callerid/block/b/j;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/b/j;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->E:Lcom/callerid/block/b/j;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->s:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private Q()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$y;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$y;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private Q0()V
    .locals 1

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$v;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$v;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-static {p0, v0}, Lcom/klinker/android/send_message/a;->d(Landroid/content/Context;Lcom/klinker/android/send_message/a$e;)V

    return-void
.end method

.method static synthetic R(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->e0:Landroid/widget/ImageView;

    return-object p0
.end method

.method private R0()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/callerid/block/util/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v3}, Lcom/callerid/block/bean/SMSBean;->isIs_contacts()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->M:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v3}, Lcom/callerid/block/bean/SMSBean;->getSearch_name()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v3}, Lcom/callerid/block/bean/SMSBean;->getSearch_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->M:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v4}, Lcom/callerid/block/bean/SMSBean;->getSearch_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->x:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->M:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->A:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->L:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->l0:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t0:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->l0:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "SmsNumber"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/callerid/block/util/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->M:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    new-instance v2, Lcom/callerid/block/sms/MessageBoxListActivity$d;

    invoke-direct {v2, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$d;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-static {p0, v0, v2}, Lcom/callerid/block/h/a/f/r;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/f/q;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/o0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v0, v2, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    sget-boolean v2, Lcom/callerid/block/util/w;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "tony"

    if-eqz v2, :cond_7

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "infoList:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iput v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->q0:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->r0:I

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simCardOneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->q0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "simCardTwoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->r0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->q0:I

    iput v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->s0:I

    goto :goto_4

    :cond_9
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->p0:I

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultSubscriptionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->p0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    iget v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->s0:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->p0:I

    iput v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->s0:I

    :cond_b
    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->X0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method static synthetic S(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    return-object p0
.end method

.method private S0()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Le/d/a/a/a;->h(Z)V

    const-string v0, "messenger_log.txt"

    invoke-static {v0}, Le/d/a/a/a;->j(Ljava/lang/String;)V

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$a;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-static {v0}, Le/d/a/a/a;->i(Le/d/a/a/b;)V

    return-void
.end method

.method static synthetic T(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/content/Context;Lcom/callerid/block/bean/SMSBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callerid/block/sms/MessageBoxListActivity;->a1(Landroid/content/Context;Lcom/callerid/block/bean/SMSBean;Ljava/lang/String;)V

    return-void
.end method

.method private T0()V
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->H:Landroid/widget/TextView;

    const v1, 0x7f09039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->I:Landroid/widget/TextView;

    const v1, 0x7f090498

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->J:Landroid/widget/TextView;

    const v1, 0x7f09043c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->N:Landroid/widget/TextView;

    const v1, 0x7f0903d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->I:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->H:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->J:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->N:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->O:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->p1()V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->O:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->C:Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->C:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->C:Landroid/widget/PopupWindow;

    const v1, 0x7f11030d

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic U(Lcom/callerid/block/sms/MessageBoxListActivity;Lcom/callerid/block/bean/SMSBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->g1(Lcom/callerid/block/bean/SMSBean;)V

    return-void
.end method

.method private U0()V
    .locals 2

    invoke-static {p0}, Lcom/callerid/block/sms/g;->a(Landroid/content/Context;)Lcom/callerid/block/sms/g;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->W:Lcom/callerid/block/sms/g;

    invoke-virtual {v0}, Lcom/callerid/block/sms/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->Q0()V

    :cond_0
    return-void
.end method

.method static synthetic V(Lcom/callerid/block/sms/MessageBoxListActivity;)Lcom/callerid/block/sms/g;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->W:Lcom/callerid/block/sms/g;

    return-object p0
.end method

.method private V0()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->k1()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->J0()V

    :goto_0
    return-void
.end method

.method static synthetic W(Lcom/callerid/block/sms/MessageBoxListActivity;Lcom/callerid/block/sms/g;)Lcom/callerid/block/sms/g;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->W:Lcom/callerid/block/sms/g;

    return-object p1
.end method

.method private W0(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_SMS"

    invoke-static {v0, v1}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v3, "date_sent"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v4, "read"

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string v5, "type"

    aput-object v5, v0, v1

    const/16 v1, 0x9

    const-string v5, "status"

    aput-object v5, v0, v1

    const/16 v1, 0xa

    const-string v5, "locked"

    aput-object v5, v0, v1

    const/16 v1, 0xb

    const-string v6, "error_code"

    aput-object v6, v0, v1

    const/16 v1, 0xc

    const-string v6, "sub"

    aput-object v6, v0, v1

    const/16 v1, 0xd

    const-string v6, "sub_cs"

    aput-object v6, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v4, v0, v1

    const/16 v1, 0x11

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    aput-object v5, v0, v1

    const/16 v1, 0x17

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    aput-object v2, v0, v1

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v1

    iget-object v1, v1, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/callerid/block/sms/MessageBoxListActivity$g;

    invoke-direct {v2, p0, p1, v0}, Lcom/callerid/block/sms/MessageBoxListActivity$g;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic X(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Z:Landroid/net/Uri;

    return-object p0
.end method

.method private X0()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callerid/block/bean/SMSBean;->getThread_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v0}, Lcom/callerid/block/bean/SMSBean;->getThread_id()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callerid/block/sms/MessageBoxListActivity;->W0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v0}, Lcom/callerid/block/bean/SMSBean;->getRead()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {v1}, Lcom/callerid/block/bean/SMSBean;->getThread_id()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callerid/block/sms/MessageBoxListActivity$e;

    invoke-direct {v2, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$e;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-static {v0, v1, v2}, Lcom/callerid/block/mvc/model/sms/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/callerid/block/sms/MessageBoxListActivity$f;

    invoke-direct {v1, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$f;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-static {v0, v1}, Lcom/callerid/block/mvc/model/sms/e;->a(Ljava/lang/String;Lcom/callerid/block/mvc/model/sms/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic Y(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Z:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic Z(Lcom/callerid/block/sms/MessageBoxListActivity;I)I
    .locals 0

    iput p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->a0:I

    return p1
.end method

.method static synthetic a0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->b0:Ljava/lang/String;

    return-object p1
.end method

.method private a1(Landroid/content/Context;Lcom/callerid/block/bean/SMSBean;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/callerid/block/util/t0;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method private c1()V
    .locals 6

    :try_start_0
    new-instance v0, Lcom/callerid/block/bean/MessageBean;

    invoke-direct {v0}, Lcom/callerid/block/bean/MessageBean;-><init>()V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/MessageBean;->setNumber(Ljava/lang/String;)V

    const v1, 0x7f10019d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/MessageBean;->setDate_time(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/MessageBean;->setText(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/MessageBean;->setType(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/callerid/block/bean/MessageBean;->setMms(Z)V

    invoke-virtual {v0, v2}, Lcom/callerid/block/bean/MessageBean;->setSendIng(Z)V

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Z:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callerid/block/bean/MessageBean;->setPartId(Ljava/lang/String;)V

    iget v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->a0:I

    invoke-virtual {v0, v3}, Lcom/callerid/block/bean/MessageBean;->setImageOrVideo(I)V

    iget-object v3, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->E:Lcom/callerid/block/b/j;

    invoke-virtual {v3, v0}, Lcom/callerid/block/b/j;->d(Lcom/callerid/block/bean/MessageBean;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->E:Lcom/callerid/block/b/j;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->a0:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x7f08019c

    const-string v4, ""

    const/16 v5, 0x8

    if-ne v0, v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->X:Ljava/lang/String;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->b0:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->d1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->k0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Q:Landroid/widget/ImageView;

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->X:Ljava/lang/String;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Z:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->e1(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->k0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Q:Landroid/widget/ImageView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic d0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->M:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e0(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->p1()V

    return-void
.end method

.method static synthetic f0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->W0(Ljava/lang/String;)V

    return-void
.end method

.method private f1()V
    .locals 5

    const-string v0, "android.app.role.SMS"

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->X:Ljava/lang/String;

    iget v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->a0:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/o0;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->X:Ljava/lang/String;

    iget v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->s0:I

    invoke-static {p0, v0, v1, v2}, Lcom/callerid/block/sms/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->X:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/callerid/block/sms/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x1d

    const/16 v3, 0x3dd

    if-lt v1, v2, :cond_6

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleManager;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "tony"

    if-eqz v2, :cond_4

    :try_start_1
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "This app is the default sms app"

    invoke-static {v4, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->c1()V

    goto :goto_2

    :cond_4
    sget-boolean v2, Lcom/callerid/block/util/w;->a:Z

    if-eqz v2, :cond_5

    const-string v2, "This app isn\'t the default sms app"

    invoke-static {v4, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic g0(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->f1()V

    return-void
.end method

.method private g1(Lcom/callerid/block/bean/SMSBean;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/callerid/block/sms/MessageBoxListActivity$j;

    invoke-direct {v1, p0, p1, v0}, Lcom/callerid/block/sms/MessageBoxListActivity$j;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/callerid/block/h/a/c/b;->b(Ljava/lang/String;Lcom/callerid/block/h/a/c/a;)V

    :cond_0
    return-void
.end method

.method static synthetic h0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Y:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic i0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->M0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private i1(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->k0:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Q:Landroid/widget/ImageView;

    const v1, 0x7f08011f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040525

    const v2, 0x7f0801ab

    invoke-static {v0, v1, v2}, Lcom/callerid/block/util/p0;->b(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/b;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/h;->q(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->i(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->B0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/j;

    return-void
.end method

.method static synthetic j0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->s:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic k0(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->V0()V

    return-void
.end method

.method private k1()V
    .locals 3

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$19;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/sms/MessageBoxListActivity$19;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ce

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

    const v2, 0x7f1000d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/SimpleDialog$Builder;->p(Ljava/lang/CharSequence;)Lcom/rey/material/app/SimpleDialog$Builder;

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

.method static synthetic l0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->A:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic m0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->L:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic n0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic o0(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->Q()V

    return-void
.end method

.method private o1()V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/sms/MessageBoxListActivity$k;

    invoke-direct {v1, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$k;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic p0(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->q1()V

    return-void
.end method

.method private p1()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic q0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    return-object p0
.end method

.method private q1()V
    .locals 2

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->X0()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.callerid.block.ADD_UPDATE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic r0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Q:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic s0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->X:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic t0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic u0(Lcom/callerid/block/sms/MessageBoxListActivity;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->m0:I

    return p0
.end method

.method static synthetic v0(Lcom/callerid/block/sms/MessageBoxListActivity;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->n0:I

    return p0
.end method

.method static synthetic w0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->U:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic x0(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->U:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic y0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->T:Ljava/io/File;

    return-object p0
.end method

.method static synthetic z0(Lcom/callerid/block/sms/MessageBoxListActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->k0:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method public I0()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y0:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->E:Lcom/callerid/block/b/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/callerid/block/b/j;->f(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->E:Lcom/callerid/block/b/j;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->v0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$x;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$x;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public N0()V
    .locals 1

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$m;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$m;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-static {p0, v0}, Lcom/callerid/block/util/x0/a;->l(Landroid/app/Activity;Lcom/callerid/block/util/x0/a$g;)V

    return-void
.end method

.method public Y0(Ljava/lang/String;)[B
    .locals 5

    const/16 v0, 0x400

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method public Z0()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/callerid/block/sms/h;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;

    invoke-direct {v1, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    iput-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->z0:Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->z0:Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;

    invoke-virtual {v1, v2, v0}, Ld/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/callerid/block/sms/h;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;

    invoke-direct {v1, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    iput-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->A0:Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->A0:Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;

    invoke-virtual {v1, v2, v0}, Ld/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public b1()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->v0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public d1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/sms/MessageBoxListActivity$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/callerid/block/sms/MessageBoxListActivity$b;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e1(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/callerid/block/sms/MessageBoxListActivity$c;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/callerid/block/sms/MessageBoxListActivity$c;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h1()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->L:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->x0:Z

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->H0()V

    return-void
.end method

.method public j1()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->L:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public l1()V
    .locals 1

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$l;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$l;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-static {p0, v0}, Lcom/callerid/block/util/x0/a;->i(Landroid/app/Activity;Lcom/callerid/block/util/x0/a$g;)V

    return-void
.end method

.method public m1()V
    .locals 1

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$n;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$n;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-static {p0, v0}, Lcom/callerid/block/util/x0/a;->i(Landroid/app/Activity;Lcom/callerid/block/util/x0/a$g;)V

    return-void
.end method

.method public n1()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->z0:Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->z0:Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;

    invoke-virtual {v0, v1}, Ld/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->A0:Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->A0:Lcom/callerid/block/sms/MessageBoxListActivity$SMSReceiver;

    invoke-virtual {v0, v1}, Ld/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->F:Lcom/callerid/block/sms/MessageBoxListActivity$z;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->F:Lcom/callerid/block/sms/MessageBoxListActivity$z;

    invoke-virtual {v0, v1}, Ld/p/a/a;->e(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const-string v0, "testbroad"

    const-string v1, "\u8bf7\u6c42\u7801\u4e3a200"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->o1()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.callerid.block.ADD_UPDATE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    :cond_0
    const/16 v0, 0x3dc

    const/16 v1, 0x13

    if-ne p1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "enable_default_sms"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x3dd

    if-ne p1, v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->c1()V

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    const/16 p2, 0xa0

    const-string v0, "photo_path:"

    const-string v1, "tony"

    const/4 v2, 0x1

    if-eq p1, p2, :cond_7

    const/16 p2, 0xa1

    if-eq p1, p2, :cond_4

    const/16 p2, 0xa3

    if-eq p1, p2, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x2

    iput p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->a0:I

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Z:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->i1(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->T:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->V:Landroid/net/Uri;

    iput v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->a0:I

    invoke-direct {p0, p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->i1(Landroid/net/Uri;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_5

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->V:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p2, "com.callerid.block.sms.MessageBoxListActivity.provider"

    invoke-static {p0, p2, p1}, Landroidx/core/content/FileProvider;->e(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->V:Landroid/net/Uri;

    :goto_0
    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Z:Landroid/net/Uri;

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->V:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->V:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->b0:Ljava/lang/String;

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/callerid/block/sms/MessageBoxListActivity;->O0()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callerid/block/sms/a;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    iput v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->a0:I

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Z:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/callerid/block/sms/MessageBoxListActivity;->i1(Landroid/net/Uri;)V

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iput-object p2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->b0:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    const-string p2, "Has no SD card!"

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_a
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0xc8

    const/4 v1, 0x2

    const-string v2, "phone"

    const-string v3, "tony"

    const-string v4, "name"

    const/4 v5, 0x0

    const v6, 0x7f08019b

    const-string v7, ""

    const/4 v8, 0x1

    const/16 v9, 0x8

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_e

    :sswitch_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    new-instance v1, Lcom/callerid/block/sms/MessageBoxListActivity$t;

    invoke-direct {v1, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$t;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-static {p1, v0, v1}, Lcom/callerid/block/h/a/f/p;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/f/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :sswitch_1
    :try_start_1
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$u;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$u;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-static {p1, v0}, Lcom/callerid/block/h/a/g/b;->a(Ljava/lang/String;Lcom/callerid/block/h/a/g/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->K0()V

    :goto_1
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->C:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_e

    :sswitch_3
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->z:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->z:Ljava/lang/String;

    goto :goto_2

    :cond_1
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_0

    :sswitch_4
    :try_start_3
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.dir/person"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "phone_type"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y:Ljava/lang/String;

    :goto_4
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_2
    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->z:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->z:Ljava/lang/String;

    goto :goto_4

    :cond_3
    :goto_5
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->h1()V

    goto/16 :goto_e

    :sswitch_6
    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->f1()V

    goto/16 :goto_e

    :sswitch_7
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->k0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_6
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_e

    :cond_4
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->f0:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v9, :cond_5

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->f0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->R:Landroid/widget/ImageView;

    const v0, 0x7f080126

    goto/16 :goto_d

    :cond_5
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->f0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e

    :sswitch_8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/high16 v0, 0x41600000    # 14.0f

    const/4 v1, 0x5

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->C:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->D:Lcom/callerid/block/customview/LImageButton;

    const/16 v3, 0x33

    goto :goto_7

    :cond_6
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->C:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->D:Lcom/callerid/block/customview/LImageButton;

    const/16 v3, 0x35

    :goto_7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/callerid/block/util/g;->a(Landroid/content/Context;F)I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_e

    :sswitch_9
    :try_start_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/o0;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/callerid/block/util/n0;->v()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_7

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/callerid/block/util/o0;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_8
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callerid/block/util/i0;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_8
    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/callerid/block/util/o0;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_e

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100149

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto/16 :goto_6

    :sswitch_a
    iget p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->s0:I

    if-eqz p1, :cond_15

    iget v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->q0:I

    if-ne p1, v0, :cond_a

    iget p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->r0:I

    iput p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->s0:I

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->o0:Landroid/widget/ImageView;

    const v0, 0x7f080197

    goto/16 :goto_d

    :cond_a
    iput v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->s0:I

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->o0:Landroid/widget/ImageView;

    const v0, 0x7f080196

    goto/16 :goto_d

    :sswitch_b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x1d

    const/16 v1, 0x3dd

    if-lt p1, v0, :cond_d

    const-class p1, Landroid/app/role/RoleManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    if-eqz p1, :cond_15

    const-string v0, "android.app.role.SMS"

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_e

    const-string p1, "This app is the default sms app"

    invoke-static {v3, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    sget-boolean v2, Lcom/callerid/block/util/w;->a:Z

    if-eqz v2, :cond_c

    const-string v2, "This app isn\'t the default sms app"

    invoke-static {v3, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_9
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_e

    :cond_d
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "package"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    :cond_e
    :goto_a
    invoke-virtual {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->I0()V

    goto/16 :goto_e

    :sswitch_c
    iput v5, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->a0:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->b0:Ljava/lang/String;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Z:Landroid/net/Uri;

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->k0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Q:Landroid/widget/ImageView;

    const v0, 0x7f08011f

    goto/16 :goto_d

    :cond_f
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Q:Landroid/widget/ImageView;

    const v0, 0x7f08019c

    goto/16 :goto_d

    :sswitch_d
    :try_start_5
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Z:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->a0:I

    if-ne v0, v8, :cond_11

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Z:Landroid/net/Uri;

    const-string v1, "image/*"

    :goto_b
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_c

    :cond_11
    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Z:Landroid/net/Uri;

    const-string v1, "video/*"

    goto :goto_b

    :cond_12
    :goto_c
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_e

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    :sswitch_e
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->c0:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    invoke-virtual {p1}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->h()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    invoke-virtual {p1, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_13
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->e0:Landroid/widget/ImageView;

    const v0, 0x7f08019a

    goto :goto_d

    :cond_14
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->c0:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    invoke-virtual {p1}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->m()V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->e0:Landroid/widget/ImageView;

    const v0, 0x7f0800e8

    :goto_d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    :sswitch_f
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->f0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->m1()V

    goto :goto_e

    :sswitch_10
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->f0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->l1()V

    goto :goto_e

    :sswitch_11
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->f0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->N0()V

    :cond_15
    :goto_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090086 -> :sswitch_11
        0x7f090089 -> :sswitch_10
        0x7f090095 -> :sswitch_f
        0x7f0901c3 -> :sswitch_e
        0x7f0901cb -> :sswitch_d
        0x7f0901cc -> :sswitch_c
        0x7f0901e8 -> :sswitch_b
        0x7f0901e9 -> :sswitch_a
        0x7f090213 -> :sswitch_9
        0x7f09021d -> :sswitch_8
        0x7f090265 -> :sswitch_7
        0x7f090266 -> :sswitch_6
        0x7f090319 -> :sswitch_5
        0x7f09039c -> :sswitch_4
        0x7f09039d -> :sswitch_3
        0x7f0903d9 -> :sswitch_2
        0x7f09043c -> :sswitch_1
        0x7f090498 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/callerid/block/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/bean/SMSBean;

    iput-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    const-string v1, "push_click"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v1, "sms_push_click"

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->y:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getSearch_name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->z:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->getType_label_show()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->B:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->K:Lcom/callerid/block/bean/SMSBean;

    invoke-virtual {p1}, Lcom/callerid/block/bean/SMSBean;->isIs_contacts()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->B:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f110009

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :cond_1
    const p1, 0x7f0c002c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Y:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f04047e

    const v2, 0x7f060139

    invoke-static {p1, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->l0:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f040106

    const v2, 0x7f06005a

    invoke-static {p1, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->m0:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f040107

    const v2, 0x7f06005b

    invoke-static {p1, v1, v2}, Lcom/callerid/block/util/p0;->a(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->n0:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_2
    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->P0()V

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->T0()V

    const p1, 0x7f090263

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f090266

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Q:Landroid/widget/ImageView;

    const p1, 0x7f090265

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->e0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901e9

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->o0:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/o0;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->o0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->o0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090239

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->f0:Landroid/widget/LinearLayout;

    const p1, 0x7f090089

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->g0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090086

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->h0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090095

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->i0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901cb

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901cc

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->j0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902e4

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->k0:Landroid/widget/RelativeLayout;

    const p1, 0x7f090231

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->L:Landroid/widget/LinearLayout;

    const p1, 0x7f090466

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f090468

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f090467

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->M:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->G:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f09021d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/LImageButton;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->D:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090240

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->t0:Landroid/widget/LinearLayout;

    const p1, 0x7f090319

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->u0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09031a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->v0:Landroid/widget/TextView;

    const p1, 0x7f0901e8

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->w0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09017d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/LImageButton;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->u:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const v0, 0x7f0800ee

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->u:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->u:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->u:Lcom/callerid/block/customview/LImageButton;

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$i;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$i;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090213

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/customview/LImageButton;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->v:Lcom/callerid/block/customview/LImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090267

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->c0:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    const p1, 0x7f090262

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->d0:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->c0:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$o;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$o;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-virtual {p1, v0}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->d(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$d;)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->d0:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$p;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$p;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-virtual {p1, v0}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->setOnEmojiKeyboardDelete(Lf/a/a/e/a;)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->d0:Lhani/momanii/supernova_emoji_library/Actions/EmojiView;

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$q;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$q;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-virtual {p1, v0}, Lhani/momanii/supernova_emoji_library/Actions/EmojiView;->setOnEmojiconClickedListener(Lhani/momanii/supernova_emoji_library/Helper/a$b;)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$r;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$r;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->P:Landroid/widget/EditText;

    new-instance v0, Lcom/callerid/block/sms/MessageBoxListActivity$s;

    invoke-direct {v0, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$s;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->Q:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/callerid/block/sms/MessageBoxListActivity$z;

    invoke-direct {p1, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$z;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->F:Lcom/callerid/block/sms/MessageBoxListActivity$z;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.callerid.block.REPORT_OK"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.callerid.block.MMS_SENDED_OK"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->F:Lcom/callerid/block/sms/MessageBoxListActivity$z;

    invoke-virtual {v0, v1, p1}, Ld/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->Z0()V

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->R0()V

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->U0()V

    invoke-direct {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->S0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/callerid/block/sms/MessageBoxListActivity;->n1()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->c0:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity;->c0:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    invoke-virtual {p1}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->f()V

    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return v0

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
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/callerid/block/main/BaseActivity;->onResume()V

    return-void
.end method
