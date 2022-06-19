.class public Lcom/facebook/FacebookActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "PassThrough"

.field private static c:Ljava/lang/String; = "SingleFragment"

.field private static final d:Ljava/lang/String; = "com.facebook.FacebookActivity"


# instance fields
.field public b:Landroidx/fragment/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v12, 0x1

    const/4 v0, 0x0

    if-eqz v11, :cond_8

    .line 3075
    :try_start_0
    array-length v2, v11

    if-lez v2, :cond_8

    const-string v2, "e2e"

    aget-object v3, v11, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3077
    sget-object v0, Lcom/facebook/internal/c/a/b;->a:Lcom/facebook/internal/c/a/b;

    if-nez v0, :cond_1

    .line 3079
    new-instance v0, Lcom/facebook/internal/c/a/b;

    invoke-direct {v0}, Lcom/facebook/internal/c/a/b;-><init>()V

    sput-object v0, Lcom/facebook/internal/c/a/b;->a:Lcom/facebook/internal/c/a/b;

    .line 3081
    :cond_1
    sget-object v0, Lcom/facebook/internal/c/a/b;->a:Lcom/facebook/internal/c/a/b;

    .line 3088
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Top Level Window View Hierarchy:"

    .line 3089
    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "all-roots"

    .line 3090
    invoke-static {v11, v2}, Lcom/facebook/internal/c/a/b;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    const-string v2, "top-root"

    .line 3091
    invoke-static {v11, v2}, Lcom/facebook/internal/c/a/b;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    const-string v2, "webview"

    .line 3092
    invoke-static {v11, v2}, Lcom/facebook/internal/c/a/b;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    const-string v2, "props"

    .line 3093
    invoke-static {v11, v2}, Lcom/facebook/internal/c/a/b;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3096
    :try_start_1
    iget-object v2, v0, Lcom/facebook/internal/c/a/b;->b:Lcom/facebook/internal/c/a/a;

    invoke-virtual {v2}, Lcom/facebook/internal/c/a/a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3097
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 3101
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v3, 0x0

    .line 3106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/facebook/internal/c/a/a$b;

    .line 4037
    iget-object v2, v9, Lcom/facebook/internal/c/a/a$b;->a:Landroid/view/View;

    .line 3107
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    if-nez v13, :cond_4

    if-eqz v3, :cond_4

    .line 5037
    iget-object v2, v9, Lcom/facebook/internal/c/a/a$b;->b:Landroid/view/WindowManager$LayoutParams;

    .line 3113
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v12, :cond_6

    .line 3117
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6037
    iget-object v5, v9, Lcom/facebook/internal/c/a/a$b;->a:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object/from16 v4, p3

    move v8, v15

    move-object v12, v9

    move/from16 v9, v16

    .line 3117
    invoke-virtual/range {v2 .. v9}, Lcom/facebook/internal/c/a/b;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;IIZZ)V

    .line 7037
    iget-object v3, v12, Lcom/facebook/internal/c/a/a$b;->b:Landroid/view/WindowManager$LayoutParams;

    if-eqz v14, :cond_5

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    goto :goto_0

    .line 3125
    :cond_6
    :goto_1
    iget-object v0, v0, Lcom/facebook/internal/c/a/b;->c:Lcom/facebook/internal/c/a/d;

    invoke-virtual {v0, v10}, Lcom/facebook/internal/c/a/d;->a(Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 3127
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failure in view hierarchy dump: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    :goto_2
    const/4 v12, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_9

    return-void

    .line 161
    :cond_9
    invoke-super/range {p0 .. p4}, Landroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 162
    :goto_4
    invoke-static {v0, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    iget-object v0, p0, Lcom/facebook/FacebookActivity;->b:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 67
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 74
    invoke-static {}, Lcom/facebook/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    .line 79
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/g;->a(Landroid/content/Context;)V

    .line 82
    :cond_0
    sget v0, Lcom/facebook/common/a$e;->com_facebook_activity_layout:I

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookActivity;->setContentView(I)V

    .line 84
    sget-object v0, Lcom/facebook/FacebookActivity;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1143
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1146
    invoke-static {p1}, Lcom/facebook/internal/z;->b(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    .line 1147
    invoke-static {p1}, Lcom/facebook/internal/z;->a(Landroid/os/Bundle;)Lcom/facebook/FacebookException;

    move-result-object p1

    .line 1149
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/facebook/internal/z;->a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 1150
    invoke-virtual {p0, v0, p1}, Lcom/facebook/FacebookActivity;->setResult(ILandroid/content/Intent;)V

    .line 1151
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->finish()V

    return-void

    .line 2093
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 2094
    invoke-virtual {p0}, Lcom/facebook/FacebookActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2095
    sget-object v1, Lcom/facebook/FacebookActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_5

    .line 2098
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FacebookDialogFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2099
    new-instance v1, Lcom/facebook/internal/g;

    invoke-direct {v1}, Lcom/facebook/internal/g;-><init>()V

    .line 2100
    invoke-virtual {v1, v2}, Lcom/facebook/internal/g;->setRetainInstance(Z)V

    .line 2101
    sget-object p1, Lcom/facebook/FacebookActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/internal/g;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2104
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DeviceShareDialogFragment"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2105
    new-instance v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    invoke-direct {v1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;-><init>()V

    .line 2106
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setRetainInstance(Z)V

    const-string v2, "content"

    .line 2107
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    .line 2162
    iput-object p1, v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;->c:Lcom/facebook/share/model/ShareContent;

    .line 2108
    sget-object p1, Lcom/facebook/FacebookActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2110
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ReferralFragment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2111
    new-instance v1, Lcom/facebook/referrals/b;

    invoke-direct {v1}, Lcom/facebook/referrals/b;-><init>()V

    .line 2112
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 2114
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p1

    sget v0, Lcom/facebook/common/a$d;->com_facebook_fragment_container:I

    sget-object v2, Lcom/facebook/FacebookActivity;->c:Ljava/lang/String;

    .line 2115
    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    .line 2116
    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    goto :goto_0

    .line 2118
    :cond_4
    new-instance v1, Lcom/facebook/login/e;

    invoke-direct {v1}, Lcom/facebook/login/e;-><init>()V

    .line 2119
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 2121
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p1

    sget v0, Lcom/facebook/common/a$d;->com_facebook_fragment_container:I

    sget-object v2, Lcom/facebook/FacebookActivity;->c:Ljava/lang/String;

    .line 2122
    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    .line 2123
    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    .line 89
    :cond_5
    :goto_0
    iput-object v1, p0, Lcom/facebook/FacebookActivity;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method
