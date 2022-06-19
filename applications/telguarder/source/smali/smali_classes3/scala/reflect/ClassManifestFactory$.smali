.class public final Lscala/reflect/ClassManifestFactory$;
.super Ljava/lang/Object;
.source "ClassManifestDeprecatedApis.scala"


# static fields
.field public static final MODULE$:Lscala/reflect/ClassManifestFactory$;


# instance fields
.field private final Any:Lscala/reflect/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/Manifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final AnyVal:Lscala/reflect/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/Manifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Boolean:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Byte:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Char:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Double:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Float:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Int:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Long:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Nothing:Lscala/reflect/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/Manifest<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field private final Null:Lscala/reflect/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/Manifest<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation
.end field

.field private final Object:Lscala/reflect/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/Manifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Short:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Unit:Lscala/reflect/AnyValManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/AnyValManifest<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/reflect/ClassManifestFactory$;

    invoke-direct {v0}, Lscala/reflect/ClassManifestFactory$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/reflect/ClassManifestFactory$;->MODULE$:Lscala/reflect/ClassManifestFactory$;

    .line 152
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Byte()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Byte:Lscala/reflect/AnyValManifest;

    .line 153
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Short()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Short:Lscala/reflect/AnyValManifest;

    .line 154
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Char()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Char:Lscala/reflect/AnyValManifest;

    .line 155
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Int()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Int:Lscala/reflect/AnyValManifest;

    .line 156
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Long()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Long:Lscala/reflect/AnyValManifest;

    .line 157
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Float()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Float:Lscala/reflect/AnyValManifest;

    .line 158
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Double()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Double:Lscala/reflect/AnyValManifest;

    .line 159
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Boolean()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Boolean:Lscala/reflect/AnyValManifest;

    .line 160
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Unit()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Unit:Lscala/reflect/AnyValManifest;

    .line 161
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Any()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Any:Lscala/reflect/Manifest;

    .line 162
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Object()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Object:Lscala/reflect/Manifest;

    .line 163
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->AnyVal()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->AnyVal:Lscala/reflect/Manifest;

    .line 164
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Nothing()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Nothing:Lscala/reflect/Manifest;

    .line 165
    sget-object v0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Null()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Null:Lscala/reflect/Manifest;

    return-void
.end method


# virtual methods
.method public Any()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Any:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public AnyVal()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->AnyVal:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public Boolean()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Boolean:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Byte()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Byte:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Char()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Char:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Double()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Double:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Float()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Float:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Int()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Int:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Long()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Long:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Nothing()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Nothing:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public Null()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Null:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public Object()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Object:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public Short()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Short:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public Unit()Lscala/reflect/AnyValManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/AnyValManifest<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lscala/reflect/ClassManifestFactory$;->Unit:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public abstractType(Lscala/reflect/OptManifest;Ljava/lang/String;Ljava/lang/Class;Lscala/collection/Seq;)Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/OptManifest<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lscala/collection/Seq<",
            "Lscala/reflect/OptManifest<",
            "*>;>;)",
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation

    .line 212
    new-instance v0, Lscala/reflect/ClassManifestFactory$$anon$1;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/reflect/ClassManifestFactory$$anon$1;-><init>(Lscala/reflect/OptManifest;Ljava/lang/String;Ljava/lang/Class;Lscala/collection/Seq;)V

    return-object v0
.end method

.method public abstractType(Lscala/reflect/OptManifest;Ljava/lang/String;Lscala/reflect/ClassTag;Lscala/collection/Seq;)Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/OptManifest<",
            "*>;",
            "Ljava/lang/String;",
            "Lscala/reflect/ClassTag<",
            "*>;",
            "Lscala/collection/Seq<",
            "Lscala/reflect/OptManifest<",
            "*>;>;)",
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation

    .line 224
    new-instance v0, Lscala/reflect/ClassManifestFactory$$anon$2;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/reflect/ClassManifestFactory$$anon$2;-><init>(Lscala/reflect/OptManifest;Ljava/lang/String;Lscala/reflect/ClassTag;Lscala/collection/Seq;)V

    return-object v0
.end method

.method public arrayType(Lscala/reflect/OptManifest;)Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/OptManifest<",
            "*>;)",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 203
    sget-object v0, Lscala/reflect/NoManifest$;->MODULE$:Lscala/reflect/NoManifest$;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/reflect/ClassManifestFactory$;->Object()Lscala/reflect/Manifest;

    move-result-object p1

    goto :goto_0

    .line 205
    :cond_0
    instance-of v0, p1, Lscala/reflect/ClassTag;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/reflect/ClassTag;

    invoke-interface {p1}, Lscala/reflect/ClassTag;->arrayManifest()Lscala/reflect/ClassTag;

    move-result-object p1

    :goto_0
    return-object p1

    .line 203
    :cond_1
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public classType(Ljava/lang/Class;)Lscala/reflect/ClassTag;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation

    .line 190
    new-instance v0, Lscala/reflect/ClassTypeManifest;

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v0, v1, p1, v2}, Lscala/reflect/ClassTypeManifest;-><init>(Lscala/Option;Ljava/lang/Class;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public classType(Ljava/lang/Class;Lscala/reflect/OptManifest;Lscala/collection/Seq;)Lscala/reflect/ClassTag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Lscala/reflect/OptManifest<",
            "*>;",
            "Lscala/collection/Seq<",
            "Lscala/reflect/OptManifest<",
            "*>;>;)",
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Lscala/reflect/ClassTypeManifest;

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-interface {p3}, Lscala/collection/Seq;->toList()Lscala/collection/immutable/List;

    move-result-object p3

    invoke-virtual {p3, p2}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lscala/reflect/ClassTypeManifest;-><init>(Lscala/Option;Ljava/lang/Class;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public classType(Lscala/reflect/OptManifest;Ljava/lang/Class;Lscala/collection/Seq;)Lscala/reflect/ClassTag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/OptManifest<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lscala/collection/Seq<",
            "Lscala/reflect/OptManifest<",
            "*>;>;)",
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation

    .line 201
    new-instance v0, Lscala/reflect/ClassTypeManifest;

    new-instance v1, Lscala/Some;

    invoke-direct {v1, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3}, Lscala/collection/Seq;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lscala/reflect/ClassTypeManifest;-><init>(Lscala/Option;Ljava/lang/Class;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public fromClass(Ljava/lang/Class;)Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation

    .line 167
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lscala/reflect/ClassManifestFactory$;->Byte()Lscala/reflect/AnyValManifest;

    move-result-object p1

    goto/16 :goto_9

    .line 169
    :cond_2
    :goto_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lscala/reflect/ClassManifestFactory$;->Short()Lscala/reflect/AnyValManifest;

    move-result-object p1

    goto/16 :goto_9

    .line 170
    :cond_5
    :goto_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_6

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Lscala/reflect/ClassManifestFactory$;->Char()Lscala/reflect/AnyValManifest;

    move-result-object p1

    goto/16 :goto_9

    .line 171
    :cond_8
    :goto_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_9

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Lscala/reflect/ClassManifestFactory$;->Int()Lscala/reflect/AnyValManifest;

    move-result-object p1

    goto/16 :goto_9

    .line 172
    :cond_b
    :goto_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_c

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    invoke-virtual {p0}, Lscala/reflect/ClassManifestFactory$;->Long()Lscala/reflect/AnyValManifest;

    move-result-object p1

    goto :goto_9

    .line 173
    :cond_e
    :goto_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_f

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_f
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    invoke-virtual {p0}, Lscala/reflect/ClassManifestFactory$;->Float()Lscala/reflect/AnyValManifest;

    move-result-object p1

    goto :goto_9

    .line 174
    :cond_11
    :goto_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_12

    if-eqz p1, :cond_13

    goto :goto_6

    :cond_12
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    invoke-virtual {p0}, Lscala/reflect/ClassManifestFactory$;->Double()Lscala/reflect/AnyValManifest;

    move-result-object p1

    goto :goto_9

    .line 175
    :cond_14
    :goto_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_15

    if-eqz p1, :cond_16

    goto :goto_7

    :cond_15
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    invoke-virtual {p0}, Lscala/reflect/ClassManifestFactory$;->Boolean()Lscala/reflect/AnyValManifest;

    move-result-object p1

    goto :goto_9

    .line 176
    :cond_17
    :goto_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_18

    if-eqz p1, :cond_19

    goto :goto_8

    :cond_18
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    invoke-virtual {p0}, Lscala/reflect/ClassManifestFactory$;->Unit()Lscala/reflect/AnyValManifest;

    move-result-object p1

    goto :goto_9

    .line 177
    :cond_1a
    :goto_8
    invoke-virtual {p0, p1}, Lscala/reflect/ClassManifestFactory$;->classType(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object p1

    :goto_9
    return-object p1
.end method

.method public singleType(Ljava/lang/Object;)Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/reflect/Manifest<",
            "TT;>;"
        }
    .end annotation

    .line 180
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/reflect/ManifestFactory$;->singleType(Ljava/lang/Object;)Lscala/reflect/Manifest;

    move-result-object p1

    return-object p1
.end method
