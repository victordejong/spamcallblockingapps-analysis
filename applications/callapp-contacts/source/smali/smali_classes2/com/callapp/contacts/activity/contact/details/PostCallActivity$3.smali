.class Lcom/callapp/contacts/activity/contact/details/PostCallActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$3;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 179
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 180
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$3;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->finish()V

    return-void
.end method
