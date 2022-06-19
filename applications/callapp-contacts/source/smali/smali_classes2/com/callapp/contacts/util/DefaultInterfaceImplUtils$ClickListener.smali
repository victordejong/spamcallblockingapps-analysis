.class public abstract Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/DefaultInterfaceImplUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ClickListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    instance-of v2, v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    if-eqz v2, :cond_0

    .line 59
    check-cast v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->isClickValid(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 64
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method
