.class Lcom/callapp/contacts/widget/SlideMenuFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/SlideMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Ljava/util/List<",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SlideMenuFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SlideMenuFragment;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuFragment$1;->a:Lcom/callapp/contacts/widget/SlideMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1073
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ht:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    .line 1074
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuFragment$1;->a:Lcom/callapp/contacts/widget/SlideMenuFragment;

    const/16 v0, 0xb

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ht:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/widget/SlideMenuFragment;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
