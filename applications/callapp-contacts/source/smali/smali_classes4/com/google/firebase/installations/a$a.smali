.class final Lcom/google/firebase/installations/a$a;
.super Lcom/google/firebase/installations/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Long;

.field private c:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/google/firebase/installations/l$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/installations/l;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/google/firebase/installations/l$a;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/google/firebase/installations/l;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a$a;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/installations/l;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a$a;->b:Ljava/lang/Long;

    .line 92
    invoke-virtual {p1}, Lcom/google/firebase/installations/l;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/installations/a$a;->c:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/installations/l;Lcom/google/firebase/installations/a$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/a$a;-><init>(Lcom/google/firebase/installations/l;)V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/firebase/installations/l$a;
    .locals 0

    .line 104
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/installations/a$a;->b:Ljava/lang/Long;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/firebase/installations/l$a;
    .locals 1

    const-string v0, "Null token"

    .line 97
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    iput-object p1, p0, Lcom/google/firebase/installations/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/google/firebase/installations/l;
    .locals 9

    .line 115
    iget-object v0, p0, Lcom/google/firebase/installations/a$a;->a:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/installations/a$a;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tokenExpirationTimestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/installations/a$a;->c:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tokenCreationTimestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    new-instance v0, Lcom/google/firebase/installations/a;

    iget-object v3, p0, Lcom/google/firebase/installations/a$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/installations/a$a;->b:Ljava/lang/Long;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/firebase/installations/a$a;->c:Ljava/lang/Long;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/installations/a;-><init>(Ljava/lang/String;JJLcom/google/firebase/installations/a$1;)V

    return-object v0

    .line 125
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(J)Lcom/google/firebase/installations/l$a;
    .locals 0

    .line 109
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/installations/a$a;->c:Ljava/lang/Long;

    return-object p0
.end method
