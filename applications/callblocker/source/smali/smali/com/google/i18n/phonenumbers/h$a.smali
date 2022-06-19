.class public Lcom/google/i18n/phonenumbers/h$a;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->b:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->d:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->e:Ljava/util/List;

    .line 119
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->g:Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$a;->i:Z

    .line 148
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->k:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$a;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$a;->a:Z

    .line 85
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/h$a;->b:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public a(Z)Lcom/google/i18n/phonenumbers/h$a;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$a;->h:Z

    .line 142
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/h$a;->i:Z

    .line 143
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$a;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$a;->c:Z

    .line 96
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/h$a;->d:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$a;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$a;->f:Z

    .line 124
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/h$a;->g:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$a;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$a;->j:Z

    .line 155
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/h$a;->k:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4

    .prologue
    .line 180
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/h$a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$a;

    .line 181
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/h$a;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$a;

    .line 182
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 183
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/h$a;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/h$a;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$a;

    .line 189
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/h$a;->d(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$a;

    .line 192
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/h$a;->a(Z)Lcom/google/i18n/phonenumbers/h$a;

    .line 193
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/h$a;->c()I

    move-result v2

    .line 163
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$a;->f:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 169
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$a;->f:Z

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 172
    :cond_1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$a;->j:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 173
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$a;->j:Z

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$a;->k:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 176
    :cond_2
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$a;->i:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 177
    return-void
.end method
