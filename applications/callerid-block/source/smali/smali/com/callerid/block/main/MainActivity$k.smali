.class Lcom/callerid/block/main/MainActivity$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity;->k1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    const-string v1, "wbb"

    if-eqz v0, :cond_0

    const-string v0, "\u663e\u793a\u5e03\u5c40"

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->P(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->V0(Lcom/callerid/block/main/MainActivity;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    new-instance v3, Lcom/callerid/block/main/MainActivity$k$a;

    invoke-direct {v3, p0}, Lcom/callerid/block/main/MainActivity$k$a;-><init>(Lcom/callerid/block/main/MainActivity$k;)V

    invoke-static {v0, v3}, Lcom/google/android/gms/ads/l;->a(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/b;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->X0(Lcom/callerid/block/main/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v3}, Lcom/callerid/block/main/MainActivity;->W0(Lcom/callerid/block/main/MainActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-le v0, v3, :cond_3

    const/16 v3, 0x19

    if-le v0, v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/callerid/block/service/MyService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/callerid/block/main/MainActivity$k$b;

    invoke-direct {v4, p0}, Lcom/callerid/block/main/MainActivity$k$b;-><init>(Lcom/callerid/block/main/MainActivity$k;)V

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.callerid.block.CLOSE_NOTIFI"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/callerid/block/service/MyService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/callerid/block/service/DaemonService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    const v3, 0x7f0902be

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-static {v0, v3}, Lcom/callerid/block/main/MainActivity;->X(Lcom/callerid/block/main/MainActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    const v3, 0x7f0902e8

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lcom/callerid/block/main/MainActivity;->p0(Lcom/callerid/block/main/MainActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->m0(Lcom/callerid/block/main/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->m0(Lcom/callerid/block/main/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    const v3, 0x7f09022f

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/callerid/block/main/MainActivity;->Y0(Lcom/callerid/block/main/MainActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    new-instance v3, Lcom/callerid/block/main/MainActivity$q;

    iget-object v4, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-direct {v3, v4}, Lcom/callerid/block/main/MainActivity$q;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-static {v0, v3}, Lcom/callerid/block/main/MainActivity;->a1(Lcom/callerid/block/main/MainActivity;Lcom/callerid/block/main/MainActivity$q;)Lcom/callerid/block/main/MainActivity$q;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    new-instance v3, Lcom/callerid/block/main/MainActivity$r;

    iget-object v4, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-direct {v3, v4}, Lcom/callerid/block/main/MainActivity$r;-><init>(Lcom/callerid/block/main/MainActivity;)V

    invoke-static {v0, v3}, Lcom/callerid/block/main/MainActivity;->W(Lcom/callerid/block/main/MainActivity;Lcom/callerid/block/main/MainActivity$r;)Lcom/callerid/block/main/MainActivity$r;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->V(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/main/MainActivity$r;

    move-result-object v3

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.exist"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.callerid.block.CLOSE_AD_VEST"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v3}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v4}, Lcom/callerid/block/main/MainActivity;->Z0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/main/MainActivity$q;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ld/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->Y(Lcom/callerid/block/main/MainActivity;)V

    new-instance v0, Lcom/callerid/block/main/MainActivity$k$c;

    invoke-direct {v0, p0}, Lcom/callerid/block/main/MainActivity$k$c;-><init>(Lcom/callerid/block/main/MainActivity$k;)V

    invoke-static {v0}, Lcom/callerid/block/h/a/b/a;->a(Lcom/callerid/block/h/a/b/b;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->a0(Lcom/callerid/block/main/MainActivity;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->b0(Lcom/callerid/block/main/MainActivity;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    const v3, 0x7f09017c

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/callerid/block/customview/LImageButton;

    invoke-static {v0, v3}, Lcom/callerid/block/main/MainActivity;->d0(Lcom/callerid/block/main/MainActivity;Lcom/callerid/block/customview/LImageButton;)Lcom/callerid/block/customview/LImageButton;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->c0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/LImageButton;

    move-result-object v0

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    const v3, 0x7f09018f

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/rey/material/widget/ImageButton;

    invoke-static {v0, v3}, Lcom/callerid/block/main/MainActivity;->f0(Lcom/callerid/block/main/MainActivity;Lcom/rey/material/widget/ImageButton;)Lcom/rey/material/widget/ImageButton;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->e0(Lcom/callerid/block/main/MainActivity;)Lcom/rey/material/widget/ImageButton;

    move-result-object v0

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0, v3}, Lcom/rey/material/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    const v3, 0x7f090247

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/callerid/block/main/MainActivity;->h0(Lcom/callerid/block/main/MainActivity;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    const v3, 0x7f0900fd

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-static {v0, v3}, Lcom/callerid/block/main/MainActivity;->j0(Lcom/callerid/block/main/MainActivity;Landroidx/drawerlayout/widget/DrawerLayout;)Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->i0(Lcom/callerid/block/main/MainActivity;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    new-instance v3, Lcom/callerid/block/main/MainActivity$k$d;

    invoke-direct {v3, p0}, Lcom/callerid/block/main/MainActivity$k$d;-><init>(Lcom/callerid/block/main/MainActivity$k;)V

    invoke-virtual {v0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$d;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v3}, Lcom/callerid/block/main/MainActivity;->r0(Lcom/callerid/block/main/MainActivity;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0, v0}, Lcom/callerid/block/main/MainActivity;->s0(Lcom/callerid/block/main/MainActivity;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Lcom/callerid/block/main/MainActivity;->l1()V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->t0(Lcom/callerid/block/main/MainActivity;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->O(Landroid/content/Context;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->O(Landroid/content/Context;)J

    move-result-wide v7

    cmp-long v0, v3, v7

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->b0(Landroid/content/Context;)I

    move-result v0

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/callerid/block/util/n0;->Z0(Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->u0(Lcom/callerid/block/main/MainActivity;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-static {v0, v3, v4}, Lcom/callerid/block/util/n0;->Z0(Landroid/content/Context;J)V

    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->c0(Landroid/content/Context;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_6

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/callerid/block/util/t0;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v4, "60"

    const-string v6, "android"

    invoke-static/range {v3 .. v9}, Lcom/callerid/block/util/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/callerid/block/util/n0;->A1()J

    move-result-wide v3

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-wide/16 v0, 0x0

    const-wide/32 v5, 0x1d4c0

    cmp-long v7, v3, v0

    if-eqz v7, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-wide v3, 0x9a7ec800L

    cmp-long v7, v0, v3

    if-gtz v7, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/callerid/block/util/n0;->M(Landroid/content/Context;)J

    move-result-wide v3

    cmp-long v7, v0, v3

    if-lez v7, :cond_a

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/callerid/block/k/a/e;->g(Landroid/content/Context;J)V

    goto :goto_2

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/callerid/block/util/n0;->M(Landroid/content/Context;)J

    move-result-wide v3

    cmp-long v7, v0, v3

    if-lez v7, :cond_9

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v6}, Lcom/callerid/block/k/a/e;->g(Landroid/content/Context;J)V

    :cond_9
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v3, 0x2bf20

    invoke-static {v0, v3, v4}, Lcom/callerid/block/k/a/e;->i(Landroid/content/Context;J)V

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/android/boom/c;->g(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/callerid/block/util/n0;->k1(Landroid/content/Context;Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/x0/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/x0/a;->m(Landroid/content/Context;)V

    :cond_b
    invoke-static {}, Lcom/callerid/block/util/w0/a;->g()V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/main/MainActivity$k$e;

    invoke-direct {v1, p0}, Lcom/callerid/block/main/MainActivity$k$e;-><init>(Lcom/callerid/block/main/MainActivity$k;)V

    invoke-static {v0, v1}, Lcom/callerid/block/h/a/e/d;->a(Landroid/content/Context;Lcom/callerid/block/h/a/e/e;)V

    :cond_c
    :try_start_1
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/n0;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$k;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/main/MainActivity$k$f;

    invoke-direct {v1, p0}, Lcom/callerid/block/main/MainActivity$k$f;-><init>(Lcom/callerid/block/main/MainActivity$k;)V

    invoke-static {v0, v1}, Lcom/callerid/block/h/a/e/l/a;->a(Landroid/content/Context;Lcom/callerid/block/h/a/e/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_3
    return-void
.end method
