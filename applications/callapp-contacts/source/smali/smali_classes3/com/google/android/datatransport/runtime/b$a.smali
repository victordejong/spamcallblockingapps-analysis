.class final Lcom/google/android/datatransport/runtime/b$a;
.super Lcom/google/android/datatransport/runtime/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/datatransport/runtime/l;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/datatransport/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/c<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/datatransport/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/e<",
            "*[B>;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/datatransport/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/datatransport/b;)Lcom/google/android/datatransport/runtime/k$a;
    .locals 1

    const-string v0, "Null encoding"

    .line 146
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/b$a;->e:Lcom/google/android/datatransport/b;

    return-object p0
.end method

.method final a(Lcom/google/android/datatransport/c;)Lcom/google/android/datatransport/runtime/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/c<",
            "*>;)",
            "Lcom/google/android/datatransport/runtime/k$a;"
        }
    .end annotation

    const-string v0, "Null event"

    .line 130
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/b$a;->c:Lcom/google/android/datatransport/c;

    return-object p0
.end method

.method final a(Lcom/google/android/datatransport/e;)Lcom/google/android/datatransport/runtime/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/e<",
            "*[B>;)",
            "Lcom/google/android/datatransport/runtime/k$a;"
        }
    .end annotation

    const-string v0, "Null transformer"

    .line 138
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/b$a;->d:Lcom/google/android/datatransport/e;

    return-object p0
.end method

.method public final a(Lcom/google/android/datatransport/runtime/l;)Lcom/google/android/datatransport/runtime/k$a;
    .locals 1

    const-string v0, "Null transportContext"

    .line 114
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/b$a;->a:Lcom/google/android/datatransport/runtime/l;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/k$a;
    .locals 1

    const-string v0, "Null transportName"

    .line 122
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/google/android/datatransport/runtime/k;
    .locals 9

    .line 154
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/b$a;->a:Lcom/google/android/datatransport/runtime/l;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/b$a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/b$a;->c:Lcom/google/android/datatransport/c;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/b$a;->d:Lcom/google/android/datatransport/e;

    if-nez v0, :cond_3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transformer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/b$a;->e:Lcom/google/android/datatransport/b;

    if-nez v0, :cond_4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    new-instance v0, Lcom/google/android/datatransport/runtime/b;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/b$a;->a:Lcom/google/android/datatransport/runtime/l;

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/b$a;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/datatransport/runtime/b$a;->c:Lcom/google/android/datatransport/c;

    iget-object v6, p0, Lcom/google/android/datatransport/runtime/b$a;->d:Lcom/google/android/datatransport/e;

    iget-object v7, p0, Lcom/google/android/datatransport/runtime/b$a;->e:Lcom/google/android/datatransport/b;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/datatransport/runtime/b;-><init>(Lcom/google/android/datatransport/runtime/l;Ljava/lang/String;Lcom/google/android/datatransport/c;Lcom/google/android/datatransport/e;Lcom/google/android/datatransport/b;Lcom/google/android/datatransport/runtime/b$1;)V

    return-object v0

    .line 170
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
