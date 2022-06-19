.class public Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/api/helper/common/LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultLoginListener"
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    return-void
.end method
