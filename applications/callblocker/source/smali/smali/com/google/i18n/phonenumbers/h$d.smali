.class public Lcom/google/i18n/phonenumbers/h$d;
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
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->b:Ljava/lang/String;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->c:Ljava/util/List;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->d:Ljava/util/List;

    .line 285
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->f:Ljava/lang/String;

    .line 198
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$d;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$d;->a:Z

    .line 238
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/h$d;->b:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$d;
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$d;->e:Z

    .line 290
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/h$d;->f:Ljava/lang/String;

    .line 291
    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/h$d;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$d;

    .line 335
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    move v1, v0

    .line 336
    :goto_0
    if-ge v1, v2, :cond_1

    .line 337
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h$d;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 341
    :goto_1
    if-ge v0, v1, :cond_2

    .line 342
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/h$d;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/h$d;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/h$d;

    .line 348
    :cond_3
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$d;->a:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 308
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$d;->a:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/h$d;->c()I

    move-result v3

    .line 313
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    move v2, v1

    .line 314
    :goto_0
    if-ge v2, v3, :cond_1

    .line 315
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 314
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/h$d;->e()I

    move-result v2

    .line 319
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 320
    :goto_1
    if-ge v1, v2, :cond_2

    .line 321
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 320
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 324
    :cond_2
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$d;->e:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 325
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/h$d;->e:Z

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$d;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 328
    :cond_3
    return-void
.end method
