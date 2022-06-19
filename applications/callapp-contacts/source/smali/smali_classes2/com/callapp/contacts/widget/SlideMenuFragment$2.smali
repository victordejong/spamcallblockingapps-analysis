.class Lcom/callapp/contacts/widget/SlideMenuFragment$2;
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
        "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SlideMenuFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SlideMenuFragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuFragment$2;->a:Lcom/callapp/contacts/widget/SlideMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1083
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hB:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    .line 1085
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hB:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hB:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1086
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuFragment$2;->a:Lcom/callapp/contacts/widget/SlideMenuFragment;

    const/16 v1, 0xe

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/widget/SlideMenuFragment;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
