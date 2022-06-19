.class public final Lcom/callapp/contacts/api/helper/gmail/GmailManager$CallAppGoogleHttpRequestInitializer;
.super Lcom/google/api/client/auth/oauth2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/gmail/GmailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallAppGoogleHttpRequestInitializer"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/client/auth/oauth2/b$a;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/google/api/client/auth/oauth2/b;-><init>(Lcom/google/api/client/auth/oauth2/b$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/b;->a(Lcom/google/api/client/http/q;)V

    const/4 v0, 0x1

    .line 2035
    invoke-static {v0}, Lcom/google/common/base/m;->a(Z)V

    const/16 v1, 0x2710

    .line 1442
    iput v1, p1, Lcom/google/api/client/http/q;->k:I

    .line 3035
    invoke-static {v0}, Lcom/google/common/base/m;->a(Z)V

    .line 2466
    iput v1, p1, Lcom/google/api/client/http/q;->l:I

    return-void
.end method
