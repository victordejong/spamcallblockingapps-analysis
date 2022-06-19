.class public Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->d:Z

    .line 388
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->e:Z

    .line 389
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->f:Z

    .line 391
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->h:Z

    .line 393
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->j:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;
    .locals 2

    .line 398
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 400
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;->a()Lcom/esotericsoftware/kryo/serializers/FieldSerializer$c;

    move-result-object v0

    return-object v0
.end method
