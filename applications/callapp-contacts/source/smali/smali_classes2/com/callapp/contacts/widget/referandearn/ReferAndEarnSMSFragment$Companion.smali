.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;",
        "contactData",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;
    .locals 3

    .line 59
    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    check-cast p0, Ljava/io/Serializable;

    const-string v2, "extra_contact_data"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 62
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 60
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
