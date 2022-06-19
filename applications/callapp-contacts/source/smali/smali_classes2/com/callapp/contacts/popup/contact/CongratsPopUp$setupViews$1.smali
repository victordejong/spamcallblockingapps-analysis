.class public final Lcom/callapp/contacts/popup/contact/CongratsPopUp$setupViews$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/CongratsPopUp;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/callapp/contacts/popup/contact/CongratsPopUp$setupViews$1",
        "Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;",
        "onViewClicked",
        "",
        "v",
        "Landroid/view/View;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/CongratsPopUp;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/CongratsPopUp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/CongratsPopUp$setupViews$1;->a:Lcom/callapp/contacts/popup/contact/CongratsPopUp;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/CongratsPopUp$setupViews$1;->a:Lcom/callapp/contacts/popup/contact/CongratsPopUp;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/CongratsPopUp;->getRightButtonClick()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/CongratsPopUp$setupViews$1;->a:Lcom/callapp/contacts/popup/contact/CongratsPopUp;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/CongratsPopUp;->dismiss()V

    return-void
.end method
