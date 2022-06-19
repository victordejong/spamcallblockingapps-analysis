.class public final Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;
.super Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TitleImageObject"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;",
        "parentCard",
        "Lit/gmariotti/cardslib/library/internal/Card;",
        "(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;Lit/gmariotti/cardslib/library/internal/Card;)V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;Lit/gmariotti/cardslib/library/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/gmariotti/cardslib/library/a/b;",
            ")V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 63
    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
