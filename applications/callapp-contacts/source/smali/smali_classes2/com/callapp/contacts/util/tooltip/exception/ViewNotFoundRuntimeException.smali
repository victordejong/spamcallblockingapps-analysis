.class public Lcom/callapp/contacts/util/tooltip/exception/ViewNotFoundRuntimeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "View not found for this resource id. Are you sure it exists?"

    .line 11
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
