.class Lcom/allinone/callerid/g/c$i;
.super Ljava/lang/Object;
.source "EZCallPhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/c;->R2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/c$i;->d:Lcom/allinone/callerid/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/c$i;->d:Lcom/allinone/callerid/g/c;

    invoke-static {p1}, Lcom/allinone/callerid/g/c;->r2(Lcom/allinone/callerid/g/c;)Lcom/allinone/callerid/customview/BaseEditText;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
