.class Lcom/allinone/callerid/util/recorder/f$a;
.super Ljava/lang/Object;
.source "RecorderUtils.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/f;->v(Landroid/app/Activity;Lcom/allinone/callerid/i/a/d;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/f$a;->a:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/allinone/callerid/util/recorder/f$a;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/allinone/callerid/util/recorder/f$a;->c:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/16 p1, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/util/recorder/f$a;->a:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/util/recorder/f$a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/util/recorder/f$a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/util/recorder/f$a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/util/recorder/f$a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/allinone/callerid/util/recorder/f$a;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/util/recorder/f$a;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
