.class Landroidx/appcompat/widget/ac$1;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ac;->i()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ac;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ac;)V
    .locals 0

    .prologue
    .line 1168
    iput-object p1, p0, Landroidx/appcompat/widget/ac$1;->a:Landroidx/appcompat/widget/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Landroidx/appcompat/widget/ac$1;->a:Landroidx/appcompat/widget/ac;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ac;->k()Landroid/view/View;

    move-result-object v0

    .line 1173
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Landroidx/appcompat/widget/ac$1;->a:Landroidx/appcompat/widget/ac;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ac;->a_()V

    .line 1176
    :cond_0
    return-void
.end method
