.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V
    .locals 0

    .line 1239
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$19;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a07d4

    .line 1246
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1248
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$19;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$2700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    :cond_0
    return-void
.end method
