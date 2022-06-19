.class public final Lcom/callapp/contacts/loader/im/YahooLoader$YahooChatData;
.super Lcom/callapp/contacts/model/contact/ChatData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/im/YahooLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "YahooChatData"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe2c8596af9a83f1L


# direct methods
.method public constructor <init>(Lcom/callapp/common/model/json/JSONIMaddress;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/callapp/contacts/model/contact/ChatData;-><init>(Lcom/callapp/common/model/json/JSONIMaddress;)V

    return-void
.end method


# virtual methods
.method public final fetchPresence()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
