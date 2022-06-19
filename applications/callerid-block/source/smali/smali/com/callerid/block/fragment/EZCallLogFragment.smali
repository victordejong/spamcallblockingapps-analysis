.class public Lcom/callerid/block/fragment/EZCallLogFragment;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/fragment/EZCallLogFragment$q;,
        Lcom/callerid/block/fragment/EZCallLogFragment$p;,
        Lcom/callerid/block/fragment/EZCallLogFragment$n;,
        Lcom/callerid/block/fragment/EZCallLogFragment$o;
    }
.end annotation


# instance fields
.field private A0:Landroid/widget/TextView;

.field private B0:Landroid/widget/TextView;

.field private C0:Ljava/util/Timer;

.field private D0:Ljava/util/TimerTask;

.field private E0:Landroid/view/animation/Animation;

.field private F0:Landroid/widget/LinearLayout;

.field private X:Lcom/callerid/block/customview/ObservableListView;

.field private Y:Lcom/callerid/block/b/g;

.field private Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private a0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private b0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e0:Lcom/callerid/block/fragment/EZCallLogFragment$p;

.field private f0:Landroid/widget/PopupWindow;

.field private g0:Landroid/widget/ProgressBar;

.field private h0:Landroid/widget/TextView;

.field private i0:Lcom/github/clans/fab/FloatingActionButton;

.field private j0:Z

.field private k0:Landroid/graphics/Typeface;

.field private l0:Landroid/widget/LinearLayout;

.field private m0:Landroid/widget/FrameLayout;

.field private n0:Landroid/widget/TextView;

.field private o0:Landroid/widget/ImageView;

.field private p0:Z

.field private q0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private r0:I

.field private s0:I

.field private t0:Lcom/callerid/block/fragment/EZCallLogFragment$o;

.field private u0:Landroid/widget/FrameLayout;

.field private v0:Lcom/callerid/block/main/MainActivity;

.field private w0:Landroid/content/Context;

.field private x0:Landroid/widget/RelativeLayout;

.field private y0:Landroid/widget/TextView;

.field private z0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->a0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->b0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->c0:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->d0:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->p0:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->q0:Ljava/util/ArrayList;

    new-instance v0, Lcom/callerid/block/fragment/EZCallLogFragment$o;

    invoke-direct {v0, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$o;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->t0:Lcom/callerid/block/fragment/EZCallLogFragment$o;

    return-void
.end method

.method private A2()V
    .locals 9

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v4, :cond_3

    :try_start_1
    iget-object v4, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v4}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callerid/block/util/t0;->Y(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v5

    invoke-virtual {v4}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v6

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    invoke-virtual {v4, v5}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/callerid/block/search/CallLogBean;->a0(Z)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v5

    invoke-virtual {v4}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/callerid/block/util/t0;->I(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/callerid/block/search/CallLogBean;->r0(I)V

    if-eqz v5, :cond_2

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/callerid/block/search/CallLogBean;->t()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v6}, Lcom/callerid/block/search/CallLogBean;->d0(Z)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v2}, Lcom/callerid/block/search/CallLogBean;->a0(Z)V

    invoke-virtual {v4, v0}, Lcom/callerid/block/search/CallLogBean;->l0(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/callerid/block/search/CallLogBean;->r0(I)V

    invoke-virtual {v4, v2}, Lcom/callerid/block/search/CallLogBean;->d0(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private B2()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/search/CallLogBean;

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v2

    invoke-virtual {v1}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->isSearched()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->w0(Z)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callerid/block/util/t0;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->H0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->s0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->W(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->t0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "Mobile"

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Fixed line"

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callerid/block/util/t0;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->v0(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getTel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->D0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getT_p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->C0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getOld_tel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->o0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->h0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->p0(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->T(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->U(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getSearch_time()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/callerid/block/search/CallLogBean;->u0(J)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->isIs_can_search()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/callerid/block/search/CallLogBean;->Y(Z)V

    invoke-virtual {v2}, Lcom/callerid/block/bean/EZSearchContacts;->getFaild_error_log()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callerid/block/search/CallLogBean;->e0(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private C2()V
    .locals 7

    const-string v0, "searchList"

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->b0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->b0:Ljava/util/List;

    invoke-interface {v5, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->b0:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->b0:Ljava/util/List;

    const/4 v3, 0x0

    :goto_0
    sget-boolean v5, Lcom/callerid/block/util/w;->a:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchNumberList.size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->b0:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/callerid/block/util/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canSearchList.size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/callerid/block/util/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/callerid/block/fragment/EZCallLogFragment$q;

    invoke-direct {v0, p0, v1, v3}, Lcom/callerid/block/fragment/EZCallLogFragment$q;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;Ljava/util/List;Z)V

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v5, v6, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    new-instance v0, Lcom/callerid/block/fragment/EZCallLogFragment$q;

    invoke-direct {v0, p0, v1, v3}, Lcom/callerid/block/fragment/EZCallLogFragment$q;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;Ljava/util/List;Z)V

    invoke-static {}, Lcom/callerid/block/util/q0;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private D2()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    new-instance v1, Lcom/callerid/block/fragment/EZCallLogFragment$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$a;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-static {v0, v1}, Lcom/callerid/block/h/a/d/h;->b(Ljava/util/List;Lcom/callerid/block/h/a/d/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic E1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    return-object p0
.end method

.method private E2(II)V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "searchList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ed1\u52a8\u540e\u67e5\u8be2 start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    new-instance v1, Lcom/callerid/block/fragment/EZCallLogFragment$m;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$m;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-static {p1, p2, v0, v1}, Lcom/callerid/block/h/a/d/h;->a(IILjava/util/List;Lcom/callerid/block/h/a/d/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic F1(Lcom/callerid/block/fragment/EZCallLogFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    return-object p1
.end method

.method private F2()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->q0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->n0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->o0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->o0:Landroid/widget/ImageView;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic G1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/b/g;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Y:Lcom/callerid/block/b/g;

    return-object p0
.end method

.method private G2()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/d$a;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    const-string v2, "ca-app-pub-5825926894918682/8600262755"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/callerid/block/fragment/EZCallLogFragment$k;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$k;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    new-instance v1, Lcom/google/android/gms/ads/s$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/s$a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/s$a;->b(Z)Lcom/google/android/gms/ads/s$a;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/s$a;->a()Lcom/google/android/gms/ads/s;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/nativead/b$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/nativead/b$a;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nativead/b$a;->g(Lcom/google/android/gms/ads/s;)Lcom/google/android/gms/ads/nativead/b$a;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/b$a;->a()Lcom/google/android/gms/ads/nativead/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->g(Lcom/google/android/gms/ads/nativead/b;)Lcom/google/android/gms/ads/d$a;

    new-instance v1, Lcom/callerid/block/fragment/EZCallLogFragment$l;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$l;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/e$a;-><init>()V

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

.method static synthetic H1(Lcom/callerid/block/fragment/EZCallLogFragment;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->s0:I

    return p0
.end method

.method private H2(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/callerid/block/b/g;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    iget-object v2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->X:Lcom/callerid/block/customview/ObservableListView;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/callerid/block/b/g;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/HashMap;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Y:Lcom/callerid/block/b/g;

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->X:Lcom/callerid/block/customview/ObservableListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic I1(Lcom/callerid/block/fragment/EZCallLogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->s0:I

    return p1
.end method

.method private I2()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->l0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->m0:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->p0:Z

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->q2()V

    return-void
.end method

.method static synthetic J1(Lcom/callerid/block/fragment/EZCallLogFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/fragment/EZCallLogFragment;->E2(II)V

    return-void
.end method

.method private J2()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->l0:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->m0:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic K1(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->i0:Lcom/github/clans/fab/FloatingActionButton;

    return-object p0
.end method

.method private K2(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->f0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->f0:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void
.end method

.method static synthetic L1(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->G2()V

    return-void
.end method

.method private L2()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v2, v0}, Lcom/callerid/block/search/CallLogBean;->Z(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method static synthetic M1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->u0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic N1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->E0:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic O1(Lcom/callerid/block/fragment/EZCallLogFragment;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->E0:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic P1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->b0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q1(Lcom/callerid/block/fragment/EZCallLogFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->b0:Ljava/util/List;

    return-object p1
.end method

.method static synthetic R1(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->C2()V

    return-void
.end method

.method static synthetic S1(Lcom/callerid/block/fragment/EZCallLogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->j0:Z

    return p0
.end method

.method static synthetic T1(Lcom/callerid/block/fragment/EZCallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->j0:Z

    return p1
.end method

.method static synthetic U1(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->D2()V

    return-void
.end method

.method static synthetic V1(Lcom/callerid/block/fragment/EZCallLogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->K2(Landroid/view/View;)V

    return-void
.end method

.method static synthetic W1(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->a0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic X1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->h0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic Y1(Lcom/callerid/block/fragment/EZCallLogFragment;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->d0:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic Z1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->F0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic a2(Lcom/callerid/block/fragment/EZCallLogFragment;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callerid/block/fragment/EZCallLogFragment;->H2(Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic b2(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->B2()V

    return-void
.end method

.method static synthetic c2(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/fragment/EZCallLogFragment$o;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->t0:Lcom/callerid/block/fragment/EZCallLogFragment$o;

    return-object p0
.end method

.method static synthetic d2(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->A2()V

    return-void
.end method

.method static synthetic e2(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->z2()V

    return-void
.end method

.method static synthetic f2(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/main/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    return-object p0
.end method

.method static synthetic g2(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->g0:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic h2(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->L2()V

    return-void
.end method

.method static synthetic i2(Lcom/callerid/block/fragment/EZCallLogFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->p0:Z

    return p0
.end method

.method static synthetic j2(Lcom/callerid/block/fragment/EZCallLogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->p0:Z

    return p1
.end method

.method static synthetic k2(Lcom/callerid/block/fragment/EZCallLogFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->q0:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic l2(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->w0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m2(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->F2()V

    return-void
.end method

.method static synthetic n2(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->J2()V

    return-void
.end method

.method static synthetic o2(Lcom/callerid/block/fragment/EZCallLogFragment;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->r0:I

    return p0
.end method

.method static synthetic p2(Lcom/callerid/block/fragment/EZCallLogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->r0:I

    return p1
.end method

.method private q2()V
    .locals 2

    new-instance v0, Lcom/callerid/block/fragment/EZCallLogFragment$n;

    invoke-direct {v0, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$n;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private r2()V
    .locals 3

    new-instance v0, Lcom/callerid/block/fragment/EZCallLogFragment$15;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/fragment/EZCallLogFragment$15;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/b;->J1(Landroidx/fragment/app/j;Ljava/lang/String;)V

    return-void
.end method

.method private s2()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->q0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->q0:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Y:Lcom/callerid/block/b/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callerid/block/b/g;->f(Ljava/util/List;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Y:Lcom/callerid/block/b/g;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->n0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->q0:Ljava/util/ArrayList;

    new-instance v2, Lcom/callerid/block/fragment/EZCallLogFragment$j;

    invoke-direct {v2, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$j;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-static {v0, v1, v2}, Lcom/callerid/block/h/a/d/g;->a(Landroid/content/Context;Ljava/util/List;Lcom/callerid/block/h/a/d/f;)V
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

.method private t2(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->u0:Landroid/widget/FrameLayout;

    const v0, 0x7f090112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->F0:Landroid/widget/LinearLayout;

    const v0, 0x7f090113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->F0:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private v2()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->a0:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->j(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->a0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->a0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callerid/block/search/CallLogBean;

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->I()I

    move-result v5

    if-ne v5, v4, :cond_3

    iget-object v4, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    :goto_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->I()I

    move-result v5

    if-ne v5, v4, :cond_3

    iget-object v4, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    invoke-virtual {v3}, Lcom/callerid/block/search/CallLogBean;->I()I

    move-result v5

    if-ne v5, v4, :cond_3

    iget-object v4, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    iget-object v4, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->a0:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/search/CallLogBean;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->h0:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/callerid/block/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Y:Lcom/callerid/block/b/g;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-void
.end method

.method private w2()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    const v1, 0x7f090240

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->l0:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    const v1, 0x7f09038a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->m0:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    const v1, 0x7f090319

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    const v1, 0x7f09031a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->n0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    const v1, 0x7f0901e8

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->o0:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private x2()V
    .locals 4

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->h0:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f09018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rey/material/widget/ImageButton;

    new-instance v3, Lcom/callerid/block/fragment/EZCallLogFragment$b;

    invoke-direct {v3, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$b;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-virtual {v1, v3}, Lcom/rey/material/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->X:Lcom/callerid/block/customview/ObservableListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private y2()V
    .locals 7

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00b5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rey/material/widget/TextView;

    const v2, 0x7f0903f0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/rey/material/widget/TextView;

    const v3, 0x7f0903f2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/rey/material/widget/TextView;

    const v4, 0x7f0903f1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/rey/material/widget/TextView;

    const v5, 0x7f0903ef

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/rey/material/widget/TextView;

    iget-object v6, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v1, p0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Lcom/rey/material/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->f0:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->f0:Landroid/widget/PopupWindow;

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->f0:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->f0:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->f0:Landroid/widget/PopupWindow;

    const v1, 0x7f11030d

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->f0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private z2()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->w0:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/x0/a;->h(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "wbb"

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->D0:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f00\u542f\u4e86\u901a\u77e5\u7ba1\u7406"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "whatsapp_notifi_per_enabled"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/callerid/block/util/n0;->w1(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    const-class v2, Lcom/callerid/block/main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->w0:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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
.method public C0()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->C0()V

    return-void
.end method

.method public H0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/n0;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->x0:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->g0(Landroid/os/Bundle;)V

    return-void
.end method

.method public h0(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->h0(IILandroid/content/Intent;)V

    const/16 p2, 0x3e7

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

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

.method public j0(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->j0(Landroid/content/Context;)V

    move-object v0, p1

    check-cast v0, Lcom/callerid/block/main/MainActivity;

    iput-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->w0:Landroid/content/Context;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "This app is the default dialer app"

    const-string v1, "This app isn\'t the default dialer app"

    const-string v2, "delete_request_default_dialer"

    const-string v3, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    const-string v4, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    const/16 v5, 0x1d

    const/16 v6, 0x8

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "default_dialer"

    const/16 v11, 0x3e7

    const-string v12, "android.app.role.DIALER"

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->j(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    :goto_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/callerid/block/util/n0;->t0(Landroid/content/Context;I)V

    goto/16 :goto_3

    :pswitch_1
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->j(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->j(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v9, :cond_7

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1, v9}, Lcom/callerid/block/util/n0;->t0(Landroid/content/Context;I)V

    goto/16 :goto_3

    :pswitch_3
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->f0:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v7, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/x0/a;->g(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->r2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_7

    :cond_1
    if-lt p1, v5, :cond_5

    :try_start_1
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->w0:Landroid/content/Context;

    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v12}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v12}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_2

    invoke-static {v10, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->r2()V

    goto :goto_2

    :cond_3
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_4

    invoke-static {v10, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v12}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1, v11}, Landroidx/fragment/app/Fragment;->B1(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    :try_start_2
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->r2()V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :pswitch_4
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->j(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/callerid/block/util/n0;->t0(Landroid/content/Context;I)V

    :goto_3
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->v2()V

    :cond_7
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->f0:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_7

    :sswitch_0
    :try_start_3
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "whatsapp_guide_click_open"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/callerid/block/util/n0;->l1(Z)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->w0:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/x0/a;->h(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->w0:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/x0/b;->b(Landroid/content/Context;)V

    new-instance v1, Lcom/callerid/block/fragment/EZCallLogFragment$d;

    invoke-direct {v1, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$d;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    iput-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->D0:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->C0:Ljava/util/Timer;

    if-eqz v0, :cond_9

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_4

    :cond_8
    invoke-static {v9}, Lcom/callerid/block/util/n0;->w1(Z)V

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->x0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_7

    :sswitch_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "whatsapp_guide_click_close"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/callerid/block/util/n0;->l1(Z)V

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->x0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7

    :sswitch_2
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->I2()V

    goto/16 :goto_7

    :sswitch_3
    :try_start_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v7, :cond_a

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/callerid/block/util/x0/a;->g(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->s2()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :cond_b
    if-lt p1, v5, :cond_f

    :try_start_5
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->w0:Landroid/content/Context;

    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v12}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1, v12}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_c

    invoke-static {v10, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->s2()V

    goto :goto_6

    :cond_d
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_e

    invoke-static {v10, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1, v12}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :goto_5
    invoke-virtual {p0, p1, v11}, Landroidx/fragment/app/Fragment;->B1(Landroid/content/Intent;I)V

    goto :goto_6

    :cond_f
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_10
    :goto_6
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :catch_1
    move-exception p1

    :try_start_6
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->s2()V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0901e8 -> :sswitch_3
        0x7f090319 -> :sswitch_2
        0x7f0903e1 -> :sswitch_1
        0x7f09048e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f0903ee
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public q0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c004c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->t2(Landroid/view/View;)V

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    const p2, 0x7f0902be

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->g0:Landroid/widget/ProgressBar;

    const p2, 0x7f0902a3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/callerid/block/customview/ObservableListView;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->X:Lcom/callerid/block/customview/ObservableListView;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->y2()V

    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->x2()V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    iget-object p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->d0:Ljava/util/HashMap;

    invoke-direct {p0, p2, p3}, Lcom/callerid/block/fragment/EZCallLogFragment;->H2(Ljava/util/List;Ljava/util/HashMap;)V

    const p2, 0x7f0900a2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/clans/fab/FloatingActionButton;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->i0:Lcom/github/clans/fab/FloatingActionButton;

    new-instance p3, Lcom/callerid/block/fragment/EZCallLogFragment$e;

    invoke-direct {p3, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$e;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-virtual {p2, p3}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->i0:Lcom/github/clans/fab/FloatingActionButton;

    iget-object p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    const v1, 0x7f01003f

    invoke-static {p3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/github/clans/fab/FloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->i0:Lcom/github/clans/fab/FloatingActionButton;

    iget-object p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    const v1, 0x7f010035

    invoke-static {p3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/github/clans/fab/FloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    const p2, 0x7f0902f9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->x0:Landroid/widget/RelativeLayout;

    const p2, 0x7f09042f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->y0:Landroid/widget/TextView;

    const p2, 0x7f09042e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->z0:Landroid/widget/TextView;

    const p2, 0x7f09048e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->A0:Landroid/widget/TextView;

    const p2, 0x7f0903e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->B0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->y0:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->z0:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->A0:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->B0:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->k0:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->A0:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->B0:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/callerid/block/util/u0;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/callerid/block/util/n0;->Y()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p2

    const-string p3, "whatsapp_guide_show"

    invoke-virtual {p2, p3}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->x0:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->C0:Ljava/util/Timer;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->x0:Landroid/widget/RelativeLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->w2()V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->X:Lcom/callerid/block/customview/ObservableListView;

    new-instance p3, Lcom/callerid/block/fragment/EZCallLogFragment$f;

    invoke-direct {p3, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$f;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->X:Lcom/callerid/block/customview/ObservableListView;

    new-instance p3, Lcom/callerid/block/fragment/EZCallLogFragment$g;

    invoke-direct {p3, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$g;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->X:Lcom/callerid/block/customview/ObservableListView;

    new-instance p3, Lcom/callerid/block/fragment/EZCallLogFragment$h;

    invoke-direct {p3, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$h;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-virtual {p2, p3}, Lcom/callerid/block/customview/ObservableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/callerid/block/fragment/EZCallLogFragment;->u2()V

    new-instance p2, Lcom/callerid/block/fragment/EZCallLogFragment$p;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/callerid/block/fragment/EZCallLogFragment$p;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;Lcom/callerid/block/fragment/EZCallLogFragment$e;)V

    iput-object p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->e0:Lcom/callerid/block/fragment/EZCallLogFragment$p;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.callerid.block.RELOAD_DATA_VEST"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.callerid.block.CLOSE_AD_VEST"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->w0:Landroid/content/Context;

    invoke-static {p3}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object p3

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->e0:Lcom/callerid/block/fragment/EZCallLogFragment$p;

    invoke-virtual {p3, v0, p2}, Ld/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string p2, "testrecommend"

    const-string p3, "Oncreate\u65b9\u6cd5"

    invoke-static {p2, p3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->j0:Z

    new-instance p2, Lcom/callerid/block/fragment/EZCallLogFragment$i;

    invoke-direct {p2, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$i;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-static {p2}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    return-object p1
.end method

.method public r0()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->r0()V

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->D0:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->D0:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->C0:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->C0:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->w0:Landroid/content/Context;

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->e0:Lcom/callerid/block/fragment/EZCallLogFragment$p;

    invoke-virtual {v0, v1}, Ld/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public u2()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->w0:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/x0/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->Y:Lcom/callerid/block/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->a0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->c0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/callerid/block/fragment/EZCallLogFragment$c;

    invoke-direct {v0, p0}, Lcom/callerid/block/fragment/EZCallLogFragment$c;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/d/c;->a(Lcom/callerid/block/h/a/d/a;)V
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

.method public y1(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y1(Z)V

    const-string v0, "testrecommend"

    const-string v1, "setUserVisibleHint()"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "enter_callLog_tab_page"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const-string p1, "testenter"

    const-string v0, "\u9996\u9875\u901a\u8bdd\u8bb0\u5f55\u5c55\u793a\u6b21\u6570"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    if-eqz p1, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment;->v0:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
