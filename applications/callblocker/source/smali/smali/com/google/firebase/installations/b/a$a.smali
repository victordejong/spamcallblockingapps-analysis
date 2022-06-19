.class final Lcom/google/firebase/installations/b/a$a;
.super Lcom/google/firebase/installations/b/d$a;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/firebase/installations/b/e;

.field private e:Lcom/google/firebase/installations/b/d$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/firebase/installations/b/d$a;-><init>()V

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/installations/b/d$b;)Lcom/google/firebase/installations/b/d$a;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/firebase/installations/b/a$a;->e:Lcom/google/firebase/installations/b/d$b;

    .line 150
    return-object p0
.end method

.method public a(Lcom/google/firebase/installations/b/e;)Lcom/google/firebase/installations/b/d$a;
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/firebase/installations/b/a$a;->d:Lcom/google/firebase/installations/b/e;

    .line 145
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/firebase/installations/b/d$a;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/firebase/installations/b/a$a;->a:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public a()Lcom/google/firebase/installations/b/d;
    .locals 7

    .prologue
    .line 154
    new-instance v0, Lcom/google/firebase/installations/b/a;

    iget-object v1, p0, Lcom/google/firebase/installations/b/a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/installations/b/a$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/installations/b/a$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/installations/b/a$a;->d:Lcom/google/firebase/installations/b/e;

    iget-object v5, p0, Lcom/google/firebase/installations/b/a$a;->e:Lcom/google/firebase/installations/b/d$b;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/installations/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/installations/b/e;Lcom/google/firebase/installations/b/d$b;Lcom/google/firebase/installations/b/a$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/installations/b/d$a;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/firebase/installations/b/a$a;->b:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/firebase/installations/b/d$a;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/firebase/installations/b/a$a;->c:Ljava/lang/String;

    .line 140
    return-object p0
.end method
