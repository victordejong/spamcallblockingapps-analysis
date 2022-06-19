.class Lcom/callapp/contacts/activity/base/BaseSwipeView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseSwipeView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseSwipeView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseSwipeView;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$5;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$5;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f060026

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method
