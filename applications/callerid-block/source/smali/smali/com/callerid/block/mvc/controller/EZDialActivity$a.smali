.class Lcom/callerid/block/mvc/controller/EZDialActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZDialActivity;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/EZDialActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZDialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->R(Lcom/callerid/block/mvc/controller/EZDialActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->Q(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1, v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->h0(Lcom/callerid/block/mvc/controller/EZDialActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->o0(Lcom/callerid/block/mvc/controller/EZDialActivity;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->T(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/EZKeyboardView;

    move-result-object v1

    new-instance v2, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;

    invoke-direct {v2, p0}, Lcom/callerid/block/mvc/controller/EZDialActivity$a$a;-><init>(Lcom/callerid/block/mvc/controller/EZDialActivity$a;)V

    invoke-virtual {v1, v2}, Lcom/callerid/block/customview/EZKeyboardView;->setNumberCallBack(Lcom/callerid/block/customview/EZKeyboardView$c;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->r0(Lcom/callerid/block/mvc/controller/EZDialActivity;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    const v2, 0x7f0900bf

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-static {v1, v2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->V(Lcom/callerid/block/mvc/controller/EZDialActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->U(Lcom/callerid/block/mvc/controller/EZDialActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->U(Lcom/callerid/block/mvc/controller/EZDialActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->U(Lcom/callerid/block/mvc/controller/EZDialActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->W(Lcom/callerid/block/mvc/controller/EZDialActivity;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v1, v2}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lfydialer/ContactAccessor;->getInstance(Landroid/content/ContentResolver;)Lfydialer/ContactAccessor;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/callerid/block/mvc/controller/EZDialActivity;->Y(Lcom/callerid/block/mvc/controller/EZDialActivity;Lfydialer/ContactAccessor;)Lfydialer/ContactAccessor;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    new-instance v3, Lcom/callerid/block/mvc/controller/EZDialActivity$d;

    iget-object v4, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v4}, Lcom/callerid/block/mvc/controller/EZDialActivity;->X(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lfydialer/ContactAccessor;

    move-result-object v5

    invoke-virtual {v5}, Lfydialer/ContactAccessor;->getContactSplit()Lfydialer/IContactSplit;

    move-result-object v5

    invoke-direct {v3, v4, v4, v2, v5}, Lcom/callerid/block/mvc/controller/EZDialActivity$d;-><init>(Lcom/callerid/block/mvc/controller/EZDialActivity;Landroid/content/Context;Landroid/database/Cursor;Lfydialer/IContactSplit;)V

    invoke-static {v1, v3}, Lcom/callerid/block/mvc/controller/EZDialActivity;->a0(Lcom/callerid/block/mvc/controller/EZDialActivity;Lcom/callerid/block/mvc/controller/EZDialActivity$d;)Lcom/callerid/block/mvc/controller/EZDialActivity$d;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->U(Lcom/callerid/block/mvc/controller/EZDialActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZDialActivity;->Z(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/mvc/controller/EZDialActivity$d;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v1, Lcom/callerid/block/mvc/controller/EZDialActivity$f;

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-direct {v1, v3, v0}, Lcom/callerid/block/mvc/controller/EZDialActivity$f;-><init>(Lcom/callerid/block/mvc/controller/EZDialActivity;Ljava/lang/String;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->b0(Lcom/callerid/block/mvc/controller/EZDialActivity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->v0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    iget-object v3, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v3}, Lcom/callerid/block/mvc/controller/EZDialActivity;->S(Lcom/callerid/block/mvc/controller/EZDialActivity;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->v0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    new-instance v3, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;

    invoke-direct {v3, p0}, Lcom/callerid/block/mvc/controller/EZDialActivity$a$b;-><init>(Lcom/callerid/block/mvc/controller/EZDialActivity$a;)V

    invoke-virtual {v1, v3}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.DIAL"

    iget-object v4, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const-string v4, "number:"

    const-string v5, "dialnumber"

    const/4 v6, 0x1

    const-string v7, "tel:"

    if-eqz v3, :cond_2

    :try_start_5
    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-nez v0, :cond_3

    :try_start_6
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0, v2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->h0(Lcom/callerid/block/mvc/controller/EZDialActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->T(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/EZKeyboardView;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->T(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/EZKeyboardView;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->T(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/EZKeyboardView;

    move-result-object v1

    iget-object v1, v1, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->v0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->u0(Lcom/callerid/block/mvc/controller/EZDialActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0, v6}, Lcom/callerid/block/mvc/controller/EZDialActivity;->p0(Lcom/callerid/block/mvc/controller/EZDialActivity;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    if-nez v0, :cond_3

    :try_start_8
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0, v1}, Lcom/callerid/block/mvc/controller/EZDialActivity;->h0(Lcom/callerid/block/mvc/controller/EZDialActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->T(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/EZKeyboardView;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->f0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->T(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/EZKeyboardView;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->T(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/callerid/block/customview/EZKeyboardView;

    move-result-object v2

    iget-object v2, v2, Lcom/callerid/block/customview/EZKeyboardView;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->v0(Lcom/callerid/block/mvc/controller/EZDialActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v2}, Lcom/callerid/block/mvc/controller/EZDialActivity;->u0(Lcom/callerid/block/mvc/controller/EZDialActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$a;->b:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0, v6}, Lcom/callerid/block/mvc/controller/EZDialActivity;->p0(Lcom/callerid/block/mvc/controller/EZDialActivity;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method
