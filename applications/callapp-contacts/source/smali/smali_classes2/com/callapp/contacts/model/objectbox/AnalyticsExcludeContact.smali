.class public Lcom/callapp/contacts/model/objectbox/AnalyticsExcludeContact;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected id:Ljava/lang/Long;

.field private phoneAsGlobal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsExcludeContact;->id:Ljava/lang/Long;

    .line 15
    iput-object p2, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsExcludeContact;->phoneAsGlobal:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsExcludeContact;->phoneAsGlobal:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPhoneAsGlobal()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsExcludeContact;->phoneAsGlobal:Ljava/lang/String;

    return-object v0
.end method

.method public setPhoneAsGlobal(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsExcludeContact;->phoneAsGlobal:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnalyticsExcludeContact{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsExcludeContact;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneAsGlobal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/AnalyticsExcludeContact;->phoneAsGlobal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
