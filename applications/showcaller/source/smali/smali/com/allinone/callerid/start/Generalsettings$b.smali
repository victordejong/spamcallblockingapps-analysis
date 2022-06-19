.class Lcom/allinone/callerid/start/Generalsettings$b;
.super Ljava/lang/Object;
.source "Generalsettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/Generalsettings;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/Generalsettings;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/Generalsettings;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/Generalsettings$b;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->f2(Z)V

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/start/Generalsettings$b;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/allinone/callerid/util/h1;->i0(Landroid/content/Context;)Z

    move-result p2

    const-wide/16 v0, 0x15e

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->z2()I

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings$b;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-static {p1}, Lcom/allinone/callerid/start/Generalsettings;->X(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/start/Generalsettings$b$a;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/start/Generalsettings$b$a;-><init>(Lcom/allinone/callerid/start/Generalsettings$b;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->z2()I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/start/Generalsettings$b;->a:Lcom/allinone/callerid/start/Generalsettings;

    invoke-static {p1}, Lcom/allinone/callerid/start/Generalsettings;->X(Lcom/allinone/callerid/start/Generalsettings;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance p2, Lcom/allinone/callerid/start/Generalsettings$b$b;

    invoke-direct {p2, p0}, Lcom/allinone/callerid/start/Generalsettings$b$b;-><init>(Lcom/allinone/callerid/start/Generalsettings$b;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->f2(Z)V

    :cond_2
    :goto_0
    return-void
.end method
