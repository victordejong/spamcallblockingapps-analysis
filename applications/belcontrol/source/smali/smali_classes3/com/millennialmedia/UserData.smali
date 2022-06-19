.class public Lcom/millennialmedia/UserData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/UserData$Politics;,
        Lcom/millennialmedia/UserData$Marital;,
        Lcom/millennialmedia/UserData$Gender;,
        Lcom/millennialmedia/UserData$Ethnicity;,
        Lcom/millennialmedia/UserData$Education;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.millennialmedia.UserData"


# instance fields
.field private age:Ljava/lang/Integer;

.field private children:Ljava/lang/Integer;

.field private country:Ljava/lang/String;

.field private dma:Ljava/lang/String;

.field private dob:Ljava/util/Date;

.field private education:Ljava/lang/String;

.field private ethnicity:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private income:Ljava/lang/Integer;

.field private keywords:Ljava/lang/String;

.field private marital:Ljava/lang/String;

.field private politics:Ljava/lang/String;

.field private postalCode:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->age:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChildren()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->children:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDma()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->dma:Ljava/lang/String;

    return-object v0
.end method

.method public getDob()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->dob:Ljava/util/Date;

    return-object v0
.end method

.method public getEducation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->education:Ljava/lang/String;

    return-object v0
.end method

.method public getEthnicity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->ethnicity:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getIncome()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->income:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getMarital()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->marital:Ljava/lang/String;

    return-object v0
.end method

.method public getPolitics()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->politics:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/UserData;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(I)Lcom/millennialmedia/UserData;
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x96

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/UserData;->age:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/millennialmedia/UserData;->TAG:Ljava/lang/String;

    const-string v0, "Age must be at least 0 and no greater than 150"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public setChildren(I)Lcom/millennialmedia/UserData;
    .locals 1

    if-gez p1, :cond_0

    sget-object p1, Lcom/millennialmedia/UserData;->TAG:Ljava/lang/String;

    const-string v0, "Number of children must be greater than or equal to zero"

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/UserData;->children:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/millennialmedia/UserData;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/UserData;->country:Ljava/lang/String;

    return-object p0
.end method

.method public setDma(Ljava/lang/String;)Lcom/millennialmedia/UserData;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/UserData;->dma:Ljava/lang/String;

    return-object p0
.end method

.method public setDob(Ljava/util/Date;)Lcom/millennialmedia/UserData;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/UserData;->dob:Ljava/util/Date;

    return-object p0
.end method

.method public setEducation(Lcom/millennialmedia/UserData$Education;)Lcom/millennialmedia/UserData;
    .locals 0

    iget-object p1, p1, Lcom/millennialmedia/UserData$Education;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/millennialmedia/UserData;->education:Ljava/lang/String;

    return-object p0
.end method

.method public setEthnicity(Lcom/millennialmedia/UserData$Ethnicity;)Lcom/millennialmedia/UserData;
    .locals 0

    iget-object p1, p1, Lcom/millennialmedia/UserData$Ethnicity;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/millennialmedia/UserData;->ethnicity:Ljava/lang/String;

    return-object p0
.end method

.method public setGender(Lcom/millennialmedia/UserData$Gender;)Lcom/millennialmedia/UserData;
    .locals 0

    iget-object p1, p1, Lcom/millennialmedia/UserData$Gender;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/millennialmedia/UserData;->gender:Ljava/lang/String;

    return-object p0
.end method

.method public setIncome(I)Lcom/millennialmedia/UserData;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/millennialmedia/UserData;->income:Ljava/lang/Integer;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/millennialmedia/UserData;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/UserData;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public setMarital(Lcom/millennialmedia/UserData$Marital;)Lcom/millennialmedia/UserData;
    .locals 0

    iget-object p1, p1, Lcom/millennialmedia/UserData$Marital;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/millennialmedia/UserData;->marital:Ljava/lang/String;

    return-object p0
.end method

.method public setPolitics(Lcom/millennialmedia/UserData$Politics;)Lcom/millennialmedia/UserData;
    .locals 0

    iget-object p1, p1, Lcom/millennialmedia/UserData$Politics;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/millennialmedia/UserData;->politics:Ljava/lang/String;

    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lcom/millennialmedia/UserData;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/UserData;->postalCode:Ljava/lang/String;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/millennialmedia/UserData;
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/UserData;->state:Ljava/lang/String;

    return-object p0
.end method
