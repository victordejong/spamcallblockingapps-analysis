.class public Lcom/google/i18n/phonenumbers/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/k$a$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:Z

.field public d:Ljava/lang/String;

.field e:Z

.field f:I

.field g:Z

.field h:Ljava/lang/String;

.field i:Z

.field j:Lcom/google/i18n/phonenumbers/k$a$a;

.field k:Z

.field l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/i18n/phonenumbers/k$a;->a:I

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lcom/google/i18n/phonenumbers/k$a;->b:J

    const-string v1, ""

    .line 77
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 96
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/k$a;->e:Z

    const/4 v0, 0x1

    .line 112
    iput v0, p0, Lcom/google/i18n/phonenumbers/k$a;->f:I

    .line 128
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->l:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/google/i18n/phonenumbers/k$a$a;->UNSPECIFIED:Lcom/google/i18n/phonenumbers/k$a$a;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/k$a;->c:Z

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final a(I)Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/k$a;->m:Z

    .line 50
    iput p1, p0, Lcom/google/i18n/phonenumbers/k$a;->a:I

    return-object p0
.end method

.method public final a(J)Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/k$a;->n:Z

    .line 66
    iput-wide p1, p0, Lcom/google/i18n/phonenumbers/k$a;->b:J

    return-object p0
.end method

.method public final a(Lcom/google/i18n/phonenumbers/k$a$a;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    .line 152
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/k$a;->i:Z

    .line 155
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    return-object p0
.end method

.method public final a(Lcom/google/i18n/phonenumbers/k$a;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 2

    .line 1046
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->m:Z

    if-eqz v0, :cond_0

    .line 1047
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    .line 197
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/k$a;->a(I)Lcom/google/i18n/phonenumbers/k$a;

    .line 1062
    :cond_0
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->n:Z

    if-eqz v0, :cond_1

    .line 1063
    iget-wide v0, p1, Lcom/google/i18n/phonenumbers/k$a;->b:J

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/google/i18n/phonenumbers/k$a;->a(J)Lcom/google/i18n/phonenumbers/k$a;

    .line 1078
    :cond_1
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->c:Z

    if-eqz v0, :cond_2

    .line 1079
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 203
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/k$a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    .line 1097
    :cond_2
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->o:Z

    if-eqz v0, :cond_3

    .line 1098
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->e:Z

    .line 206
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/k$a;->a(Z)Lcom/google/i18n/phonenumbers/k$a;

    .line 1113
    :cond_3
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->p:Z

    if-eqz v0, :cond_4

    .line 1114
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->f:I

    .line 209
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/k$a;->b(I)Lcom/google/i18n/phonenumbers/k$a;

    .line 1129
    :cond_4
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->g:Z

    if-eqz v0, :cond_5

    .line 1130
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    .line 212
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/k$a;->b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    .line 1148
    :cond_5
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->i:Z

    if-eqz v0, :cond_6

    .line 1149
    iget-object v0, p1, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    .line 215
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/k$a;->a(Lcom/google/i18n/phonenumbers/k$a$a;)Lcom/google/i18n/phonenumbers/k$a;

    .line 1167
    :cond_6
    iget-boolean v0, p1, Lcom/google/i18n/phonenumbers/k$a;->k:Z

    if-eqz v0, :cond_7

    .line 1168
    iget-object p1, p1, Lcom/google/i18n/phonenumbers/k$a;->l:Ljava/lang/String;

    .line 218
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/k$a;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    :cond_7
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    .line 82
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/k$a;->c:Z

    .line 85
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/k$a;->o:Z

    .line 101
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/k$a;->e:Z

    return-object p0
.end method

.method public final b()Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/k$a;->i:Z

    .line 160
    sget-object v0, Lcom/google/i18n/phonenumbers/k$a$a;->UNSPECIFIED:Lcom/google/i18n/phonenumbers/k$a$a;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    return-object p0
.end method

.method public final b(I)Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/k$a;->p:Z

    .line 117
    iput p1, p0, Lcom/google/i18n/phonenumbers/k$a;->f:I

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/k$a;->g:Z

    .line 136
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Lcom/google/i18n/phonenumbers/k$a;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 230
    :cond_1
    iget v2, p0, Lcom/google/i18n/phonenumbers/k$a;->a:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/i18n/phonenumbers/k$a;->b:J

    iget-wide v4, p1, Lcom/google/i18n/phonenumbers/k$a;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/k$a;->e:Z

    iget-boolean v3, p1, Lcom/google/i18n/phonenumbers/k$a;->e:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/i18n/phonenumbers/k$a;->f:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/k$a;->f:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/k$a;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/k$a;->l:Ljava/lang/String;

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2167
    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/k$a;->k:Z

    .line 3167
    iget-boolean p1, p1, Lcom/google/i18n/phonenumbers/k$a;->k:Z

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;
    .locals 1

    .line 171
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/k$a;->k:Z

    .line 174
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/k$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 240
    instance-of v0, p1, Lcom/google/i18n/phonenumbers/k$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/i18n/phonenumbers/k$a;

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/k$a;->b(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 4047
    iget v0, p0, Lcom/google/i18n/phonenumbers/k$a;->a:I

    add-int/lit16 v0, v0, 0x87d

    mul-int/lit8 v0, v0, 0x35

    .line 4063
    iget-wide v1, p0, Lcom/google/i18n/phonenumbers/k$a;->b:J

    .line 251
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 4079
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    .line 252
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 4098
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/k$a;->e:Z

    const/16 v2, 0x4cf

    const/16 v3, 0x4d5

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 4114
    iget v1, p0, Lcom/google/i18n/phonenumbers/k$a;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 4130
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->h:Ljava/lang/String;

    .line 255
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 4149
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    .line 256
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/k$a$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 4168
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->l:Ljava/lang/String;

    .line 257
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 5167
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/k$a;->k:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country Code: "

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/i18n/phonenumbers/k$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " National Number: "

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/i18n/phonenumbers/k$a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6097
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/k$a;->o:Z

    if-eqz v1, :cond_0

    .line 6098
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/k$a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, " Leading Zero(s): true"

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6113
    :cond_0
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/k$a;->p:Z

    if-eqz v1, :cond_1

    const-string v1, " Number of leading zeros: "

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/i18n/phonenumbers/k$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7078
    :cond_1
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/k$a;->c:Z

    if-eqz v1, :cond_2

    const-string v1, " Extension: "

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7148
    :cond_2
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/k$a;->i:Z

    if-eqz v1, :cond_3

    const-string v1, " Country Code Source: "

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->j:Lcom/google/i18n/phonenumbers/k$a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7167
    :cond_3
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/k$a;->k:Z

    if-eqz v1, :cond_4

    const-string v1, " Preferred Domestic Carrier Code: "

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/k$a;->l:Ljava/lang/String;

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
