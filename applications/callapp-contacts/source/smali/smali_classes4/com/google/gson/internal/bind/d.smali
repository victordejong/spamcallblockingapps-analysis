.class public final Lcom/google/gson/internal/bind/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/d$a;
    }
.end annotation


# instance fields
.field final a:Z

.field private final b:Lcom/google/gson/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/c;Z)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/gson/internal/bind/d;->b:Lcom/google/gson/internal/c;

    .line 112
    iput-boolean p2, p0, Lcom/google/gson/internal/bind/d;->a:Z

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/f;Lcom/google/gson/a/a;)Lcom/google/gson/j;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/a/a<",
            "TT;>;)",
            "Lcom/google/gson/j<",
            "TT;>;"
        }
    .end annotation

    .line 116
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 119
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    invoke-static {v0}, Lcom/google/gson/internal/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/google/gson/internal/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 125
    aget-object v2, v0, v1

    .line 1140
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 1142
    :cond_1
    invoke-static {v2}, Lcom/google/gson/a/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v2

    goto :goto_1

    .line 1141
    :cond_2
    :goto_0
    sget-object v2, Lcom/google/gson/internal/bind/j;->f:Lcom/google/gson/j;

    :goto_1
    move-object v7, v2

    const/4 v2, 0x1

    .line 126
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/gson/a/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v9

    .line 127
    iget-object v3, p0, Lcom/google/gson/internal/bind/d;->b:Lcom/google/gson/internal/c;

    invoke-virtual {v3, p2}, Lcom/google/gson/internal/c;->a(Lcom/google/gson/a/a;)Lcom/google/gson/internal/h;

    move-result-object v10

    .line 131
    new-instance p2, Lcom/google/gson/internal/bind/d$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/gson/internal/bind/d$a;-><init>(Lcom/google/gson/internal/bind/d;Lcom/google/gson/f;Ljava/lang/reflect/Type;Lcom/google/gson/j;Ljava/lang/reflect/Type;Lcom/google/gson/j;Lcom/google/gson/internal/h;)V

    return-object p2
.end method
