.class final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$onCreateView$2;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$onCreateView$2;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;Ljava/lang/String;)V

    return-void
.end method
