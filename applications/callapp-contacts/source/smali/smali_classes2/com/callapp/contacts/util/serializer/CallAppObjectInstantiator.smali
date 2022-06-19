.class public Lcom/callapp/contacts/util/serializer/CallAppObjectInstantiator;
.super Lorg/objenesis/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/serializer/CallAppObjectInstantiator$ObjectInstantiatorCreator;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/callapp/contacts/util/serializer/CallAppObjectInstantiator$ObjectInstantiatorCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/objenesis/b/d;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/serializer/CallAppObjectInstantiator;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lorg/objenesis/a/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/objenesis/a/a<",
            "TT;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/util/serializer/CallAppObjectInstantiator;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v2, :cond_0

    .line 39
    iget-object p1, p0, Lcom/callapp/contacts/util/serializer/CallAppObjectInstantiator;->a:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/util/serializer/CallAppObjectInstantiator$ObjectInstantiatorCreator;

    .line 40
    invoke-interface {p1}, Lcom/callapp/contacts/util/serializer/CallAppObjectInstantiator$ObjectInstantiatorCreator;->a()Lorg/objenesis/a/a;

    move-result-object p1

    return-object p1

    .line 46
    :cond_2
    invoke-super {p0, p1}, Lorg/objenesis/b/d;->a(Ljava/lang/Class;)Lorg/objenesis/a/a;

    move-result-object p1

    return-object p1
.end method
