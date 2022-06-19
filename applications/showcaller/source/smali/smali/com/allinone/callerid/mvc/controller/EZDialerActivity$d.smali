.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$d;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$d;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$d;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->h0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/customview/EZKeyboardView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 2
    sput-boolean p1, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->v:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
