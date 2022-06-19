.class final Lcom/google/firebase/installations/b/b$a;
.super Lcom/google/firebase/installations/b/e$a;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Long;

.field private c:Lcom/google/firebase/installations/b/e$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/firebase/installations/b/e$a;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/firebase/installations/b/e$a;
    .locals 1

    .prologue
    .line 103
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/b/b$a;->b:Ljava/lang/Long;

    .line 104
    return-object p0
.end method

.method public a(Lcom/google/firebase/installations/b/e$b;)Lcom/google/firebase/installations/b/e$a;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/firebase/installations/b/b$a;->c:Lcom/google/firebase/installations/b/e$b;

    .line 109
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/firebase/installations/b/e$a;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/firebase/installations/b/b$a;->a:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public a()Lcom/google/firebase/installations/b/e;
    .locals 6

    .prologue
    .line 113
    const-string/jumbo v0, ""

    .line 114
    iget-object v1, p0, Lcom/google/firebase/installations/b/b$a;->b:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tokenExpirationTimestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
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

    .line 120
    :cond_1
    new-instance v0, Lcom/google/firebase/installations/b/b;

    iget-object v1, p0, Lcom/google/firebase/installations/b/b$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/installations/b/b$a;->b:Ljava/lang/Long;

    .line 122
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/firebase/installations/b/b$a;->c:Lcom/google/firebase/installations/b/e$b;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/installations/b/b;-><init>(Ljava/lang/String;JLcom/google/firebase/installations/b/e$b;Lcom/google/firebase/installations/b/b$1;)V

    .line 120
    return-object v0
.end method
