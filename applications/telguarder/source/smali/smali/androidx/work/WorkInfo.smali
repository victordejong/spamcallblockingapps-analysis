.class public final Landroidx/work/WorkInfo;
.super Ljava/lang/Object;
.source "WorkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkInfo$State;
    }
.end annotation


# instance fields
.field private mId:Ljava/util/UUID;

.field private mOutputData:Landroidx/work/Data;

.field private mRunAttemptCount:I

.field private mState:Landroidx/work/WorkInfo$State;

.field private mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Landroidx/work/Data;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/WorkInfo$State;",
            "Landroidx/work/Data;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    .line 53
    iput-object p2, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    .line 54
    iput-object p3, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    .line 55
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    .line 56
    iput p5, p0, Landroidx/work/WorkInfo;->mRunAttemptCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    check-cast p1, Landroidx/work/WorkInfo;

    .line 114
    iget v1, p0, Landroidx/work/WorkInfo;->mRunAttemptCount:I

    iget v2, p1, Landroidx/work/WorkInfo;->mRunAttemptCount:I

    if-eq v1, v2, :cond_2

    return v0

    .line 115
    :cond_2
    iget-object v1, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    iget-object v2, p1, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 116
    :cond_3
    iget-object v1, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    iget-object v2, p1, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    if-eq v1, v2, :cond_4

    return v0

    .line 117
    :cond_4
    iget-object v1, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    iget-object v2, p1, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v1, v2}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 118
    :cond_5
    iget-object v0, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    iget-object p1, p1, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public getOutputData()Landroidx/work/Data;
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    return-object v0
.end method

.method public getRunAttemptCount()I
    .locals 1

    .line 104
    iget v0, p0, Landroidx/work/WorkInfo;->mRunAttemptCount:I

    return v0
.end method

.method public getState()Landroidx/work/WorkInfo$State;
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 123
    iget-object v0, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-object v1, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Landroidx/work/WorkInfo$State;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget-object v1, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v1}, Landroidx/work/Data;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-object v1, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget v1, p0, Landroidx/work/WorkInfo;->mRunAttemptCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkInfo{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOutputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
