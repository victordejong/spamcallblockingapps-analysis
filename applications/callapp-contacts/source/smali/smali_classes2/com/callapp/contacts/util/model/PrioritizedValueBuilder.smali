.class public Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback;,
        Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;
    }
.end annotation

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

.field private oldValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected priority:J

.field protected sure:Z

.field protected final validator:Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected valueIsForced:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator<",
            "TT;>;TT;TT;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 23
    iput-wide v0, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->priority:J

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->valueIsForced:Z

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    .line 50
    iput-object p2, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->validator:Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;

    .line 51
    iput-object p3, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->oldValue:Ljava/lang/Object;

    .line 52
    iput-object p4, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "TT;TT;)V"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$1;

    invoke-direct {v0}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$1;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;Z)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder<",
            "TT;>;"
        }
    .end annotation

    if-nez p3, :cond_0

    return-object p0

    .line 117
    :cond_0
    invoke-static {p3, p1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;Z)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object p1

    return-object p1
.end method

.method private useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;Z)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isOnlySure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->valueIsForced:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->validator:Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$Validator;->isValid(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 81
    iget-boolean v3, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->sure:Z

    if-nez v3, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 83
    :cond_1
    iget-boolean v3, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->sure:Z

    if-ne v0, v3, :cond_2

    .line 84
    invoke-static {p2, p3}, Lcom/callapp/contacts/util/model/PriorityManager;->getPriority(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)J

    move-result-wide v3

    .line 85
    iget-wide v5, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->priority:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 90
    iput-object p1, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->value:Ljava/lang/Object;

    .line 91
    iput-object p2, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    .line 92
    iget-object p1, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->sure:Z

    .line 93
    invoke-static {p2, p3}, Lcom/callapp/contacts/util/model/PriorityManager;->getPriority(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->priority:J

    if-eqz p4, :cond_3

    .line 95
    iput-boolean v2, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->valueIsForced:Z

    :cond_3
    return-object p0
.end method


# virtual methods
.method public execute(Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->oldValue:Ljava/lang/Object;

    iget-object v1, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->value:Ljava/lang/Object;

    .line 1039
    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->value:Ljava/lang/Object;

    iget-object v1, p0, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->dataSource:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder$ValueChangedCallback;->valueChanged(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)V

    :cond_0
    return-void
.end method

.method public useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;Z)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useFieldForced(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 105
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useField(Ljava/lang/String;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;Z)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            ")",
            "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, v0}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object p1

    return-object p1
.end method

.method public useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/callapp/contacts/model/contact/DataSource;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/callapp/contacts/util/model/PrioritizedValueBuilder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;->useValue(Ljava/lang/Object;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/Object;Z)Lcom/callapp/contacts/util/model/PrioritizedValueBuilder;

    move-result-object p1

    return-object p1
.end method
