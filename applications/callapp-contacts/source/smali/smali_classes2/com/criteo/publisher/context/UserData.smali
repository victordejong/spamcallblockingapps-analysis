.class public Lcom/criteo/publisher/context/UserData;
.super Lcom/criteo/publisher/context/AbstractContextData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/criteo/publisher/context/AbstractContextData<",
        "Lcom/criteo/publisher/context/UserData;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEV_USER_ID:Ljava/lang/String; = "data.devUserId"

.field public static final HASHED_EMAIL:Ljava/lang/String; = "data.hashedEmail"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/criteo/publisher/context/AbstractContextData;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 75
    instance-of v0, p1, Lcom/criteo/publisher/context/UserData;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/criteo/publisher/context/AbstractContextData;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
