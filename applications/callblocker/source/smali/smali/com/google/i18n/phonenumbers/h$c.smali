.class public Lcom/google/i18n/phonenumbers/h$c;
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
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/i18n/phonenumbers/h$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/h$c;->a:Ljava/util/List;

    .line 1122
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/i18n/phonenumbers/h$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$c;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4

    .prologue
    .line 1163
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 1164
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1165
    new-instance v2, Lcom/google/i18n/phonenumbers/h$b;

    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/h$b;-><init>()V

    .line 1166
    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/h$b;->readExternal(Ljava/io/ObjectInput;)V

    .line 1167
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/h$c;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1169
    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3

    .prologue
    .line 1155
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/h$c;->b()I

    move-result v2

    .line 1156
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1157
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h$c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/h$b;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/h$b;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1160
    :cond_0
    return-void
.end method
