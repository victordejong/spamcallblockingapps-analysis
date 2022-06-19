.class Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$6;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$6$1;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$6$1;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$6;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;->e(Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
