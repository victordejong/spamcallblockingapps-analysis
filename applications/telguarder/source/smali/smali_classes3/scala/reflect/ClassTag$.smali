.class public final Lscala/reflect/ClassTag$;
.super Ljava/lang/Object;
.source "ClassTag.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/reflect/ClassTag$;


# instance fields
.field private final Any:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final AnyRef:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final AnyVal:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Boolean:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Byte:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Char:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Double:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Float:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Int:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Long:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Nothing:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field private final NothingTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation
.end field

.field private final Null:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation
.end field

.field private final NullTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation
.end field

.field private final Object:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ObjectTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Short:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final Unit:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/reflect/ClassTag$;

    invoke-direct {v0}, Lscala/reflect/ClassTag$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    .line 118
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lscala/reflect/ClassTag$;->ObjectTYPE:Ljava/lang/Class;

    .line 119
    const-class v0, Lscala/runtime/Nothing$;

    iput-object v0, p0, Lscala/reflect/ClassTag$;->NothingTYPE:Ljava/lang/Class;

    .line 120
    const-class v0, Lscala/runtime/Null$;

    iput-object v0, p0, Lscala/reflect/ClassTag$;->NullTYPE:Ljava/lang/Class;

    .line 122
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Byte()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Byte:Lscala/reflect/ClassTag;

    .line 123
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Short()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Short:Lscala/reflect/ClassTag;

    .line 124
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Char()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Char:Lscala/reflect/ClassTag;

    .line 125
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Int()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Int:Lscala/reflect/ClassTag;

    .line 126
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Long()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Long:Lscala/reflect/ClassTag;

    .line 127
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Float()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Float:Lscala/reflect/ClassTag;

    .line 128
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Double()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Double:Lscala/reflect/ClassTag;

    .line 129
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Boolean()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Boolean:Lscala/reflect/ClassTag;

    .line 130
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Unit()Lscala/reflect/AnyValManifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Unit:Lscala/reflect/ClassTag;

    .line 131
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Any()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Any:Lscala/reflect/ClassTag;

    .line 132
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Object()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Object:Lscala/reflect/ClassTag;

    .line 133
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->AnyVal()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->AnyVal:Lscala/reflect/ClassTag;

    .line 134
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->AnyRef()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->AnyRef:Lscala/reflect/ClassTag;

    .line 135
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Nothing()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Nothing:Lscala/reflect/ClassTag;

    .line 136
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0}, Lscala/reflect/package$;->Manifest()Lscala/reflect/ManifestFactory$;

    move-result-object v0

    invoke-virtual {v0}, Lscala/reflect/ManifestFactory$;->Null()Lscala/reflect/Manifest;

    move-result-object v0

    iput-object v0, p0, Lscala/reflect/ClassTag$;->Null:Lscala/reflect/ClassTag;

    return-void
.end method

.method private NothingTYPE()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lscala/reflect/ClassTag$;->NothingTYPE:Ljava/lang/Class;

    return-object v0
.end method

.method private NullTYPE()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lscala/reflect/ClassTag$;->NullTYPE:Ljava/lang/Class;

    return-object v0
.end method

.method private ObjectTYPE()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lscala/reflect/ClassTag$;->ObjectTYPE:Ljava/lang/Class;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 117
    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    return-object v0
.end method


# virtual methods
.method public Any()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Any:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public AnyRef()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lscala/reflect/ClassTag$;->AnyRef:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public AnyVal()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lscala/reflect/ClassTag$;->AnyVal:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Boolean()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Boolean:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Byte()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Byte:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Char()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Char:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Double()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Double:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Float()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Float:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Int()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Int:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Long()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Long:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Nothing()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Nothing:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Null()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Lscala/runtime/Null$;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Null:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Object()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Object:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Short()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Short:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public Unit()Lscala/reflect/ClassTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lscala/reflect/ClassTag$;->Unit:Lscala/reflect/ClassTag;

    return-object v0
.end method

.method public apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;
    .locals 1
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

    .line 139
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Byte()Lscala/reflect/ClassTag;

    move-result-object p1

    goto/16 :goto_c

    .line 141
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
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Short()Lscala/reflect/ClassTag;

    move-result-object p1

    goto/16 :goto_c

    .line 142
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
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Char()Lscala/reflect/ClassTag;

    move-result-object p1

    goto/16 :goto_c

    .line 143
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
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object p1

    goto/16 :goto_c

    .line 144
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
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Long()Lscala/reflect/ClassTag;

    move-result-object p1

    goto/16 :goto_c

    .line 145
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
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Float()Lscala/reflect/ClassTag;

    move-result-object p1

    goto/16 :goto_c

    .line 146
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
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Double()Lscala/reflect/ClassTag;

    move-result-object p1

    goto/16 :goto_c

    .line 147
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
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Boolean()Lscala/reflect/ClassTag;

    move-result-object p1

    goto :goto_c

    .line 148
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
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Unit()Lscala/reflect/ClassTag;

    move-result-object p1

    goto :goto_c

    .line 149
    :cond_1a
    :goto_8
    invoke-direct {p0}, Lscala/reflect/ClassTag$;->ObjectTYPE()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1b

    if-eqz p1, :cond_1c

    goto :goto_9

    :cond_1b
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1c
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Object()Lscala/reflect/ClassTag;

    move-result-object p1

    goto :goto_c

    .line 150
    :cond_1d
    :goto_9
    invoke-direct {p0}, Lscala/reflect/ClassTag$;->NothingTYPE()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1e

    if-eqz p1, :cond_1f

    goto :goto_a

    :cond_1e
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1f
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Nothing()Lscala/reflect/ClassTag;

    move-result-object p1

    goto :goto_c

    .line 151
    :cond_20
    :goto_a
    invoke-direct {p0}, Lscala/reflect/ClassTag$;->NullTYPE()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_21

    if-eqz p1, :cond_22

    goto :goto_b

    :cond_21
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    invoke-virtual {p0}, Lscala/reflect/ClassTag$;->Null()Lscala/reflect/ClassTag;

    move-result-object p1

    goto :goto_c

    .line 152
    :cond_23
    :goto_b
    new-instance v0, Lscala/reflect/ClassTag$$anon$1;

    invoke-direct {v0, p1}, Lscala/reflect/ClassTag$$anon$1;-><init>(Ljava/lang/Class;)V

    move-object p1, v0

    :goto_c
    return-object p1
.end method

.method public unapply(Lscala/reflect/ClassTag;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/Option<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 155
    new-instance v0, Lscala/Some;

    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
