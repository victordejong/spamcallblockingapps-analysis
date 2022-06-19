.class public Lcom/callapp/contacts/model/objectbox/BlockedRule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleTypeConverter;,
        Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;
    }
.end annotation


# static fields
.field private static final CONTAINS:I = 0x1

.field private static final ENDS_WITH:I = 0x2

.field private static final STARTS_WITH:I


# instance fields
.field private blockRuleType:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

.field private id:J

.field private number:Ljava/lang/String;

.field private rawNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->number:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->number:Ljava/lang/String;

    .line 82
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->id:J

    .line 83
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->rawNumber:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->blockRuleType:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->number:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->rawNumber:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->blockRuleType:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    return-void
.end method


# virtual methods
.method public getBlockRuleType()Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->blockRuleType:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->id:J

    return-wide v0
.end method

.method public getRawNumber()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->rawNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->blockRuleType:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    iget-object v0, v0, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked(Lcom/callapp/framework/phone/Phone;)Z
    .locals 6

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->number:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->rawNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->number:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->blockRuleType:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    iget v0, v0, Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    .line 116
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 114
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 103
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->number:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 107
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v3, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->number:Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/common/util/RegexUtils;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "0"

    .line 111
    invoke-static {v3, v0}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getNationalNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0}, Lcom/callapp/framework/util/StringUtils;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method

.method public setId(J)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->id:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BlockedRule{number=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rawNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->rawNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", blockRuleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/BlockedRule;->blockRuleType:Lcom/callapp/contacts/model/objectbox/BlockedRule$BlockRuleType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
