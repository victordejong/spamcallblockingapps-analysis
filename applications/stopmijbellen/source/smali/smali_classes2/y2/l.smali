.class public final synthetic Ly2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/a$a;
.implements Ld5/b;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lm7/g$a;
.implements Lm7/d;
.implements Lr4/b;
.implements Ls4/c$b;
.implements Ld9/h$c;
.implements Landroidx/activity/result/b;
.implements Le2/g$c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly2/l;->a:I

    iput-object p1, p0, Ly2/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 9

    iget p1, p0, Ly2/l;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast p1, Lcom/android/billingclient/api/Purchase;

    check-cast p2, Ls6/k;

    sget-object v0, Lf8/a;->a:Landroid/content/Context;

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    const-string v0, "result"

    .line 2
    invoke-virtual {p2, v0}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->a()I

    move-result p2

    const/16 v0, 0x190

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lf8/a;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lf8/a;->a(Lcom/android/billingclient/api/a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 6
    sget-object p2, Lf8/a;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lf8/a;->a(Lcom/android/billingclient/api/a;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p2, Lf8/a;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lf8/a;->a(Lcom/android/billingclient/api/a;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 8
    :goto_1
    iget-object p1, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/api/AlarmJobIntentService;

    check-cast p2, Ls6/k;

    sget v0, Lcom/mglab/scm/api/AlarmJobIntentService;->l:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    const/4 v0, -0x3

    const/4 v1, 0x1

    .line 9
    :try_start_1
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    .line 10
    iget-object v2, p1, Lcom/mglab/scm/api/AlarmJobIntentService;->k:Ljava/lang/String;

    const-string v3, "body"

    invoke-virtual {p2, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    new-instance v2, Ls6/l;

    invoke-direct {v2}, Ls6/l;-><init>()V

    invoke-virtual {v2, p2}, Ls6/l;->a(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->b()Ls6/h;

    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ls6/i;->toString()Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Ls6/h;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {p2}, Ls6/h;->size()I

    .line 15
    sget-object v2, Lh8/s;->f:Lx8/b;

    .line 16
    iget-object v2, v2, Lx8/b;->b:Lw8/j;

    .line 17
    new-instance v3, Lw8/k;

    invoke-direct {v3, v2}, Lw8/k;-><init>(Lw8/j;)V

    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lw8/k;->j(Ljava/lang/Object;[Ljava/lang/Object;)Lw8/k$b;

    move-result-object v3

    .line 19
    sget-object v4, Lh8/h;->i:Lx8/b;

    .line 20
    iget-object v4, v4, Lx8/b;->b:Lw8/j;

    .line 21
    new-instance v5, Lw8/k;

    invoke-direct {v5, v4}, Lw8/k;-><init>(Lw8/j;)V

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Lw8/k;->j(Ljava/lang/Object;[Ljava/lang/Object;)Lw8/k$b;

    move-result-object v4

    const/4 v5, 0x0

    .line 23
    :goto_2
    invoke-virtual {p2}, Ls6/h;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 24
    invoke-virtual {p2, v5}, Ls6/h;->e(I)Ls6/i;

    move-result-object v6

    invoke-virtual {v6}, Ls6/i;->c()Ls6/k;

    move-result-object v6

    const-string v7, "deletedid"

    .line 25
    invoke-virtual {v6, v7}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v6

    invoke-virtual {v6}, Ls6/i;->a()I

    move-result v6

    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 27
    iget-object v8, v3, Lw8/k$b;->f:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "g^y$j"

    .line 29
    invoke-static {v6, v7, v2}, Lf8/g;->q(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 30
    iget-object v7, v4, Lw8/k$b;->f:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 31
    :cond_2
    new-instance v5, Lw8/f;

    invoke-direct {v5}, Lw8/f;-><init>()V

    .line 32
    const-class v6, Lh8/r;

    .line 33
    new-instance v7, Lw8/g;

    invoke-direct {v7, v5, v6}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v5, v1, [Lw8/n;

    aput-object v3, v5, v2

    .line 34
    new-instance v3, Lw8/r;

    invoke-direct {v3, v7, v5}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 35
    invoke-virtual {v3}, Lw8/r;->i()Lc9/g;

    .line 36
    new-instance v3, Lw8/f;

    invoke-direct {v3}, Lw8/f;-><init>()V

    .line 37
    const-class v5, Lh8/g;

    .line 38
    new-instance v6, Lw8/g;

    invoke-direct {v6, v3, v5}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v3, v1, [Lw8/n;

    aput-object v4, v3, v2

    .line 39
    new-instance v2, Lw8/r;

    invoke-direct {v2, v6, v3}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 40
    invoke-virtual {v2}, Lw8/r;->i()Lc9/g;

    .line 41
    invoke-virtual {p2}, Ls6/h;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ls6/h;->e(I)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->c()Ls6/k;

    move-result-object p2

    const-string v2, "id"

    .line 42
    invoke-virtual {p2, v2}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object p2

    invoke-virtual {p2}, Ls6/i;->a()I

    move-result p2

    .line 43
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lf8/h;->h0(Landroid/content/Context;I)V

    .line 44
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v2, Lk8/e;

    invoke-direct {v2}, Lk8/e;-><init>()V

    invoke-virtual {p2, v2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p1}, Lcom/mglab/scm/api/AlarmJobIntentService;->g()V

    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lf8/h;->f0(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v2, Lk8/q;

    invoke-direct {v2, v0}, Lk8/q;-><init>(I)V

    invoke-virtual {p2, v2}, Lba/b;->g(Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v2, Lk8/e;

    const-string v3, ".downloadDel no result"

    invoke-direct {v2, v3, v1}, Lk8/e;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v2}, Lba/b;->g(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 49
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->f0(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 52
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/media/b;->c(ILba/b;)Lba/b;

    move-result-object p1

    const-string p2, ".downloadDel exception"

    .line 53
    invoke-static {p2, v1, p1}, Lcom/google/android/gms/internal/ads/a;->l(Ljava/lang/String;ILba/b;)V

    goto :goto_3

    .line 54
    :cond_4
    invoke-virtual {p1}, Lcom/mglab/scm/api/AlarmJobIntentService;->f()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Ly2/l;->b:Ljava/lang/Object;

    check-cast v0, Lcom/mglab/scm/visual/FragmentPreferences;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/activity/result/a;

    sget v3, Lcom/mglab/scm/visual/FragmentPreferences;->f:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget v3, v2, Landroidx/activity/result/a;->a:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    .line 2
    iget-object v2, v2, Landroidx/activity/result/a;->b:Landroid/content/Intent;

    .line 3
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v0, "priority"

    .line 5
    const-class v5, Lh8/u;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "r"

    invoke-virtual {v9, v2, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 6
    new-instance v10, Ljava/io/FileInputStream;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    new-array v2, v8, [Lx8/a;

    .line 7
    new-instance v11, Lw8/o;

    invoke-direct {v11, v2}, Lw8/o;-><init>([Lx8/a;)V

    .line 8
    new-instance v2, Lw8/g;

    invoke-direct {v2, v11, v5}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 9
    sget-object v11, Lh8/v;->f:Lx8/b;

    invoke-virtual {v2, v11, v8}, Lw8/e;->n(Lx8/a;Z)Lw8/r;

    move-result-object v2

    invoke-virtual {v2}, Lw8/r;->p()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh8/u;

    .line 10
    iget v2, v2, Lh8/u;->b:I

    .line 11
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    .line 12
    invoke-virtual {v11, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 13
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 14
    invoke-interface {v11, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 15
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v12, "version"

    .line 16
    invoke-interface {v11, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "scm_export"

    .line 17
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "4"

    .line 18
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-le v12, v13, :cond_0

    const v0, 0x7f1100f8

    .line 19
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_5

    :cond_0
    const/4 v13, 0x0

    .line 22
    :goto_0
    :try_start_2
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    if-eq v14, v7, :cond_a

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    .line 23
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v7, "settings"

    .line 24
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v15, "1"

    if-eqz v7, :cond_1

    :try_start_3
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "apponoff"

    .line 25
    invoke-interface {v11, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "psetapponoff"

    .line 26
    invoke-static {v3, v8, v7}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v7, "blockmethod"

    .line 27
    invoke-interface {v11, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "psetblockmethod"

    invoke-static {v3, v8, v7}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "showsim"

    .line 29
    invoke-interface {v11, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "psetss"

    .line 30
    invoke-static {v3, v8, v7}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v7, "secondcall"

    .line 31
    invoke-interface {v11, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "psetblock2call"

    .line 32
    invoke-static {v3, v8, v7}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v7, "clearbutton"

    .line 33
    invoke-interface {v11, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "psethideclearbutton"

    .line 34
    invoke-static {v3, v8, v7}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v7, "altcontacts"

    .line 35
    invoke-interface {v11, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "psetusealtcontactsname"

    .line 36
    invoke-static {v3, v8, v7}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v7, "usepresets"

    .line 37
    invoke-interface {v11, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "psetpresets"

    .line 38
    invoke-static {v3, v8, v7}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    const-string v7, "preset"

    .line 39
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v8, "name"

    if-eqz v7, :cond_2

    .line 40
    :try_start_4
    new-instance v7, Lh8/u;

    invoke-direct {v7}, Lh8/u;-><init>()V

    .line 41
    invoke-interface {v11, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v7, Lh8/u;->e:I

    .line 42
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lh8/u;->c:Ljava/lang/String;

    const-string v8, "active"

    .line 43
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->d:Z

    const-string v8, "useSim1"

    .line 44
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->f:Z

    const-string v8, "useSim2"

    .line 45
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->g:Z

    const-string v8, "useDB"

    .line 46
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->h:Z

    const-string v8, "useBL"

    .line 47
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->i:Z

    const-string v8, "useWL"

    .line 48
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->j:Z

    const-string v8, "useContacts"

    .line 49
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->k:Z

    const-string v8, "blockAllExceptContacts"

    .line 50
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->l:Z

    const-string v8, "blockAllExceptWL"

    .line 51
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->m:Z

    const-string v8, "blockHidden"

    .line 52
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->n:Z

    const-string v8, "blockForeign"

    .line 53
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->o:Z

    const-string v8, "deleteBlocked"

    .line 54
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->p:Z

    const-string v8, "showNotifications"

    .line 55
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->q:Z

    const-string v8, "useCalendar"

    .line 56
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->r:Z

    const-string v8, "time1"

    .line 57
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lh8/u;->z:Ljava/lang/String;

    const-string v8, "time2"

    .line 58
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lh8/u;->A:Ljava/lang/String;

    const-string v8, "day1"

    .line 59
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->s:Z

    const-string v8, "day2"

    .line 60
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->t:Z

    const-string v8, "day3"

    .line 61
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->u:Z

    const-string v8, "day4"

    .line 62
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->v:Z

    const-string v8, "day5"

    .line 63
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->w:Z

    const-string v8, "day6"

    .line 64
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->x:Z

    const-string v8, "day7"

    .line 65
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Lh8/u;->y:Z

    .line 66
    invoke-virtual {v7}, Lb9/a;->a()Z

    .line 67
    invoke-interface {v11, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_2
    const-string v7, "bl"

    .line 68
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v15, "category"

    const-string v4, "number"

    if-eqz v7, :cond_5

    .line 69
    :try_start_5
    invoke-interface {v11, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v14, -0x1

    if-ne v7, v14, :cond_3

    .line 70
    invoke-interface {v11, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lh8/q;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 71
    :cond_3
    invoke-interface {v11, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v14, -0x1

    if-eq v7, v14, :cond_4

    .line 72
    invoke-interface {v11, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lh8/q;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_2

    .line 73
    :cond_4
    new-instance v7, Lh8/c;

    invoke-direct {v7}, Lh8/c;-><init>()V

    .line 74
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lh8/c;->d:Ljava/lang/String;

    .line 75
    invoke-interface {v11, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lh8/c;->c:Ljava/lang/String;

    .line 76
    invoke-interface {v11, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lh8/c;->f:I

    const/4 v8, 0x0

    .line 77
    iput-boolean v8, v7, Lh8/c;->g:Z

    .line 78
    invoke-interface {v11, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lh8/c;->e:Ljava/lang/String;

    .line 79
    invoke-virtual {v7}, Lb9/a;->a()Z

    goto :goto_2

    :cond_5
    const-string v7, "wl"

    .line 80
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 81
    invoke-interface {v11, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v14, -0x1

    if-ne v7, v14, :cond_6

    .line 82
    invoke-interface {v11, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lh8/q;->h(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 83
    :cond_6
    invoke-interface {v11, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v14, -0x1

    if-eq v7, v14, :cond_7

    .line 84
    invoke-interface {v11, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lh8/q;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    .line 85
    :cond_7
    new-instance v7, Lh8/w;

    invoke-direct {v7}, Lh8/w;-><init>()V

    .line 86
    invoke-interface {v11, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lh8/w;->d:Ljava/lang/String;

    .line 87
    invoke-interface {v11, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lh8/w;->c:Ljava/lang/String;

    .line 88
    invoke-interface {v11, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lh8/w;->e:Ljava/lang/String;

    const/4 v4, 0x2

    if-lt v12, v4, :cond_8

    .line 89
    invoke-interface {v11, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v7, Lh8/w;->f:I

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    .line 90
    iput v4, v7, Lh8/w;->f:I

    .line 91
    :goto_1
    invoke-virtual {v7}, Lb9/a;->a()Z

    :cond_9
    :goto_2
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 92
    :cond_a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 93
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V

    const v0, 0x7f1100f5

    .line 94
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    .line 95
    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    .line 97
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, 0x7f1100f7

    .line 98
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    .line 99
    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    :goto_4
    invoke-static {}, Lh8/q;->u()I

    move-result v0

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "lastblid"

    invoke-static {v3, v4, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v13, :cond_b

    .line 103
    new-instance v0, Lw8/f;

    invoke-direct {v0}, Lw8/f;-><init>()V

    .line 104
    new-instance v3, Lw8/g;

    invoke-direct {v3, v0, v5}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v4, 0x1

    new-array v0, v4, [Lw8/n;

    .line 105
    sget-object v4, Lh8/v;->f:Lx8/b;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lx8/b;->i(Ljava/lang/Object;)Lw8/k;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 106
    new-instance v2, Lw8/r;

    invoke-direct {v2, v3, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 107
    invoke-virtual {v2}, Lw8/d;->d()V

    .line 108
    :cond_b
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v2, Lk8/r;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lk8/r;-><init>(I)V

    invoke-virtual {v0, v2}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_5

    :catch_2
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, 0x7f1100f6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 110
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v6, v0}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public c(Ld9/h;)V
    .locals 3

    iget-object p1, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "contactslastsync"

    .line 2
    invoke-static {p1, v2, v0, v1}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    new-instance v1, Lk8/q;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lk8/q;-><init>(I)V

    invoke-virtual {v0, v1}, Lba/b;->g(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lf8/g;->D(Landroid/content/Context;)V

    return-void
.end method

.method public d(Ld5/a;)V
    .locals 2

    iget-object v0, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast v0, La5/a;

    .line 1
    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, v0, La5/a;->c:Ld5/b;

    instance-of v1, v1, Ld5/c;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, La5/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, v0, La5/a;->c:Ld5/b;

    invoke-interface {v1, p1}, Ld5/b;->d(Ld5/a;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast v0, Lz2/c;

    invoke-interface {v0}, Lz2/c;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)V
    .locals 1

    iget-object p3, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast p3, Lm7/d;

    sget v0, Lm7/g;->i:I

    .line 1
    invoke-interface {p3, p1, p2}, Lm7/d;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 5

    iget p1, p0, Ly2/l;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast p1, Lm8/d;

    .line 1
    invoke-virtual {p1}, Lm8/d;->f()V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/FragmentStat;

    sget-object p2, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->p0(Landroid/content/Context;)V

    return-void

    .line 4
    :goto_0
    iget-object p1, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p2, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v0, 0x7f090249

    invoke-virtual {p2, v0}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    sget-object v0, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v1, 0x7f0901e8

    invoke-virtual {v0, v1}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v1, p1, Lcom/mglab/scm/visual/c;->d:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto/16 :goto_5

    .line 8
    :cond_0
    :try_start_0
    new-instance v1, Lh8/c;

    invoke-direct {v1}, Lh8/c;-><init>()V

    .line 9
    iput-object p2, v1, Lh8/c;->d:Ljava/lang/String;

    .line 10
    iput-object v0, v1, Lh8/c;->c:Ljava/lang/String;

    .line 11
    iget-boolean p2, p1, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz p2, :cond_1

    .line 12
    iput v2, v1, Lh8/c;->f:I

    goto :goto_1

    .line 13
    :cond_1
    sget-object p2, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v2, 0x7f0900c5

    invoke-virtual {p2, v2}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    iput p2, v1, Lh8/c;->f:I

    .line 14
    :goto_1
    invoke-static {v0}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lh8/c;->e:Ljava/lang/String;

    .line 15
    invoke-virtual {v1}, Lb9/a;->a()Z

    .line 16
    sget-object p2, Lcom/mglab/scm/visual/c;->k:Le2/g;

    const v1, 0x7f090305

    invoke-virtual {p2, v1}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    .line 17
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p1, Lcom/mglab/scm/visual/c;->e:Z

    if-nez p2, :cond_2

    .line 18
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v1, Lk8/b0;

    invoke-direct {v1, v0, v3}, Lk8/b0;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p2, v1}, Lba/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 19
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_2
    :goto_2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    new-instance v0, Lk8/a;

    invoke-direct {v0, v3}, Lk8/a;-><init>(I)V

    invoke-virtual {p2, v0}, Lba/b;->g(Ljava/lang/Object;)V

    goto :goto_5

    .line 21
    :cond_3
    :try_start_1
    new-instance v1, Lh8/w;

    invoke-direct {v1}, Lh8/w;-><init>()V

    .line 22
    iput-object p2, v1, Lh8/w;->d:Ljava/lang/String;

    .line 23
    iput-object v0, v1, Lh8/w;->c:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Lh8/q;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lh8/w;->e:Ljava/lang/String;

    .line 25
    iget-boolean p2, p1, Lcom/mglab/scm/visual/c;->e:Z

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iput v2, v1, Lh8/w;->f:I

    .line 26
    invoke-virtual {v1}, Lb9/a;->a()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :goto_4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    invoke-static {v3, p2}, La6/h;->m(ILba/b;)V

    .line 29
    :goto_5
    iget-object p2, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lf8/g;->D(Landroid/content/Context;)V

    .line 30
    iget-object p2, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    iget-object v0, p1, Lcom/mglab/scm/visual/c;->b:Landroid/view/View;

    const v1, 0x7f1100c2

    invoke-static {p2, v0, v1}, Lf8/g;->K(Landroid/content/Context;Landroid/view/View;I)V

    .line 31
    iget-object p2, p1, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    iget-object p1, p1, Lcom/mglab/scm/visual/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast v0, Lf8/j;

    check-cast p1, Li4/a;

    .line 1
    iget-object v1, v0, Lf8/j;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    iget v2, p1, Li4/a;->a:I

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_4

    .line 3
    invoke-static {v1}, Lf8/h;->o(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 4
    iget-object p1, v0, Lf8/j;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->q0(Landroid/content/Context;)V

    goto :goto_2

    .line 5
    :cond_0
    invoke-static {v1}, Lf8/h;->o(Landroid/content/Context;)J

    move-result-wide v2

    new-instance v4, Lf8/b;

    invoke-direct {v4}, Lf8/b;-><init>()V

    const-string v5, "app_update_repeat_interval_hrs"

    .line 6
    invoke-virtual {v4, v5}, Lf8/b;->b(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    mul-long v4, v4, v6

    add-long/2addr v4, v2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v6, v4, v2

    if-gez v6, :cond_5

    .line 8
    invoke-static {v1}, Lf8/h;->q0(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 9
    invoke-static {v2}, Li4/c;->c(I)Li4/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Li4/a;->a(Li4/c;)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0x212

    if-eqz v3, :cond_2

    .line 10
    iget-object v3, v0, Lf8/j;->a:Li4/b;

    iget-object v4, v0, Lf8/j;->b:Lf8/i;

    invoke-interface {v3, v4}, Li4/b;->b(Lf8/i;)V

    .line 11
    :try_start_0
    iget-object v3, v0, Lf8/j;->a:Li4/b;

    iget-object v4, v0, Lf8/j;->c:Landroid/app/Activity;

    invoke-interface {v3, p1, v2, v4, v5}, Li4/b;->e(Li4/a;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 13
    invoke-virtual {v0}, Lf8/j;->b()V

    .line 14
    :goto_1
    invoke-static {v1}, Lf8/h;->q0(Landroid/content/Context;)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {v4}, Li4/c;->c(I)Li4/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Li4/a;->a(Li4/c;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_5

    .line 16
    :try_start_1
    iget-object v1, v0, Lf8/j;->a:Li4/b;

    iget-object v0, v0, Lf8/j;->c:Landroid/app/Activity;

    invoke-interface {v1, p1, v4, v0, v5}, Li4/b;->e(Li4/a;ILandroid/app/Activity;I)Z
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string p1, "gappupdatelaststart"

    .line 18
    invoke-static {v1, p1, v4, v5}, Lf8/h;->k0(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_5
    :goto_2
    return-void
.end method

.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ly2/l;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast v0, Le5/h0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v3

    const-string v4, "FirebaseCrashlytics"

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le5/y;

    .line 3
    invoke-virtual {p1}, Le5/y;->b()Ljava/lang/String;

    const/4 v3, 0x3

    .line 4
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    iget-object v0, v0, Le5/h0;->b:Lj5/f;

    invoke-virtual {p1}, Le5/y;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v4, Lj5/b;

    invoke-direct {v4, p1}, Lj5/b;-><init>(Ljava/lang/String;)V

    new-array p1, v3, [Ljava/util/List;

    .line 7
    iget-object v3, v0, Lj5/f;->c:Ljava/io/File;

    .line 8
    invoke-static {v3, v4}, Lj5/f;->e(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v3

    aput-object v3, p1, v1

    iget-object v1, v0, Lj5/f;->e:Ljava/io/File;

    .line 9
    invoke-static {v1, v4}, Lj5/f;->e(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v1

    aput-object v1, p1, v2

    iget-object v0, v0, Lj5/f;->d:Ljava/io/File;

    .line 10
    invoke-static {v0, v4}, Lj5/f;->e(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 11
    invoke-static {p1}, Lj5/f;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "Crashlytics report could not be enqueued to DataTransport"

    .line 15
    invoke-static {v4, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 17
    :goto_2
    iget-object v0, p0, Ly2/l;->b:Ljava/lang/Object;

    check-cast v0, Lq6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    iget-object v3, v0, Lq6/b;->d:Lr6/d;

    .line 20
    monitor-enter v3

    const/4 v1, 0x0

    .line 21
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iput-object v1, v3, Lr6/d;->c:Lcom/google/android/gms/tasks/Task;

    .line 22
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    iget-object v1, v3, Lr6/d;->b:Lr6/i;

    .line 24
    monitor-enter v1

    .line 25
    :try_start_1
    iget-object v3, v1, Lr6/i;->a:Landroid/content/Context;

    iget-object v4, v1, Lr6/i;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit v1

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr6/e;

    .line 29
    iget-object p1, p1, Lr6/e;->d:Lorg/json/JSONArray;

    .line 30
    iget-object v1, v0, Lq6/b;->b:Lu4/b;

    if-nez v1, :cond_2

    goto :goto_3

    .line 31
    :cond_2
    :try_start_2
    invoke-static {p1}, Lq6/b;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 32
    iget-object v0, v0, Lq6/b;->b:Lu4/b;

    invoke-virtual {v0, p1}, Lu4/b;->c(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/firebase/abt/AbtException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "Could not update ABT experiments."

    .line 33
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_3
    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v1

    throw p1

    :catchall_1
    move-exception p1

    .line 35
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 36
    :cond_4
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
