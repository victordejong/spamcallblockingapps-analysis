.class final Lcom/fasterxml/jackson/databind/jsontype/DefaultBaseTypeLimitingValidator$UnsafeBaseTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jsontype/DefaultBaseTypeLimitingValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeBaseTypes"
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/jsontype/DefaultBaseTypeLimitingValidator$UnsafeBaseTypes;


# instance fields
.field private final UNSAFE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/DefaultBaseTypeLimitingValidator$UnsafeBaseTypes;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/DefaultBaseTypeLimitingValidator$UnsafeBaseTypes;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsontype/DefaultBaseTypeLimitingValidator$UnsafeBaseTypes;->instance:Lcom/fasterxml/jackson/databind/jsontype/DefaultBaseTypeLimitingValidator$UnsafeBaseTypes;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/DefaultBaseTypeLimitingValidator$UnsafeBaseTypes;->UNSAFE:Ljava/util/Set;

    .line 101
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    const-class v1, Ljava/io/Closeable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    const-class v1, Ljava/lang/AutoCloseable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    const-class v1, Ljava/lang/Cloneable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.util.logging.Handler"

    .line 109
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "javax.naming.Referenceable"

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "javax.sql.DataSource"

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final isUnsafeBaseType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/DefaultBaseTypeLimitingValidator$UnsafeBaseTypes;->UNSAFE:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
