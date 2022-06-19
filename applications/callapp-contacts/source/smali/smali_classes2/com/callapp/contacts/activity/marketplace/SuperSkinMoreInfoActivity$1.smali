.class Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/SuperSkinMoreInfoActivity;->onBackPressed()V

    return-void
.end method
