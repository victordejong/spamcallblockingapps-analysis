.class public abstract Lcom/criteo/publisher/f/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/f/s$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/criteo/publisher/f/s$a;
    .locals 1

    .line 31
    invoke-static {}, Lcom/criteo/publisher/f/s;->l()Lcom/criteo/publisher/f/s$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/criteo/publisher/f/s$a;->a(Ljava/lang/String;)Lcom/criteo/publisher/f/s$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/gson/f;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            ")",
            "Lcom/google/gson/j<",
            "Lcom/criteo/publisher/f/s;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/criteo/publisher/f/i$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/f/i$a;-><init>(Lcom/google/gson/f;)V

    return-object v0
.end method

.method public static l()Lcom/criteo/publisher/f/s$a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    new-instance v0, Lcom/criteo/publisher/f/a$b;

    invoke-direct {v0}, Lcom/criteo/publisher/f/a$b;-><init>()V

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/a$b;->c(Z)Lcom/criteo/publisher/f/s$a;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->a(Z)Lcom/criteo/publisher/f/s$a;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f/s$a;->b(Z)Lcom/criteo/publisher/f/s$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/lang/Long;
.end method

.method abstract b()Ljava/lang/Long;
.end method

.method abstract c()Z
.end method

.method abstract d()Z
.end method

.method abstract e()Ljava/lang/Long;
.end method

.method abstract f()Ljava/lang/String;
.end method

.method abstract g()Ljava/lang/String;
.end method

.method abstract h()Ljava/lang/Integer;
.end method

.method abstract i()Ljava/lang/Integer;
.end method

.method abstract j()Z
.end method

.method abstract k()Lcom/criteo/publisher/f/s$a;
.end method
