.class public abstract Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/reflect/Field;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Class;

.field d:Lcom/esotericsoftware/kryo/h;

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Lcom/esotericsoftware/c/c;

.field j:I

.field k:J


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->f:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->h:Z

    const/4 v0, -0x1

    .line 232
    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->j:I

    .line 241
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->a:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Object;)V
.end method

.method public abstract a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$b;->b:Ljava/lang/String;

    return-object v0
.end method
