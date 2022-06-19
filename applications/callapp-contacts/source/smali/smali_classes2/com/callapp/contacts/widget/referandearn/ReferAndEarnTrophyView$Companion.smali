.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;",
        "",
        "()V",
        "EXTRA_TROPHY_VIEW",
        "",
        "newInstance",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;",
        "trophyViewType",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;",
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

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;
    .locals 3

    const-string v0, "trophyViewType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;-><init>()V

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;->name()Ljava/lang/String;

    move-result-object p0

    const-string v2, "extra_trophy_view"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    .line 66
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
