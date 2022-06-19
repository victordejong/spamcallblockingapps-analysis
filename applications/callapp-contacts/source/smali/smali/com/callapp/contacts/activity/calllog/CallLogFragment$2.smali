.class Lcom/callapp/contacts/activity/calllog/CallLogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$2;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$2;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/calllog/CallLogFragment$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment$2$1;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment$2;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method
