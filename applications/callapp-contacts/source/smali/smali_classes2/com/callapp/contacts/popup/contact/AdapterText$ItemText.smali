.class public Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/AdapterText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemText"
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;->b:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;->c:I

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;->b:Ljava/lang/String;

    return-object v0
.end method
