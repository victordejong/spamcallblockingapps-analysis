.class public Lcom/telguarder/features/numberLookup/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public place:Ljava/lang/String;

.field public street:Ljava/lang/String;

.field public zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildAddressWithSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/telguarder/features/numberLookup/Address;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Address;->getFirstPart()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Address;->getSecondPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isEmpty()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Address;->street:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Address;->zip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Address;->place:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public asTwoLines()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Address;->getTwoLinesSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/numberLookup/Address;->buildAddressWithSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstPart()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Address;->street:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSecondPart()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Address;->zip:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/Address;->place:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/Address;->zip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/Address;->place:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSingleLineSeparator()Ljava/lang/String;
    .locals 1

    const-string v0, ", "

    return-object v0
.end method

.method public getTwoLinesSeparator()Ljava/lang/String;
    .locals 1

    const-string v0, "\n"

    return-object v0
.end method

.method public singleLine()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Address;->getSingleLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/numberLookup/Address;->buildAddressWithSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/telguarder/features/numberLookup/Address;->singleLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
