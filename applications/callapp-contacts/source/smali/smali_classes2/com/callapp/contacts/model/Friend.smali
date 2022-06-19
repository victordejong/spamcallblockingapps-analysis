.class public Lcom/callapp/contacts/model/Friend;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bio:Ljava/lang/String;

.field public final fullName:Ljava/lang/String;

.field public final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/callapp/contacts/model/Friend;->fullName:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/callapp/contacts/model/Friend;->bio:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 28
    :cond_1
    instance-of v2, p1, Lcom/callapp/contacts/model/Friend;

    if-nez v2, :cond_2

    return v1

    .line 30
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/Friend;

    .line 31
    iget-object v2, p0, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 32
    iget-object p1, p1, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    .line 34
    :cond_3
    iget-object p1, p1, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method
