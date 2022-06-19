.class public abstract Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SocialCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getCacheKey()Ljava/lang/String;
.end method

.method public abstract getCacheTtl()I
.end method

.method public getRefreshInterval()I
    .locals 1

    .line 655
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;->getCacheTtl()I

    move-result v0

    return v0
.end method
