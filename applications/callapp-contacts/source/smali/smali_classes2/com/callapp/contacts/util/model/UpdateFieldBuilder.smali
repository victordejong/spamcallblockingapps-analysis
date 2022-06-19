.class public Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final contact:Lcom/callapp/contacts/model/contact/ContactData;

.field protected dataSource:Lcom/callapp/contacts/model/contact/DataSource;

.field protected final field:Lcom/callapp/contacts/model/contact/ContactField;

.field protected final fieldName:Ljava/lang/String;

.field protected priority:J

.field protected sure:Z

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected valueIsForced:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 18
    iput-wide v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->priority:J

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->valueIsForced:Z

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 24
    iput-object p2, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->field:Lcom/callapp/contacts/model/contact/ContactField;

    .line 25
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->fieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public defaultValue(Ljava/lang/Object;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 116
    iput-object p1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->value:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public execute()Z
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->execute(Z)Z

    move-result v0

    return v0
.end method

.method public execute(Z)Z
    .locals 8

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->fieldName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->isValueChangedAndCanBeUse(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 149
    :cond_0
    const-class v3, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 150
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->fieldName:Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v7, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->field:Lcom/callapp/contacts/model/contact/ContactField;

    .line 151
    invoke-virtual {v6, v7}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Updating %s.%s from data source: %s (old data source: %s)"

    .line 150
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 149
    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v3, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->value:Ljava/lang/Object;

    iget-object v4, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {p0, v3, v4}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->setValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 153
    iget-object v3, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v4, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->fieldName:Ljava/lang/String;

    iget-object v5, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->value:Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    iget-object v3, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v4, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->field:Lcom/callapp/contacts/model/contact/ContactField;

    iget-object v5, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/model/contact/ContactData;->setDataSource(Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)V

    .line 155
    iget-object v3, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v4, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->field:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method protected getDataSourcePriority(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ")J"
        }
    .end annotation

    .line 47
    invoke-static {p3, p2}, Lcom/callapp/contacts/util/model/PriorityManager;->getPriority(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected isFieldValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 122
    invoke-static {p1, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isValueChangedAndCanBeUse(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->isFieldValueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isValueSure()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->sure:Z

    return v0
.end method

.method public setValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ")V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->value:Ljava/lang/Object;

    .line 135
    iput-object p2, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 136
    iget-object p1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->sure:Z

    return-void
.end method

.method public useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ")",
            "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 29
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactField;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useField(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ")",
            "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->fieldName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useField(Ljava/lang/Object;Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ")",
            "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 39
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 40
    invoke-virtual {p0, p2, p1, p3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ")",
            "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, p2, v0}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Z)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useFieldForced(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Z)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            "Z)",
            "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 98
    iget-boolean v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->valueIsForced:Z

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->fieldName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iput-object v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->value:Ljava/lang/Object;

    .line 102
    iput-object p2, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 103
    iget-object v1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->sure:Z

    .line 104
    invoke-virtual {p0, v0, p1, p2}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->getDataSourcePriority(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->priority:J

    .line 106
    iget-boolean p1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->sure:Z

    if-nez p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->valueIsForced:Z

    :cond_1
    return-object p0
.end method

.method public useValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/UpdateFieldBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ")",
            "Lcom/callapp/contacts/util/model/UpdateFieldBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isOnlySure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_4

    .line 67
    iget-boolean v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->valueIsForced:Z

    if-nez v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 69
    iget-boolean v3, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->sure:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    iget-boolean v3, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->sure:Z

    if-ne v0, v3, :cond_3

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->getDataSourcePriority(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)J

    move-result-wide v3

    .line 73
    iget-wide v5, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->priority:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :cond_3
    if-eqz v2, :cond_4

    .line 77
    iput-object p1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->value:Ljava/lang/Object;

    .line 78
    iput-object p3, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->sure:Z

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->getDataSourcePriority(Ljava/lang/Object;Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/callapp/contacts/util/model/UpdateFieldBuilder;->priority:J

    :cond_4
    return-object p0
.end method
