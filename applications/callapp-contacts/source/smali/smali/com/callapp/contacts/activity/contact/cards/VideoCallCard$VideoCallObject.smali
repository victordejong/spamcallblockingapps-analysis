.class public Lcom/callapp/contacts/activity/contact/cards/VideoCallCard$VideoCallObject;
.super Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/VideoCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoCallObject"
.end annotation


# direct methods
.method private constructor <init>(Lit/gmariotti/cardslib/library/a/b;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
