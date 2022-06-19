.class public final Lproguard/optimize/gson/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/gson/f;Lcom/google/gson/a/a;Ljava/lang/Object;)Lcom/google/gson/j;
    .locals 2

    .line 91
    invoke-virtual {p1}, Lcom/google/gson/a/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 92
    invoke-static {v0, p2}, Lproguard/optimize/gson/a;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 93
    invoke-static {p2}, Lcom/google/gson/a/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v1

    if-eq v0, p2, :cond_0

    .line 94
    invoke-static {v1}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/j;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object p0

    .line 97
    invoke-static {p0}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static a(Lcom/google/gson/f;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/j;
    .locals 1

    .line 59
    invoke-static {p1, p2}, Lproguard/optimize/gson/a;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 60
    invoke-static {p2}, Lcom/google/gson/a/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object v0

    if-eq p1, p2, :cond_0

    .line 61
    invoke-static {v0}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/j;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object p0

    .line 64
    invoke-static {p0}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p1, :cond_1

    .line 112
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static a(Lcom/google/gson/j;)Z
    .locals 1

    .line 127
    instance-of v0, p0, Lproguard/optimize/gson/b;

    if-nez v0, :cond_0

    instance-of p0, p0, Lcom/google/gson/internal/bind/f$a;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
