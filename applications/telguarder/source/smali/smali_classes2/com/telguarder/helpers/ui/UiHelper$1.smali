.class final Lcom/telguarder/helpers/ui/UiHelper$1;
.super Ljava/lang/Object;
.source "UiHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/UiHelper;->setCircularActivityTransition(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$rootLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/telguarder/helpers/ui/UiHelper$1;->val$rootLayout:Landroid/view/View;

    iput-object p2, p0, Lcom/telguarder/helpers/ui/UiHelper$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/telguarder/helpers/ui/UiHelper$1;->val$rootLayout:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/telguarder/helpers/ui/UiHelper$1;->val$intent:Landroid/content/Intent;

    const-string v3, "CIRCULAR_REVEAL_X"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/telguarder/helpers/ui/UiHelper$1;->val$intent:Landroid/content/Intent;

    const-string v3, "CIRCULAR_REVEAL_Y"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->access$000(Landroid/view/View;[I)V

    .line 210
    iget-object v0, p0, Lcom/telguarder/helpers/ui/UiHelper$1;->val$rootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
