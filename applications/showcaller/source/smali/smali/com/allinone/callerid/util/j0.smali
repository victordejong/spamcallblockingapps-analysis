.class public Lcom/allinone/callerid/util/j0;
.super Ljava/lang/Object;
.source "MyWindowManager.java"


# static fields
.field private static a:Lcom/allinone/callerid/util/j0;


# instance fields
.field private b:Lcom/allinone/callerid/customview/FloatNormalView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/allinone/callerid/util/j0;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/j0;->a:Lcom/allinone/callerid/util/j0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/util/j0;

    invoke-direct {v0}, Lcom/allinone/callerid/util/j0;-><init>()V

    sput-object v0, Lcom/allinone/callerid/util/j0;->a:Lcom/allinone/callerid/util/j0;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/util/j0;->a:Lcom/allinone/callerid/util/j0;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "selfstarting"

    const-string v1, "\u521b\u5efa\u5c0f\u578b\u60ac\u6d6e\u7a97\u5566"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/j0;->b:Lcom/allinone/callerid/customview/FloatNormalView;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-direct {v0, p1}, Lcom/allinone/callerid/customview/FloatNormalView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/allinone/callerid/util/j0;->b:Lcom/allinone/callerid/customview/FloatNormalView;

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/j0;->b:Lcom/allinone/callerid/customview/FloatNormalView;

    if-eqz v0, :cond_0

    const-string v0, "window"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/util/j0;->b:Lcom/allinone/callerid/customview/FloatNormalView;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/util/j0;->b:Lcom/allinone/callerid/customview/FloatNormalView;

    :cond_0
    return-void
.end method
