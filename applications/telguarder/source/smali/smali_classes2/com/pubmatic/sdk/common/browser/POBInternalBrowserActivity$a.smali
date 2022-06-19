.class Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;->b()Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$a;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity$a;->a:Lcom/pubmatic/sdk/common/browser/POBInternalBrowserActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
