.class Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->goToMutualFriendsActivity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/callapp/contacts/model/PersonData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 127
    check-cast p1, Lcom/callapp/contacts/model/PersonData;

    check-cast p2, Lcom/callapp/contacts/model/PersonData;

    .line 1130
    invoke-virtual {p1}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
