.class public Lcom/allinone/callerid/customview/d;
.super Ljava/lang/Object;
.source "SpeakerTipWindowManager.java"


# static fields
.field private static a:Lcom/allinone/callerid/customview/d;


# instance fields
.field private b:Lcom/allinone/callerid/customview/SpeakerTiplView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/allinone/callerid/customview/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/customview/d;->a:Lcom/allinone/callerid/customview/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/customview/d;

    invoke-direct {v0}, Lcom/allinone/callerid/customview/d;-><init>()V

    sput-object v0, Lcom/allinone/callerid/customview/d;->a:Lcom/allinone/callerid/customview/d;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/customview/d;->a:Lcom/allinone/callerid/customview/d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/d;->b:Lcom/allinone/callerid/customview/SpeakerTiplView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/customview/SpeakerTiplView;

    invoke-direct {v0, p1}, Lcom/allinone/callerid/customview/SpeakerTiplView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/customview/d;->b:Lcom/allinone/callerid/customview/SpeakerTiplView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/customview/d;->b:Lcom/allinone/callerid/customview/SpeakerTiplView;

    if-eqz v0, :cond_0

    const-string v0, "window"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/customview/d;->b:Lcom/allinone/callerid/customview/SpeakerTiplView;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/customview/d;->b:Lcom/allinone/callerid/customview/SpeakerTiplView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
