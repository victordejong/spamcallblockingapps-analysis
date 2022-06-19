.class public final Lscala/reflect/ManifestFactory$;
.super Ljava/lang/Object;
.source "Manifest.scala"


# static fields
.field public static final MODULE$:Lscala/reflect/ManifestFactory$;


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

.field private final AnyRef:Lscala/reflect/Manifest;
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

.field private final scala$reflect$ManifestFactory$$NothingTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field private final scala$reflect$ManifestFactory$$NullTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation
.end field

.field private final scala$reflect$ManifestFactory$$ObjectTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/reflect/ManifestFactory$;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/reflect/ManifestFactory$;->MODULE$:Lscala/reflect/ManifestFactory$;

    .line 91
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$6;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$6;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Byte:Lscala/reflect/AnyValManifest;

    .line 99
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$7;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$7;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Short:Lscala/reflect/AnyValManifest;

    .line 107
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$8;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$8;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Char:Lscala/reflect/AnyValManifest;

    .line 115
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$9;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$9;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Int:Lscala/reflect/AnyValManifest;

    .line 123
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$10;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$10;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Long:Lscala/reflect/AnyValManifest;

    .line 131
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$11;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$11;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Float:Lscala/reflect/AnyValManifest;

    .line 139
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$12;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$12;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Double:Lscala/reflect/AnyValManifest;

    .line 147
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$13;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$13;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Boolean:Lscala/reflect/AnyValManifest;

    .line 155
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$14;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$14;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Unit:Lscala/reflect/AnyValManifest;

    .line 163
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$ObjectTYPE:Ljava/lang/Class;

    .line 164
    const-class v0, Lscala/runtime/Nothing$;

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$NothingTYPE:Ljava/lang/Class;

    .line 165
    const-class v0, Lscala/runtime/Null$;

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$NullTYPE:Ljava/lang/Class;

    .line 167
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$1;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$1;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Any:Lscala/reflect/Manifest;

    .line 173
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$2;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$2;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Object:Lscala/reflect/Manifest;

    .line 179
    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Object()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->AnyRef:Lscala/reflect/Manifest;

    .line 181
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$3;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$3;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->AnyVal:Lscala/reflect/Manifest;

    .line 187
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$4;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$4;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Null:Lscala/reflect/Manifest;

    .line 194
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$5;

    invoke-direct {v0}, Lscala/reflect/ManifestFactory$$anon$5;-><init>()V

    iput-object v0, p0, Lscala/reflect/ManifestFactory$;->Nothing:Lscala/reflect/Manifest;

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

    .line 167
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Any:Lscala/reflect/Manifest;

    return-object v0
.end method

.method public AnyRef()Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/Manifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->AnyRef:Lscala/reflect/Manifest;

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

    .line 181
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->AnyVal:Lscala/reflect/Manifest;

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

    .line 147
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Boolean:Lscala/reflect/AnyValManifest;

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

    .line 91
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Byte:Lscala/reflect/AnyValManifest;

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

    .line 107
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Char:Lscala/reflect/AnyValManifest;

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

    .line 139
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Double:Lscala/reflect/AnyValManifest;

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

    .line 131
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Float:Lscala/reflect/AnyValManifest;

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

    .line 115
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Int:Lscala/reflect/AnyValManifest;

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

    .line 123
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Long:Lscala/reflect/AnyValManifest;

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

    .line 194
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Nothing:Lscala/reflect/Manifest;

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

    .line 187
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Null:Lscala/reflect/Manifest;

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

    .line 173
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Object:Lscala/reflect/Manifest;

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

    .line 99
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Short:Lscala/reflect/AnyValManifest;

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

    .line 155
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->Unit:Lscala/reflect/AnyValManifest;

    return-object v0
.end method

.method public abstractType(Lscala/reflect/Manifest;Ljava/lang/String;Ljava/lang/Class;Lscala/collection/Seq;)Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/Manifest<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lscala/collection/Seq<",
            "Lscala/reflect/Manifest<",
            "*>;>;)",
            "Lscala/reflect/Manifest<",
            "TT;>;"
        }
    .end annotation

    .line 255
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$15;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/reflect/ManifestFactory$$anon$15;-><init>(Lscala/reflect/Manifest;Ljava/lang/String;Ljava/lang/Class;Lscala/collection/Seq;)V

    return-object v0
.end method

.method public arrayType(Lscala/reflect/Manifest;)Lscala/reflect/Manifest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/Manifest<",
            "*>;)",
            "Lscala/reflect/Manifest<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-interface {p1}, Lscala/reflect/Manifest;->arrayManifest()Lscala/reflect/Manifest;

    move-result-object p1

    return-object p1
.end method

.method public classType(Ljava/lang/Class;)Lscala/reflect/Manifest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lscala/reflect/Manifest<",
            "TT;>;"
        }
    .end annotation

    .line 217
    new-instance v0, Lscala/reflect/ManifestFactory$ClassTypeManifest;

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    sget-object v2, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v0, v1, p1, v2}, Lscala/reflect/ManifestFactory$ClassTypeManifest;-><init>(Lscala/Option;Ljava/lang/Class;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public classType(Ljava/lang/Class;Lscala/reflect/Manifest;Lscala/collection/Seq;)Lscala/reflect/Manifest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lscala/reflect/Manifest<",
            "*>;",
            "Lscala/collection/Seq<",
            "Lscala/reflect/Manifest<",
            "*>;>;)",
            "Lscala/reflect/Manifest<",
            "TT;>;"
        }
    .end annotation

    .line 222
    new-instance v0, Lscala/reflect/ManifestFactory$ClassTypeManifest;

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-interface {p3}, Lscala/collection/Seq;->toList()Lscala/collection/immutable/List;

    move-result-object p3

    invoke-virtual {p3, p2}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object p2

    invoke-direct {v0, v1, p1, p2}, Lscala/reflect/ManifestFactory$ClassTypeManifest;-><init>(Lscala/Option;Ljava/lang/Class;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public classType(Lscala/reflect/Manifest;Ljava/lang/Class;Lscala/collection/Seq;)Lscala/reflect/Manifest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/Manifest<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lscala/collection/Seq<",
            "Lscala/reflect/Manifest<",
            "*>;>;)",
            "Lscala/reflect/Manifest<",
            "TT;>;"
        }
    .end annotation

    .line 228
    new-instance v0, Lscala/reflect/ManifestFactory$ClassTypeManifest;

    new-instance v1, Lscala/Some;

    invoke-direct {v1, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3}, Lscala/collection/Seq;->toList()Lscala/collection/immutable/List;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lscala/reflect/ManifestFactory$ClassTypeManifest;-><init>(Lscala/Option;Ljava/lang/Class;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public intersectionType(Lscala/collection/Seq;)Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq<",
            "Lscala/reflect/Manifest<",
            "*>;>;)",
            "Lscala/reflect/Manifest<",
            "TT;>;"
        }
    .end annotation

    .line 274
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$17;

    invoke-direct {v0, p1}, Lscala/reflect/ManifestFactory$$anon$17;-><init>(Lscala/collection/Seq;)V

    return-object v0
.end method

.method public scala$reflect$ManifestFactory$$NothingTYPE()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$NothingTYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public scala$reflect$ManifestFactory$$NullTYPE()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$NullTYPE:Ljava/lang/Class;

    return-object v0
.end method

.method public scala$reflect$ManifestFactory$$ObjectTYPE()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lscala/reflect/ManifestFactory$;->scala$reflect$ManifestFactory$$ObjectTYPE:Ljava/lang/Class;

    return-object v0
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

    .line 207
    new-instance v0, Lscala/reflect/ManifestFactory$SingletonTypeManifest;

    invoke-direct {v0, p1}, Lscala/reflect/ManifestFactory$SingletonTypeManifest;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public valueManifests()Lscala/collection/immutable/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "Lscala/reflect/AnyValManifest<",
            "*>;>;"
        }
    .end annotation

    .line 89
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v2, 0x9

    new-array v2, v2, [Lscala/reflect/AnyValManifest;

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Byte()Lscala/reflect/AnyValManifest;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Short()Lscala/reflect/AnyValManifest;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Char()Lscala/reflect/AnyValManifest;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Int()Lscala/reflect/AnyValManifest;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Long()Lscala/reflect/AnyValManifest;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Float()Lscala/reflect/AnyValManifest;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Double()Lscala/reflect/AnyValManifest;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Boolean()Lscala/reflect/AnyValManifest;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lscala/reflect/ManifestFactory$;->Unit()Lscala/reflect/AnyValManifest;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public wildcardType(Lscala/reflect/Manifest;Lscala/reflect/Manifest;)Lscala/reflect/Manifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/Manifest<",
            "*>;",
            "Lscala/reflect/Manifest<",
            "*>;)",
            "Lscala/reflect/Manifest<",
            "TT;>;"
        }
    .end annotation

    .line 264
    new-instance v0, Lscala/reflect/ManifestFactory$$anon$16;

    invoke-direct {v0, p1, p2}, Lscala/reflect/ManifestFactory$$anon$16;-><init>(Lscala/reflect/Manifest;Lscala/reflect/Manifest;)V

    return-object v0
.end method
