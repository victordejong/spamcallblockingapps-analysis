.class Lcom/callerid/block/start/SettingActivity$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/SettingActivity;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/SettingActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SettingActivity;->Y(Lcom/callerid/block/start/SettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p2}, Lcom/callerid/block/start/SettingActivity;->Z(Lcom/callerid/block/start/SettingActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callerid/block/bean/EZCountryCode;

    iget-object p3, p0, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/callerid/block/util/j;->h(Landroid/content/Context;Lcom/callerid/block/bean/EZCountryCode;)V

    iget-object p2, p0, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p2}, Lcom/callerid/block/start/SettingActivity;->Y(Lcom/callerid/block/start/SettingActivity;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p3, p0, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p3}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p2}, Lcom/callerid/block/start/SettingActivity;->Y(Lcom/callerid/block/start/SettingActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->V(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object p1

    iget-object p1, p1, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/callerid/block/start/SettingActivity$g$a;

    invoke-direct {p2, p0}, Lcom/callerid/block/start/SettingActivity$g$a;-><init>(Lcom/callerid/block/start/SettingActivity$g;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SettingActivity;->a0(Lcom/callerid/block/start/SettingActivity;)Lcom/rey/material/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rey/material/app/Dialog;->dismiss()V

    return-void
.end method
