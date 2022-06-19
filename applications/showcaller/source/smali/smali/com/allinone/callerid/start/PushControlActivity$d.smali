.class Lcom/allinone/callerid/start/PushControlActivity$d;
.super Ljava/lang/Object;
.source "PushControlActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/PushControlActivity;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/PushControlActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/PushControlActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/PushControlActivity$d;->a:Lcom/allinone/callerid/start/PushControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const-string p1, "com.allinone.callerid.CHANGE_NOTIFI"

    const-string v0, "checked\uff1a"

    const-string v1, "wbb"

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    iput-boolean v2, p2, Lcom/allinone/callerid/main/EZCallApplication;->i:Z

    .line 4
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->U1(Z)V

    .line 5
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/start/PushControlActivity$d;->a:Lcom/allinone/callerid/start/PushControlActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/p/a/a;->d(Landroid/content/Intent;)Z

    goto :goto_0

    .line 7
    :cond_1
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/allinone/callerid/start/PushControlActivity$d;->a:Lcom/allinone/callerid/start/PushControlActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/start/PushControlActivity$d;->a:Lcom/allinone/callerid/start/PushControlActivity;

    invoke-static {p1, v2}, Lcom/allinone/callerid/start/PushControlActivity;->X(Lcom/allinone/callerid/start/PushControlActivity;Z)Z

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/start/PushControlActivity$d;->a:Lcom/allinone/callerid/start/PushControlActivity;

    invoke-static {p1}, Lcom/allinone/callerid/start/PushControlActivity;->Y(Lcom/allinone/callerid/start/PushControlActivity;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/allinone/callerid/main/EZCallApplication;->i:Z

    .line 13
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->U1(Z)V

    .line 14
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/start/PushControlActivity$d;->a:Lcom/allinone/callerid/start/PushControlActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/p/a/a;->d(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
