.class public Lcom/google/i18n/phonenumbers/i$a;
.super Ljava/lang/Object;
.source "Phonenumber.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/i$a$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:J

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/google/i18n/phonenumbers/i$a$a;

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v2, p0, Lcom/google/i18n/phonenumbers/i$a;->b:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/i18n/phonenumbers/i$a;->d:J

    .line 77
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->f:Ljava/lang/String;

    .line 96
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/i$a;->h:Z

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/i18n/phonenumbers/i$a;->j:I

    .line 128
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->l:Ljava/lang/String;

    .line 166
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->p:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/google/i18n/phonenumbers/i$a$a;->e:Lcom/google/i18n/phonenumbers/i$a$a;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->n:Lcom/google/i18n/phonenumbers/i$a$a;

    .line 41
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/i18n/phonenumbers/i$a;->b:I

    return v0
.end method

.method public a(I)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->a:Z

    .line 50
    iput p1, p0, Lcom/google/i18n/phonenumbers/i$a;->b:I

    .line 51
    return-object p0
.end method

.method public a(J)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->c:Z

    .line 66
    iput-wide p1, p0, Lcom/google/i18n/phonenumbers/i$a;->d:J

    .line 67
    return-object p0
.end method

.method public a(Lcom/google/i18n/phonenumbers/i$a$a;)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 154
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->m:Z

    .line 155
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$a;->n:Lcom/google/i18n/phonenumbers/i$a$a;

    .line 156
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 84
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->e:Z

    .line 85
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$a;->f:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public a(Z)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->g:Z

    .line 101
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/i$a;->h:Z

    .line 102
    return-object p0
.end method

.method public a(Lcom/google/i18n/phonenumbers/i$a;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    if-nez p1, :cond_1

    move v0, v1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    if-eq p0, p1, :cond_0

    .line 230
    iget v2, p0, Lcom/google/i18n/phonenumbers/i$a;->b:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/i$a;->b:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/i18n/phonenumbers/i$a;->d:J

    iget-wide v4, p1, Lcom/google/i18n/phonenumbers/i$a;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i$a;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/i$a;->f:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/i$a;->h:Z

    iget-boolean v3, p1, Lcom/google/i18n/phonenumbers/i$a;->h:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/i18n/phonenumbers/i$a;->j:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/i$a;->j:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i$a;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/i$a;->l:Ljava/lang/String;

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i$a;->n:Lcom/google/i18n/phonenumbers/i$a$a;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/i$a;->n:Lcom/google/i18n/phonenumbers/i$a$a;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i$a;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/i$a;->p:Ljava/lang/String;

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->n()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/i$a;->n()Z

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/i18n/phonenumbers/i$a;->d:J

    return-wide v0
.end method

.method public b(I)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->i:Z

    .line 117
    iput p1, p0, Lcom/google/i18n/phonenumbers/i$a;->j:I

    .line 118
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 135
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->k:Z

    .line 136
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$a;->l:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 173
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->o:Z

    .line 174
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/i$a;->p:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->e:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->g:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 240
    instance-of v0, p1, Lcom/google/i18n/phonenumbers/i$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/i18n/phonenumbers/i$a;

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/i$a;->a(Lcom/google/i18n/phonenumbers/i$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->h:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->i:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/google/i18n/phonenumbers/i$a;->j:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->a()I

    move-result v0

    add-int/lit16 v0, v0, 0x87d

    .line 251
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 252
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 253
    mul-int/lit8 v3, v0, 0x35

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 254
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->h()I

    move-result v3

    add-int/2addr v0, v3

    .line 255
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 256
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->l()Lcom/google/i18n/phonenumbers/i$a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/i$a$a;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 257
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 258
    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 259
    return v0

    :cond_0
    move v0, v2

    .line 253
    goto :goto_0

    :cond_1
    move v1, v2

    .line 258
    goto :goto_1
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->k:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->m:Z

    return v0
.end method

.method public l()Lcom/google/i18n/phonenumbers/i$a$a;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->n:Lcom/google/i18n/phonenumbers/i$a$a;

    return-object v0
.end method

.method public m()Lcom/google/i18n/phonenumbers/i$a;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->m:Z

    .line 160
    sget-object v0, Lcom/google/i18n/phonenumbers/i$a$a;->e:Lcom/google/i18n/phonenumbers/i$a$a;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->n:Lcom/google/i18n/phonenumbers/i$a$a;

    .line 161
    return-object p0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/i$a;->o:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/i$a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    const-string/jumbo v1, "Country Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/i18n/phonenumbers/i$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    const-string/jumbo v1, " National Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/i18n/phonenumbers/i$a;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const-string/jumbo v1, " Leading Zero(s): true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    const-string/jumbo v1, " Number of leading zeros: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/i18n/phonenumbers/i$a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    const-string/jumbo v1, " Extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    const-string/jumbo v1, " Country Code Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i$a;->n:Lcom/google/i18n/phonenumbers/i$a$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    :cond_3
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/i$a;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 280
    const-string/jumbo v1, " Preferred Domestic Carrier Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/i$a;->p:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
