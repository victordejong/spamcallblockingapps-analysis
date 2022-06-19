.class public Lcom/google/i18n/phonenumbers/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private final a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private c:Lcom/google/i18n/phonenumbers/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/google/i18n/phonenumbers/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/b/d;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b/d;->a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 9

    .line 148
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/d;->c:Lcom/google/i18n/phonenumbers/b/e;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/b/e;->a()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 154
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b/d;->c:Lcom/google/i18n/phonenumbers/b/e;

    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/b/e;->b()Ljava/util/TreeSet;

    move-result-object v2

    .line 155
    :goto_0
    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 156
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 157
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    if-le v5, v6, :cond_1

    .line 159
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v4, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-gt v7, v0, :cond_3

    add-int v4, v7, v0

    ushr-int/lit8 v4, v4, 0x1

    .line 1196
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/b/d;->c:Lcom/google/i18n/phonenumbers/b/e;

    invoke-virtual {v5, v4}, Lcom/google/i18n/phonenumbers/b/e;->a(I)I

    move-result v5

    int-to-long v5, v5

    cmp-long v8, v5, p1

    if-eqz v8, :cond_3

    if-lez v8, :cond_2

    add-int/lit8 v4, v4, -0x1

    move v0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v4, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    if-gez v0, :cond_4

    return-object v1

    .line 165
    :cond_4
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/b/d;->c:Lcom/google/i18n/phonenumbers/b/e;

    invoke-virtual {v4, v0}, Lcom/google/i18n/phonenumbers/b/e;->a(I)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, p1, v4

    if-nez v6, :cond_5

    .line 167
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/b/d;->c:Lcom/google/i18n/phonenumbers/b/e;

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/b/e;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 169
    :cond_5
    invoke-interface {v2, v3}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    goto :goto_0

    :cond_6
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2047
    iget v1, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b/d;->a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 183
    invoke-direct {p0, v0, v1}, Lcom/google/i18n/phonenumbers/b/d;->a(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/google/i18n/phonenumbers/b/b;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b/d;->c:Lcom/google/i18n/phonenumbers/b/e;

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Lcom/google/i18n/phonenumbers/b/a;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b/d;->c:Lcom/google/i18n/phonenumbers/b/e;

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/d;->c:Lcom/google/i18n/phonenumbers/b/e;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/b/e;->a(Ljava/io/ObjectInput;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/d;->c:Lcom/google/i18n/phonenumbers/b/e;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/b/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/d;->c:Lcom/google/i18n/phonenumbers/b/e;

    instance-of v0, v0, Lcom/google/i18n/phonenumbers/b/b;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 135
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/d;->c:Lcom/google/i18n/phonenumbers/b/e;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/b/e;->a(Ljava/io/ObjectOutput;)V

    return-void
.end method
