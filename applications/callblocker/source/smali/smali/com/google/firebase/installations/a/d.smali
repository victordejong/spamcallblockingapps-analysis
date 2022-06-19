.class public abstract Lcom/google/firebase/installations/a/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/a/d$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/firebase/installations/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/google/firebase/installations/a/d;->p()Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/installations/a/d;->a:Lcom/google/firebase/installations/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static p()Lcom/google/firebase/installations/a/d$a;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 133
    new-instance v0, Lcom/google/firebase/installations/a/a$a;

    invoke-direct {v0}, Lcom/google/firebase/installations/a/a$a;-><init>()V

    .line 134
    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/installations/a/a$a;->b(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->a:Lcom/google/firebase/installations/a/c$a;

    .line 135
    invoke-virtual {v0, v1}, Lcom/google/firebase/installations/a/d$a;->a(Lcom/google/firebase/installations/a/c$a;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/installations/a/d$a;->a(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 133
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/firebase/installations/a/d;
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->h()Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/a/d$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->c:Lcom/google/firebase/installations/a/c$a;

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/firebase/installations/a/d$a;->a(Lcom/google/firebase/installations/a/c$a;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 76
    return-object v0
.end method

.method public a(Ljava/lang/String;JJ)Lcom/google/firebase/installations/a/d;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->h()Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/a/d$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p2, p3}, Lcom/google/firebase/installations/a/d$a;->a(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p4, p5}, Lcom/google/firebase/installations/a/d$a;->b(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 115
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lcom/google/firebase/installations/a/d;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->h()Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/a/d$a;->a(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->d:Lcom/google/firebase/installations/a/c$a;

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/firebase/installations/a/d$a;->a(Lcom/google/firebase/installations/a/c$a;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p5}, Lcom/google/firebase/installations/a/d$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p2}, Lcom/google/firebase/installations/a/d$a;->c(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p6, p7}, Lcom/google/firebase/installations/a/d$a;->a(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p3, p4}, Lcom/google/firebase/installations/a/d$a;->b(J)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Lcom/google/firebase/installations/a/c$a;
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/installations/a/d;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->h()Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lcom/google/firebase/installations/a/d$a;->d(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->e:Lcom/google/firebase/installations/a/c$a;

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/firebase/installations/a/d$a;->a(Lcom/google/firebase/installations/a/c$a;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()J
.end method

.method public abstract f()J
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Lcom/google/firebase/installations/a/d$a;
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->b()Lcom/google/firebase/installations/a/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->d:Lcom/google/firebase/installations/a/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->b()Lcom/google/firebase/installations/a/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->e:Lcom/google/firebase/installations/a/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->b()Lcom/google/firebase/installations/a/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->c:Lcom/google/firebase/installations/a/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->b()Lcom/google/firebase/installations/a/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->b:Lcom/google/firebase/installations/a/c$a;

    if-eq v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->b()Lcom/google/firebase/installations/a/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->a:Lcom/google/firebase/installations/a/c$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->b()Lcom/google/firebase/installations/a/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->a:Lcom/google/firebase/installations/a/c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Lcom/google/firebase/installations/a/d;
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->h()Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/installations/a/c$a;->b:Lcom/google/firebase/installations/a/c$a;

    invoke-virtual {v0, v1}, Lcom/google/firebase/installations/a/d$a;->a(Lcom/google/firebase/installations/a/c$a;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/firebase/installations/a/d;
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/firebase/installations/a/d;->h()Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/firebase/installations/a/d$a;->b(Ljava/lang/String;)Lcom/google/firebase/installations/a/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/installations/a/d$a;->a()Lcom/google/firebase/installations/a/d;

    move-result-object v0

    return-object v0
.end method
