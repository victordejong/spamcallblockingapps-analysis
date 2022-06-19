.class Lcom/allinone/callerid/start/CommonSetting$d;
.super Ljava/lang/Object;
.source "CommonSetting.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/CommonSetting;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/CommonSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/CommonSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/CommonSetting$d;->a:Lcom/allinone/callerid/start/CommonSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/model/EZCountryCode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/CommonSetting$d;->a:Lcom/allinone/callerid/start/CommonSetting;

    invoke-static {v0}, Lcom/allinone/callerid/start/CommonSetting;->Y(Lcom/allinone/callerid/start/CommonSetting;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/start/CommonSetting$d;->a:Lcom/allinone/callerid/start/CommonSetting;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/allinone/callerid/util/p;->h(Landroid/content/Context;Lcom/allinone/callerid/model/EZCountryCode;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/start/CommonSetting$d;->a:Lcom/allinone/callerid/start/CommonSetting;

    invoke-static {p1}, Lcom/allinone/callerid/start/CommonSetting;->Y(Lcom/allinone/callerid/start/CommonSetting;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/start/CommonSetting$d;->a:Lcom/allinone/callerid/start/CommonSetting;

    invoke-static {v1}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/start/CommonSetting$d;->a:Lcom/allinone/callerid/start/CommonSetting;

    invoke-static {p1}, Lcom/allinone/callerid/start/CommonSetting;->Y(Lcom/allinone/callerid/start/CommonSetting;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->s0(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcom/allinone/callerid/start/CommonSetting$h;

    iget-object v0, p0, Lcom/allinone/callerid/start/CommonSetting$d;->a:Lcom/allinone/callerid/start/CommonSetting;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/start/CommonSetting$h;-><init>(Lcom/allinone/callerid/start/CommonSetting;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
