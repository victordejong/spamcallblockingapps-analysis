.class public final Lcom/esotericsoftware/kryo/i$b;
.super Lcom/esotericsoftware/kryo/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/i$a<",
        "Lcom/esotericsoftware/kryo/serializers/FieldSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/i$a;-><init>()V

    .line 112
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/i$b;->a:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/i$a;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/esotericsoftware/kryo/i$b;->a:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/h;
    .locals 2

    .line 1124
    new-instance v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/i$b;->a:Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->a()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/c;Ljava/lang/Class;Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;)V

    return-object v0
.end method
