.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->access$100(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 269
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$4;->a:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->snapToPositionByOrientation()V

    return-void
.end method
