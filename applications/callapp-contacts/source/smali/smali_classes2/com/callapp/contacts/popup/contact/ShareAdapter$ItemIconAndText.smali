.class public Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;
.super Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/ShareAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemIconAndText"
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 29
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p1, p0, Lcom/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText;->a:I

    return-void
.end method
