.class Lokhttp3/internal/e/d$a;
.super Ljava/lang/Object;
.source "JdkWithJettyBootPlatform.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lokhttp3/internal/e/d$a;->c:Ljava/util/List;

    .line 118
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 123
    if-nez p3, :cond_0

    .line 124
    sget-object p3, Lokhttp3/internal/c;->b:[Ljava/lang/String;

    .line 126
    :cond_0
    const-string/jumbo v4, "supports"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v3, :cond_1

    .line 127
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 128
    :cond_1
    const-string/jumbo v4, "unsupported"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v4, v3, :cond_2

    .line 129
    iput-boolean v5, p0, Lokhttp3/internal/e/d$a;->a:Z

    move-object v0, v1

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    const-string/jumbo v4, "protocols"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    array-length v4, p3

    if-nez v4, :cond_3

    .line 132
    iget-object v0, p0, Lokhttp3/internal/e/d$a;->c:Ljava/util/List;

    goto :goto_0

    .line 133
    :cond_3
    const-string/jumbo v4, "selectProtocol"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "select"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_4
    const-class v4, Ljava/lang/String;

    if-ne v4, v3, :cond_7

    array-length v3, p3

    if-ne v3, v5, :cond_7

    aget-object v3, p3, v2

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_7

    .line 135
    aget-object v0, p3, v2

    check-cast v0, Ljava/util/List;

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_6

    .line 138
    iget-object v4, p0, Lokhttp3/internal/e/d$a;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/e/d$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/e/d$a;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/e/d$a;->b:Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_7
    const-string/jumbo v3, "protocolSelected"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "selected"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    array-length v0, p3

    if-ne v0, v5, :cond_9

    .line 145
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/e/d$a;->b:Ljava/lang/String;

    move-object v0, v1

    .line 146
    goto/16 :goto_0

    .line 148
    :cond_9
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method
