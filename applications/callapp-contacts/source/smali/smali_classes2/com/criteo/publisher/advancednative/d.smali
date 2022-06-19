.class final Lcom/criteo/publisher/advancednative/d;
.super Lcom/criteo/publisher/advancednative/CriteoMedia;
.source "SourceFile"


# instance fields
.field private final a:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/criteo/publisher/advancednative/CriteoMedia;-><init>()V

    const-string v0, "Null imageUrl"

    .line 15
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/d;->a:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 39
    :cond_0
    instance-of v0, p1, Lcom/criteo/publisher/advancednative/CriteoMedia;

    if-eqz v0, :cond_1

    .line 40
    check-cast p1, Lcom/criteo/publisher/advancednative/CriteoMedia;

    .line 41
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/d;->a:Ljava/net/URL;

    invoke-virtual {p1}, Lcom/criteo/publisher/advancednative/CriteoMedia;->getImageUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final getImageUrl()Ljava/net/URL;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/d;->a:Ljava/net/URL;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/d;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CriteoMedia{imageUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/d;->a:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
