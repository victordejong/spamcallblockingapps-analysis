.class final Lcom/google/firebase/installations/a/a$a;
.super Lcom/google/firebase/installations/a/d$a;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/firebase/installations/a/c$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/firebase/installations/a/d$a;-><init>()V

    .line 148
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/installations/a/d;)V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/firebase/installations/a/d$a;-><init>()V

    .line 150
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a/a$a;->a:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->b()Lcom/google/firebase/installations/a/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a/a$a;->b:Lcom/google/firebase/installations/a/c$a;

    .line 152
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a/a$a;->c:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a/a$a;->d:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a/a$a;->e:Ljava/lang/Long;

    .line 155
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a/a$a;->f:Ljava/lang/Long;

    .line 156
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a/a$a;->g:Ljava/lang/String;

    .line 157
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/installations/a/d;Lcom/google/firebase/installations/a/a$1;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/a/a$a;-><init>(Lcom/google/firebase/installations/a/d;)V

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/firebase/installations/a/d$a;
    .locals 1

    .prologue
    .line 183
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a/a$a;->e:Ljava/lang/Long;

    .line 184
    return-object p0
.end method

.method public a(Lcom/google/firebase/installations/a/c$a;)Lcom/google/firebase/installations/a/d$a;
    .locals 2

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null registrationStatus"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/installations/a/a$a;->b:Lcom/google/firebase/installations/a/c$a;

    .line 169
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/firebase/installations/a/a$a;->a:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public a()Lcom/google/firebase/installations/a/d;
    .locals 12

    .prologue
    .line 198
    const-string/jumbo v0, ""

    .line 199
    iget-object v1, p0, Lcom/google/firebase/installations/a/a$a;->b:Lcom/google/firebase/installations/a/c$a;

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " registrationStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/installations/a/a$a;->e:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " expiresInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/installations/a/a$a;->f:Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tokenCreationEpochInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 209
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_3
    new-instance v1, Lcom/google/firebase/installations/a/a;

    iget-object v2, p0, Lcom/google/firebase/installations/a/a$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/installations/a/a$a;->b:Lcom/google/firebase/installations/a/c$a;

    iget-object v4, p0, Lcom/google/firebase/installations/a/a$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/installations/a/a$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/installations/a/a$a;->e:Ljava/lang/Long;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/firebase/installations/a/a$a;->f:Ljava/lang/Long;

    .line 217
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/firebase/installations/a/a$a;->g:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/google/firebase/installations/a/a;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/a/c$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/google/firebase/installations/a/a$1;)V

    .line 211
    return-object v1
.end method

.method public b(J)Lcom/google/firebase/installations/a/d$a;
    .locals 1

    .prologue
    .line 188
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a/a$a;->f:Ljava/lang/Long;

    .line 189
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/firebase/installations/a/a$a;->c:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/firebase/installations/a/a$a;->d:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/firebase/installations/a/a$a;->g:Ljava/lang/String;

    .line 194
    return-object p0
.end method
