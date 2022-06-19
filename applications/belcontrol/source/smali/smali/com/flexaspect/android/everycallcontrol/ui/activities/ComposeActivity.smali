.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;
.super Landroid/app/ListActivity;
.source ""

# interfaces
.implements Lm91$b;
.implements Lsb1$b;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lua1;


# static fields
.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;


# instance fields
.field public a:Landroid/widget/EditText;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lt81;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/concurrent/ScheduledExecutorService;

.field public d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Ll81;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "REQUEST_ARG_LOG_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "THREAD_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "META_THREAD_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MESSAGE_PARTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->g:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    return-void
.end method

.method public static synthetic d(Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->s()V

    return-void
.end method

.method public static synthetic e(Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->g:Z

    return p1
.end method


# virtual methods
.method public a(Lsb1$c;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->finish()V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lke1;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public b(Ljava/lang/Object;Z)V
    .locals 0

    return-void
.end method

.method public c(Lsb1$d;Z)V
    .locals 0

    return-void
.end method

.method public f(Lta1;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " granted"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public finish()V
    .locals 5

    invoke-static {p0}, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->g:Z

    if-nez v0, :cond_3

    const v0, 0x7f1104e6

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->g:Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$f;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;)V

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->f:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_3
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    return-void
.end method

.method public g(Lsb1$c;)V
    .locals 1

    sget-object v0, Lsb1$c;->h:Lsb1$c;

    if-ne v0, p1, :cond_1

    const p1, 0x7f0a01c1

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public h(Lta1;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$b;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;)V

    const-wide/16 v0, 0x3e8

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->d:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final j(Lt81;)V
    .locals 12

    const v0, 0x7f0a04a5

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->r()V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x28

    invoke-static {v5}, Loe1;->c(I)I

    move-result v6

    invoke-static {v5}, Loe1;->c(I)I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x2

    invoke-static {v6}, Loe1;->c(I)I

    move-result v7

    const/4 v8, 0x4

    invoke-static {v8}, Loe1;->c(I)I

    move-result v9

    invoke-static {v8}, Loe1;->c(I)I

    move-result v10

    invoke-static {v6}, Loe1;->c(I)I

    move-result v11

    invoke-virtual {v4, v7, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v7, 0x11

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lt81;->H()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lt81;->j:[B

    array-length v7, v4

    invoke-static {v4, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lt81;->G()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f080170

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lt81;->K()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f080396

    goto :goto_0

    :cond_2
    const v3, 0x7f0801e9

    goto :goto_0

    :goto_1
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v5}, Loe1;->c(I)I

    move-result v7

    invoke-static {v5}, Loe1;->c(I)I

    move-result v5

    invoke-direct {v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x2c

    invoke-static {v5}, Loe1;->c(I)I

    move-result v5

    neg-int v5, v5

    invoke-static {v8}, Loe1;->c(I)I

    move-result v7

    invoke-static {v8}, Loe1;->c(I)I

    move-result v8

    invoke-static {v6}, Loe1;->c(I)I

    move-result v6

    invoke-virtual {v4, v5, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const v5, 0x1020027

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v4, 0x108001d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->g:Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->p()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->finish()V

    return-void
.end method

.method public final l()J
    .locals 5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt81;

    iget-object v3, v3, Lt81;->j:[B

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {v0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v3, v0

    add-long/2addr v1, v3

    :catchall_0
    :cond_1
    return-wide v1
.end method

.method public final m()V
    .locals 3

    const v0, 0x7f0a04a6

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    invoke-static {v2}, Loe1;->c(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, 0x7f0a04a5

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 5

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const v0, 0x7f0a04a5

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020027

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o(Landroid/graphics/Bitmap;Lt81;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x258

    const/high16 v5, 0x44160000    # 600.0f

    if-le v1, v2, :cond_0

    div-float/2addr v5, v0

    float-to-int v0, v5

    invoke-static {p1, v4, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    mul-float v0, v0, v5

    float-to-int v0, v0

    invoke-static {p1, v0, v4, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v1, p2, Lt81;->g:Ljava/lang/String;

    const-string v2, "/png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_1
    const-string v1, "image/jpeg"

    iput-object v1, p2, Lt81;->g:Ljava/lang/String;

    :goto_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x41

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p2, Lt81;->j:[B

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    :try_start_1
    const-string v0, "Unable to rescale bitmap"

    invoke-static {p0, v0, p2}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catchall_1
    move-exception p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw p2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/16 v1, 0x2727

    if-ne p1, v1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p1, "Contact picker returned result but no Uri given"

    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p1, "_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    new-instance p3, Lq81;

    invoke-direct {p3}, Lq81;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lq81;

    iget-wide v0, p3, Lq81;->d:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const p1, 0x7f0a04a7

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p3, Lq81;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    if-ne p2, v0, :cond_d

    const/16 p2, 0x17

    if-ne p1, p2, :cond_d

    const p1, 0x7f1104e2

    const-wide/32 v1, 0x4b000

    const/16 p2, 0x258

    const/4 v3, 0x1

    if-nez p3, :cond_5

    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v4, "tmp_pic"

    invoke-direct {p3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance v4, Lt81;

    invoke-direct {v4}, Lt81;-><init>()V

    const-string v5, "image/jpeg"

    iput-object v5, v4, Lt81;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMG"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lt81;->h:Ljava/lang/String;

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v5, p2, :cond_3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v0, p2, :cond_3

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->l()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long p2, v5, v1

    if-gtz p2, :cond_3

    new-instance p2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v0, v5

    new-array v0, v0, [B

    iput-object v0, v4, Lt81;->j:[B

    invoke-virtual {p2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2, v4}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->o(Landroid/graphics/Bitmap;Lt81;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    iget-object p2, v4, Lt81;->j:[B

    array-length p2, p2

    int-to-long p2, p2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->l()J

    move-result-wide v5

    add-long/2addr p2, v5

    cmp-long v0, p2, v1

    if-lez v0, :cond_4

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->j(Lt81;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "Error getting captured image"

    invoke-static {p0, p2, p1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_c

    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v11, Lt81;

    invoke-direct {v11}, Lt81;-><init>()V

    invoke-virtual {v4, p3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lt81;->g:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v4

    move-object v6, p3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "_display_name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v11, Lt81;->h:Ljava/lang/String;

    :cond_6
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {v4, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p3

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_2
    invoke-virtual {p3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, 0x0

    if-eq v6, v0, :cond_8

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v11, Lt81;->j:[B

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v11}, Lt81;->H()Z

    move-result p3

    if-eqz p3, :cond_a

    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, v11, Lt81;->j:[B

    array-length v4, v0

    invoke-static {v0, v7, v4, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_9

    iget p3, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt p3, p2, :cond_9

    iget-object p2, v11, Lt81;->j:[B

    array-length p2, p2

    int-to-long p2, p2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->l()J

    move-result-wide v4

    add-long/2addr p2, v4

    cmp-long v0, p2, v1

    if-lez v0, :cond_a

    :cond_9
    iget-object p2, v11, Lt81;->j:[B

    array-length p3, p2

    invoke-static {p2, v7, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2, v11}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->o(Landroid/graphics/Bitmap;Lt81;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    iget-object p2, v11, Lt81;->j:[B

    array-length p2, p2

    int-to-long p2, p2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->l()J

    move-result-wide v4

    add-long/2addr p2, v4

    cmp-long v0, p2, v1

    if-lez v0, :cond_b

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_b
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v11}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->j(Lt81;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    const-string p2, "Error getting selected content"

    invoke-static {p0, p2, p1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    const-string p1, "Intent received but cannot understand what it is"

    invoke-static {p0, p1}, Lj91;->G(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const v0, 0x1020027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->n()V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lt81;

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->m()V

    :cond_3
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 17

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    new-instance v3, Ll81;

    invoke-direct {v3}, Ll81;-><init>()V

    invoke-virtual {v3, v1}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget-wide v4, v3, Ll81;->d:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    return v2

    :cond_1
    iget-wide v4, v3, Ll81;->w:J

    const/4 v1, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    iget-wide v8, v3, Ll81;->x:J

    invoke-virtual {v3, v4, v5, v8, v9}, Ll81;->j0(JJ)Landroid/database/Cursor;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    new-instance v8, Ll81;

    invoke-direct {v8}, Ll81;-><init>()V

    invoke-virtual {v8, v4}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ll81;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ll81;

    goto :goto_0

    :cond_5
    new-array v4, v2, [Ll81;

    aput-object v3, v4, v1

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v8, 0x7f0a0528

    if-ne v5, v8, :cond_10

    const v5, 0x7f0a04a7

    invoke-virtual {v0, v5}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;

    invoke-virtual {v5}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->getAddresses()[Li91;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_6

    return v2

    :cond_6
    iget-object v5, v3, Ll81;->o:Ljava/util/EnumSet;

    sget-object v8, Lq71$e;->c:Lq71$e;

    invoke-virtual {v5, v8}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    iget-wide v8, v3, Ll81;->w:J

    iput-wide v8, v5, Ll81;->w:J

    cmp-long v10, v8, v6

    if-lez v10, :cond_7

    invoke-virtual {v5, v8, v9}, Ll81;->v0(J)J

    move-result-wide v6

    :cond_7
    invoke-static {}, Lfa1;->u()Z

    move-result v5

    array-length v14, v4

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_a

    aget-object v13, v4, v15

    iget v8, v13, Ll81;->n:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    if-nez v5, :cond_8

    iget-object v8, v13, Ll81;->m:Li91;

    iget-object v9, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    iget-wide v9, v9, Ll81;->w:J

    iget-object v11, v13, Ll81;->l:Ljava/lang/String;

    move-object/from16 v16, v11

    move-wide v11, v6

    move-object v1, v13

    move-object/from16 v13, v16

    invoke-static/range {v8 .. v13}, Lz91;->p(Li91;JJLjava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v1, v13

    :goto_2
    iget-object v8, v1, Ll81;->m:Li91;

    iget-object v9, v1, Ll81;->l:Ljava/lang/String;

    iget-object v10, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    iget-wide v10, v10, Ll81;->w:J

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lfa1$f;->e(Li91;Ljava/lang/String;JJ)J

    invoke-virtual {v1}, Lv71;->d()Z

    sget-object v8, Lq71$e;->c:Lq71$e;

    new-array v9, v2, [Ljava/lang/Long;

    iget-wide v10, v1, Ll81;->f:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v3, v8, v9}, Ll81;->M(Lq71$e;[Ljava/lang/Long;)Z

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->s()V

    invoke-virtual/range {p0 .. p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->q()V

    return v2

    :cond_b
    const/4 v10, 0x0

    new-instance v1, Lt81;

    invoke-direct {v1}, Lt81;-><init>()V

    iget-wide v5, v3, Ll81;->d:J

    invoke-virtual {v1, v5, v6}, Lt81;->F(J)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    new-instance v5, Lt81;

    invoke-direct {v5}, Lt81;-><init>()V

    invoke-virtual {v5, v1}, Lt81;->E(Landroid/database/Cursor;)Lt81;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_d

    :cond_e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    array-length v1, v4

    :goto_4
    if-ge v10, v1, :cond_f

    aget-object v3, v4, v10

    const/4 v5, 0x6

    iput v5, v3, Ll81;->n:I

    invoke-virtual {v3}, Lv71;->z()Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_f
    return v2

    :cond_10
    const/4 v10, 0x0

    array-length v1, v4

    new-array v1, v1, [Ljava/lang/Long;

    array-length v5, v4

    const/4 v8, 0x0

    :goto_5
    if-ge v10, v5, :cond_12

    aget-object v9, v4, v10

    iget-wide v11, v9, Ll81;->f:J

    cmp-long v13, v11, v6

    if-lez v13, :cond_11

    add-int/lit8 v13, v8, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v1, v8

    move v8, v13

    :cond_11
    invoke-virtual {v9}, Lv71;->d()Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_12
    iget-object v4, v3, Ll81;->o:Ljava/util/EnumSet;

    sget-object v5, Lq71$e;->c:Lq71$e;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_6

    :cond_13
    sget-object v5, Lq71$e;->d:Lq71$e;

    :goto_6
    invoke-virtual {v3, v5, v1}, Ll81;->M(Lq71$e;[Ljava/lang/Long;)Z

    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->j:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    iget-object v1, v1, Ll81;->m:Li91;

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Loe1;->u(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->finish()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const/high16 v0, 0x7f0e0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    iget p3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/database/Cursor;

    new-instance p3, Ll81;

    invoke-direct {p3}, Ll81;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p3, p2}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    :cond_0
    const p2, 0x7f0a0528

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p3, Ll81;->o:Ljava/util/EnumSet;

    sget-object v0, Lq71$e;->c:Lq71$e;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget p2, p3, Ll81;->n:I

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iget-object v3, p3, Ll81;->o:Ljava/util/EnumSet;

    sget-object v4, Lq71$e;->d:Lq71$e;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget p3, p3, Ll81;->n:I

    if-ne p3, v0, :cond_3

    const/4 p3, 0x1

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-nez p2, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a03ed

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->n()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->n()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    invoke-virtual {v0}, Ll81;->A0()V

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lta1;->c(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->k:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Ll81;->u:J

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Ll81;->w:J

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->s()V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt81;

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->j(Lt81;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    sget-object v0, Lr71$a;->O:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$c;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    sget-object v0, Lm91$c;->k:Lm91$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ll81;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Lt81;

    aput-object v4, v1, v2

    invoke-static {p0, v0, v1}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    sget-object v0, Lta1;->L:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v1

    const v2, 0x7f0a0079

    const v4, 0x7f0a027a

    const v5, 0x7f0a007a

    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f1101b2

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$d;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$d;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "permissions/phone_perms.html"

    invoke-static {v0, p0}, Loe1;->P(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f1100ae

    goto :goto_0

    :cond_1
    const v0, 0x7f110128

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$e;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "permissions/messages_perms.html"

    invoke-static {v0, p0}, Loe1;->P(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f1100b0

    :goto_0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v4}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {p0, v4}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v2}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a01f6

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->n()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->s()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    iget-wide v1, v1, Ll81;->u:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    iget-wide v1, v1, Ll81;->w:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 8

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    iget-wide v2, v2, Ll81;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a04a7

    invoke-virtual {p0, v2}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;

    invoke-virtual {v2}, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;->getAddresses()[Li91;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const-string v5, ""

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v2, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Li91;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lt81;

    invoke-direct {v2}, Lt81;-><init>()V

    const-string v3, "text/plain"

    iput-object v3, v2, Lt81;->g:Ljava/lang/String;

    const-string v4, "text"

    iput-object v4, v2, Lt81;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, v2, Lt81;->j:[B

    new-instance v0, Lt81;

    invoke-direct {v0}, Lt81;-><init>()V

    iput-object v3, v0, Lt81;->g:Ljava/lang/String;

    iput-object v4, v0, Lt81;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v0, Lt81;->j:[B

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DraftData"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v0, v2

    :goto_1
    move-object v2, v4

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v0, v2

    :goto_2
    const-string v3, "Error save draft"

    invoke-static {p0, v3, v1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v2

    :goto_3
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    nop

    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    :cond_4
    return-void
.end method

.method public final q()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final r()V
    .locals 3

    const v0, 0x7f0a04a6

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x30

    invoke-static {v2}, Loe1;->c(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 9

    sget-object v0, Lta1;->L:Lta1;

    invoke-virtual {v0}, Lta1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    new-instance v1, Ll81;

    invoke-direct {v1}, Ll81;-><init>()V

    const v2, 0x7f0a04a7

    invoke-virtual {p0, v2}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->h:Ll81;

    iget-wide v4, v3, Ll81;->w:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    iget-wide v3, v3, Ll81;->u:J

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v3, v4, v2}, Ll81;->o0(JZ)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_2
    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v4, v5, v2}, Ll81;->n0(JZ)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lt51;

    invoke-virtual {v2, v1}, Lt51;->a(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->q()V

    :cond_3
    return-void
.end method
