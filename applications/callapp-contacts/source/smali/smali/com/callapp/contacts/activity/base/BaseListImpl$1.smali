.class Lcom/callapp/contacts/activity/base/BaseListImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseListImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseListImpl;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseListImpl;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListImpl$1;->a:Lcom/callapp/contacts/activity/base/BaseListImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListImpl$1;->a:Lcom/callapp/contacts/activity/base/BaseListImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseListImpl;->a(Lcom/callapp/contacts/activity/base/BaseListImpl;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseListImpl$1;->a:Lcom/callapp/contacts/activity/base/BaseListImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/base/BaseListImpl;->a(Lcom/callapp/contacts/activity/base/BaseListImpl;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
