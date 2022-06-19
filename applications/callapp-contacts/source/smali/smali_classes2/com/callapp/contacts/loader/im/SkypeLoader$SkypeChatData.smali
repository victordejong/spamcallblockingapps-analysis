.class public final Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;
.super Lcom/callapp/contacts/model/contact/ChatData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/im/SkypeLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SkypeChatData"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3cbe7d9bf8c5d014L


# instance fields
.field private fullName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/common/model/json/JSONIMaddress;ZJ)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/callapp/contacts/model/contact/ChatData;-><init>(Lcom/callapp/common/model/json/JSONIMaddress;)V

    return-void
.end method


# virtual methods
.method public final fetchPresence()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final getFullName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public final setFullName(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/callapp/contacts/loader/im/SkypeLoader$SkypeChatData;->fullName:Ljava/lang/String;

    return-void
.end method
